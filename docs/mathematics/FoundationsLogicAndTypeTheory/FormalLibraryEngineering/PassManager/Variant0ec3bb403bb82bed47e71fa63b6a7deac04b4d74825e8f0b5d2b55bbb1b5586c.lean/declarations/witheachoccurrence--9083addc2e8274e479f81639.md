# withEachOccurrence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75d5cedb44247d1be3b38fc989f21df05ed669751b7e42084b59ae877c5b8c77",
  "kind": "def",
  "lexical_name": "withEachOccurrence",
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
  "slug": "witheachoccurrence--9083addc2e8274e479f81639",
  "source": {
    "blob": "0d72ed7b50a5ae010630c454d9345f567281ef5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 170,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PassManager/Variant0ec3bb403bb82bed47e71fa63b6a7deac04b4d74825e8f0b5d2b55bbb1b5586c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9083addc2e8274e479f81639cd018f911504d5998ea714ed31dc26d9537978ce",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PassManager/Variant0ec3bb403bb82bed47e71fa63b6a7deac04b4d74825e8f0b5d2b55bbb1b5586c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75d5cedb44247d1be3b38fc989f21df05ed669751b7e42084b59ae877c5b8c77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withEachOccurrence (phase : Phase) (targetName : Name) (f : Nat → PassInstaller) : PassInstaller where
  phase
  install passes := do
    let ⟨lowestOccurrence, highestOccurrence⟩ ← PassManager.findOccurrenceBounds targetName passes
    let mut passes := passes
    for occurrence in lowestOccurrence...=highestOccurrence do
      let installer := f occurrence
      if installer.phase != phase then
        panic! "phase mismatch"
      passes ← installer.install passes
    return passes

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PassManager/Variant0ec3bb403bb82bed47e71fa63b6a7deac04b4d74825e8f0b5d2b55bbb1b5586c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PassManager/Variant0ec3bb403bb82bed47e71fa63b6a7deac04b4d74825e8f0b5d2b55bbb1b5586c.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d72ed7b50a5ae010630c454d9345f567281ef5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
