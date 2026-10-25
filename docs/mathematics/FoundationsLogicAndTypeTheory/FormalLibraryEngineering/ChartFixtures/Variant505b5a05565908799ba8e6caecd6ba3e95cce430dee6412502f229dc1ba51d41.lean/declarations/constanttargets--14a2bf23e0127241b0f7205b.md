# constantTargets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c979230a10381f0d5099395c6d3e9bf7ab0eedbb94133d9bccb48d4015d9c60",
  "kind": "def",
  "lexical_name": "constantTargets",
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
  "slug": "constanttargets--14a2bf23e0127241b0f7205b",
  "source": {
    "blob": "f8f98816a52326a4c24b42c6912a723f004061c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 184,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ChartFixtures/Variant505b5a05565908799ba8e6caecd6ba3e95cce430dee6412502f229dc1ba51d41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14a2bf23e0127241b0f7205b3abe1077f907717df438bc9c107ecda1922d7cbd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ChartFixtures/Variant505b5a05565908799ba8e6caecd6ba3e95cce430dee6412502f229dc1ba51d41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c979230a10381f0d5099395c6d3e9bf7ab0eedbb94133d9bccb48d4015d9c60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def constantTargets : TargetFamily Bool where
  count := 1
  Value := fun _ => Nat
  valueEquality := fun _ => inferInstance
  value := fun _ _ => 0

/-- The empty atlas commits to preserving the distinction between the two node identifiers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ChartFixtures/Variant505b5a05565908799ba8e6caecd6ba3e95cce430dee6412502f229dc1ba51d41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ChartFixtures/Variant505b5a05565908799ba8e6caecd6ba3e95cce430dee6412502f229dc1ba51d41.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8f98816a52326a4c24b42c6912a723f004061c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
