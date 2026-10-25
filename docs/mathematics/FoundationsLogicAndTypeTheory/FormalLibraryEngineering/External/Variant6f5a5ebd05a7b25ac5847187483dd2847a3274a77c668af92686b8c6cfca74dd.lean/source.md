# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.External.Variant6f5a5ebd05a7b25ac5847187483dd2847a3274a77c668af92686b8c6cfca74dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dfac3a5846b86818aeec8b2eae89a53a05626000` · SHA-256 `fd096b2a624bc29c2de64f9899a043415c1e5ee9c96b3371c0b77b356918ffbf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SolverResult.Variante4678ddb322c358257ae94e8889590cd9e757be751946b5010812ef966d95045","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4678ddb322c358257ae94e8889590cd9e757be751946b5010812ef966d95045","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SolverResult.Variante4678ddb322c358257ae94e8889590cd9e757be751946b5010812ef966d95045","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e4678ddb322c358257ae94e8889590cd9e757be751946b5010812ef966d95045","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/BVDecide/External.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
import Std.Tactic.BVDecide.LRAT.Parser
public import Lean.CoreM
public import Std.Tactic.BVDecide.Syntax

/-!
This module implements the logic to call CaDiCal (or CLI interface compatible SAT solvers) and
extract an LRAT UNSAT proof or a model from its output.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SolverResult.Variante4678ddb322c358257ae94e8889590cd9e757be751946b5010812ef966d95045

namespace Lean.Meta.Tactic.BVDecide

namespace External

open Std.Tactic.BVDecide

/--
The result of calling a SAT solver.
-/
public inductive SolverResult where
  /--
  The solver returned SAT with some literal assignment.
  -/
  | sat (assignment : Array (Bool × Nat))
  /--
  The solver returned UNSAT.
  -/
  | unsat

namespace ModelParser

open Std.Internal.Parsec
open Std.Internal.Parsec.ByteArray
open LRAT.Parser.Text (skipNewline)

def parsePartialAssignment : Parser (Bool × (Array (Bool × Nat))) := do
  skipByteChar 'v'
  let idents ← many (attempt wsLit)
  let idents := idents.map (fun i => if i > 0 then (true, i.natAbs) else (false, i.natAbs))
  tryCatch
    (skipString " 0")
    (csuccess := fun _ => pure (true, idents))
    (cerror := fun _ => do
      skipNewline
      return (false, idents)
    )
where
  @[inline]
  wsLit : Parser Int := do
    skipByteChar ' '
    LRAT.Parser.Text.parseLit

partial def parseLines : Parser (Array (Bool × Nat)) :=
  go #[]
where
  go (acc : Array (Bool × Nat)) : Parser (Array (Bool × Nat)) := do
    let (terminal?, additionalAssignment) ← parsePartialAssignment
    let acc := acc ++ additionalAssignment
    if terminal? then
      return acc
    else
      go acc

@[inline]
def parseHeader : Parser Unit := do
  skipString "s SATISFIABLE"
  skipNewline

/--
Parse the witness format of a SAT solver. The rough grammar for this is:
line = "v" (" " lit)*\n
terminal_line = "v" (" " lit)* (" " 0)\n
witness = "s SATISFIABLE\n" line+ terminal_line
-/
def parse : Parser (Array (Bool × Nat)) := do
  parseHeader
  parseLines

end ModelParser

open Lean (CoreM)

public inductive TimedOut (α : Type u) where
  | success (x : α)
  | timeout

/--
Run a process with `args` until it terminates or the cancellation token in `CoreM` tells us to abort
or `timeout` seconds have passed.
-/
public partial def runInterruptible (timeout : Nat) (args : IO.Process.SpawnArgs) :
    CoreM (TimedOut IO.Process.Output) := do
  let child ← IO.Process.spawn { args with stdout := .piped, stderr := .piped, stdin := .null }
  let stdout ← IO.asTask child.stdout.readToEnd Task.Priority.dedicated
  let stderr ← IO.asTask child.stderr.readToEnd Task.Priority.dedicated
  go (timeout * 1000) child stdout stderr
