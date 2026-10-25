# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cert.Varianta5e8e372717654a0ec8844b0f07d43a282bdd77977ea266beb19b1f30e26ddd9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1be17726a69fac34b37f4ffc3b3f341de3e8e38d` · SHA-256 `04d36e4e54297375b640e6403116b08bea0de44305ae049fe6fbe79b3fd663c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LratCert.Varianta0eea966a1ec6f6fe932d8a28902b22dca82175ffd7e579832b0f3370cbb8641","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a0eea966a1ec6f6fe932d8a28902b22dca82175ffd7e579832b0f3370cbb8641","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LratCert.Varianta0eea966a1ec6f6fe932d8a28902b22dca82175ffd7e579832b0f3370cbb8641","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a0eea966a1ec6f6fe932d8a28902b22dca82175ffd7e579832b0f3370cbb8641","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/BVDecide/LRAT/Cert.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.LRAT.Checker
public import Lean.CoreM
public import Std.Tactic.BVDecide.Syntax
import Lean.Meta.Tactic.BVDecide.LRAT.Trim
import Std.Tactic.BVDecide.LRAT.Parser
import Lean.Meta.Tactic.BVDecide.External

/-!
This module contains the logic for loading LRAT proofs into Lean.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LratCert.Varianta0eea966a1ec6f6fe932d8a28902b22dca82175ffd7e579832b0f3370cbb8641

namespace Lean.Meta.Tactic.BVDecide

open Std.Sat
open Std.Tactic.BVDecide

instance : ToExpr LRAT.IntAction where
  toExpr action :=
    let beta := mkApp (mkConst ``Array [.zero]) (mkConst ``Int)
    let alpha := mkConst ``Nat
    match action with
    | .addEmpty id hints =>
      mkApp4 (mkConst ``LRAT.Action.addEmpty [.zero, .zero]) beta alpha (toExpr id) (toExpr hints)
    | .addRup id c hints =>
      mkApp5 (mkConst ``LRAT.Action.addRup [.zero, .zero])
        beta
        alpha
        (toExpr id)
        (toExpr c)
        (toExpr hints)
    | .addRat id c pivot rupHints ratHints =>
      mkApp7 (mkConst ``LRAT.Action.addRat [.zero, .zero])
        beta
        alpha
        (toExpr id)
        (toExpr c)
        (toExpr pivot)
        (toExpr rupHints)
        (toExpr ratHints)
    | .del ids =>
      mkApp3 (mkConst ``LRAT.Action.del [.zero, .zero]) beta alpha (toExpr ids)
  toTypeExpr := mkConst ``LRAT.IntAction



/-- An LRAT proof read from a file. This will get parsed using native evaluation. -/
public abbrev LratCert := String

namespace LratCert

public def load (lratPath : System.FilePath) (trimProofs : Bool) : Core.CoreM (Array LRAT.IntAction) := do
  let proofInput ← IO.FS.readBinFile lratPath
  let proof ←
    withTraceNode `Meta.Tactic.sat (fun _ => return s!"Parsing LRAT file") do
      -- lazyPure to prevent compiler lifting
      let proof? ← IO.lazyPure (fun _ => LRAT.parseLRATProof proofInput)
      match proof? with
      | .ok proof => pure proof
      | .error err => throwError "SAT solver produced invalid LRAT: {err}"

  trace[Meta.Tactic.sat] s!"LRAT proof has {proof.size} steps before trimming"

  let proof ←
    if trimProofs then
      withTraceNode `Meta.Tactic.sat (fun _ => return "Trimming LRAT proof") do
        -- lazyPure to prevent compiler lifting
        let trimmed ← IO.lazyPure (fun _ => LRAT.trim proof)
        IO.ofExcept trimmed
    else
      pure proof

  trace[Meta.Tactic.sat] s!"LRAT proof has {proof.size} steps after trimming"
  return proof

public def ofFile (lratPath : System.FilePath) (trimProofs : Bool) : CoreM LratCert := do
  let proof ← LratCert.load lratPath trimProofs

  -- This is necessary because the proof might be in the binary format in which case we cannot
  -- store it as a string in the environment (yet) due to missing support for binary literals.
  let newProof := LRAT.lratProofToString proof
  return newProof

end LratCert

/--
Run an external SAT solver on the `CNF` to obtain an LRAT proof.

This will obtain an `LratCert` if the formula is UNSAT and throw errors otherwise.
-/
public def runExternal (cnf : CNF Nat) (solver : System.FilePath) (lratPath : System.FilePath)
    (trimProofs : Bool) (timeout : Nat) (binaryProofs : Bool) (solverMode : Elab.Tactic.BVDecide.SolverMode) :
    CoreM (Except (Array (Bool × Nat)) LratCert) := do
  IO.FS.withTempFile fun cnfHandle cnfPath => do
    withTraceNode `Meta.Tactic.sat (fun _ => return "Serializing SAT problem to DIMACS file") do
      -- lazyPure to prevent compiler lifting
      cnfHandle.putStr  (← IO.lazyPure (fun _ => cnf.dimacs))
      cnfHandle.flush

    let res ←
      withTraceNode `Meta.Tactic.sat (fun _ => return "Running SAT solver") do
        External.satQuery solver cnfPath lratPath timeout binaryProofs solverMode
    if let .sat assignment := res then
      return .error assignment

    let lratProof ←
      withTraceNode `Meta.Tactic.sat (fun _ => return "Obtaining LRAT certificate") do
        LratCert.ofFile lratPath trimProofs

    return .ok lratProof


end Lean.Meta.Tactic.BVDecide
```
