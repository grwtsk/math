# runExternal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba9072646fe9351ae034ab26c1068291d9a45c9ca9ef0ecf89326b4ebcb09057",
  "kind": "def",
  "lexical_name": "runExternal",
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
  "slug": "runexternal--26f4c4ec4d69a2688de21428",
  "source": {
    "blob": "1be17726a69fac34b37f4ffc3b3f341de3e8e38d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta5e8e372717654a0ec8844b0f07d43a282bdd77977ea266beb19b1f30e26ddd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26f4c4ec4d69a2688de21428e22e608906705f1e33145797813696a37d0d42a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta5e8e372717654a0ec8844b0f07d43a282bdd77977ea266beb19b1f30e26ddd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba9072646fe9351ae034ab26c1068291d9a45c9ca9ef0ecf89326b4ebcb09057`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta5e8e372717654a0ec8844b0f07d43a282bdd77977ea266beb19b1f30e26ddd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cert/Varianta5e8e372717654a0ec8844b0f07d43a282bdd77977ea266beb19b1f30e26ddd9.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1be17726a69fac34b37f4ffc3b3f341de3e8e38d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
