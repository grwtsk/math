# runInterruptible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d839c11255a21287cef3f373d87b29a4bdee2d6efffce6c144d79a5b3a4362dd",
  "kind": "def",
  "lexical_name": "runInterruptible",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "runinterruptible--04bac9ba9b0b43a6a6d08733",
  "source": {
    "blob": "395c599742dd1b357969308a146d25cbc34605b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/External/Variante4678ddb322c358257ae94e8889590cd9e757be751946b5010812ef966d95045.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04bac9ba9b0b43a6a6d08733fa8e6d0ac160f960e57a3463faeedce58c1fa014",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/External/Variante4678ddb322c358257ae94e8889590cd9e757be751946b5010812ef966d95045.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d839c11255a21287cef3f373d87b29a4bdee2d6efffce6c144d79a5b3a4362dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/External/Variante4678ddb322c358257ae94e8889590cd9e757be751946b5010812ef966d95045.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/External/Variante4678ddb322c358257ae94e8889590cd9e757be751946b5010812ef966d95045.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `395c599742dd1b357969308a146d25cbc34605b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