where
  go {cfg} (budgetMs : Nat) (child : IO.Process.Child cfg) (stdout stderr : Task (Except IO.Error String)) :
      CoreM (TimedOut IO.Process.Output) := do
    let cleanup := killAndWait child
    withTimeoutCheck budgetMs cleanup do
    withInterruptCheck cleanup do
      match ← child.tryWait with
      | some exitCode =>
        let stdout ← IO.ofExcept stdout.get
        let stderr ← IO.ofExcept stderr.get
        return .success { exitCode := exitCode, stdout := stdout, stderr := stderr }
      | none =>
        let sleepMs : Nat := 50
        IO.sleep sleepMs.toUInt32
        go (budgetMs - sleepMs) child stdout stderr

  killAndWait {cfg} (child : IO.Process.Child cfg) : IO Unit := do
    child.kill
    discard child.wait

  withTimeoutCheck {α : Type} (budgetMs : Nat) (cleanup : CoreM Unit) (x : CoreM (TimedOut α)) :
      CoreM (TimedOut α) := do
    if budgetMs == 0 then
      cleanup
      return .timeout
    else
      x

  withInterruptCheck {α : Type} (cleanup : CoreM Unit) (x : CoreM α) :
      CoreM α := do
    if let some tk := (← read).cancelTk? then
      if ← tk.isSet then
        cleanup
        throwInterruptException
    x

/--
Call the SAT solver in `solverPath` with `problemPath` as CNF input and ask it to output an LRAT
UNSAT proof (binary or non-binary depending on `binaryProofs`) into `proofOutput`. To avoid runaway
solvers the solver is run with `timeout` in seconds as a maximum time limit to solve the problem.

Note: This function currently assume that the solver has the same CLI as CaDiCal.
-/
public def satQuery (solverPath : System.FilePath) (problemPath : System.FilePath) (proofOutput : System.FilePath)
    (timeout : Nat) (binaryProofs : Bool) (mode : Elab.Tactic.BVDecide.SolverMode) :
    CoreM SolverResult := do
  let cmd := solverPath.toString
  let mut args := #[
    problemPath.toString,
    proofOutput.toString,
    "--lrat",
    s!"--binary={binaryProofs}",
    "--quiet",
    /-
    Bitwuzla sets this option and it does improve performance practically:
    https://github.com/bitwuzla/bitwuzla/blob/0e81e616af4d4421729884f01928b194c3536c76/src/sat/cadical.cpp#L34
    -/
    "--shrink=0"
  ]
  args := args ++ solverModeFlags mode

  -- We implement timeouting ourselves because cadicals -t option is not available on Windows.
  let out? ← runInterruptible timeout { cmd, args, stdin := .piped, stdout := .piped, stderr := .null }
  match out? with
  | .timeout =>
    let mut err := "The SAT solver timed out while solving the problem.\n"
    err := err ++ "Consider increasing the timeout with the `timeout` config option.\n"
    err := err ++ "If solving your problem relies inherently on using associativity or commutativity, consider enabling the `acNf` config option."
    throwError err
  | .success { exitCode := exitCode, stdout := stdout, stderr := stderr} =>
    if exitCode == 255 then
      throwError s!"Failed to execute external prover:\n{stderr}"
    else
      if stdout.startsWith "s UNSATISFIABLE" then
        return .unsat
      else if stdout.startsWith "s SATISFIABLE" then
        match ModelParser.parse.run stdout.toUTF8 with
        | .ok assignment =>
          return .sat assignment
        | .error err =>
          throwError s!"Error {err} while parsing:\n{stdout}"
      else
        throwError s!"The external prover produced unexpected output, stdout:\n{stdout}stderr:\n{stderr}"
where
  solverModeFlags (mode : Elab.Tactic.BVDecide.SolverMode) : Array String :=
    match mode with
    | .proof => #["--unsat"]
    | .counterexample => #["--sat"]
    | .default => #["--default"]

end External

end Lean.Meta.Tactic.BVDecide
```
