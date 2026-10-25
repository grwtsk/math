# P04Audit.check

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2608f54ab045e3efba38559d868871eab308fb1ce64645cc570a9ffaef36b7b8",
  "kind": "def",
  "lexical_name": "P04Audit.check",
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
  "slug": "p04audit-check--8e7b52afb08d817bb06984b8",
  "source": {
    "blob": "a0447ad96d908b004b657d4c63df6ca20edee18c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 15,
    "path": "GRWTSK/Logic/ProofChecking/Checks/AnalyticArithmeticKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e7b52afb08d817bb06984b855c897ea86249d2860a5eeb6b15e3e01ed7d0d5d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/Checks/AnalyticArithmeticKernel__SourceOccurrencea4bfcd6aac690a882b0fe0a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2608f54ab045e3efba38559d868871eab308fb1ce64645cc570a9ffaef36b7b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def P04Audit.check : CommandElabM Unit := do
  let env ← getEnv
  let prefixes := #[`ASBNP04, `PPNC, `PPNCP04, `EulerP04RH, `HSSCP04]
  let permitted := #[`propext, `Classical.choice, `Quot.sound]
  let mut checked : ℕ := 0
  for (name, _) in env.constants.toList do
    if prefixes.any (fun nsRoot => nsRoot.isPrefixOf (privateToUserName name.eraseMacroScopes)) then
      let axioms ← collectAxioms name
      for axiomName in axioms do
        unless permitted.contains axiomName do
          throwError "Unapproved axiom {axiomName} in {name}"
      checked := checked+1
  logInfo m!"Kernel axiom audit passed for {checked} declarations."

run_cmd P04Audit.check
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/Checks/AnalyticArithmeticKernel__SourceOccurrencea4bfcd6aac690a882b0fe0a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/ProofChecking/Checks/AnalyticArithmeticKernel.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0447ad96d908b004b657d4c63df6ca20edee18c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
