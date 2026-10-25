# ModulePlan.Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1fd05be6a830e7c8a0c66989beec2f7c7c2c39bef592d6c5e42b50e5359a24a",
  "kind": "def",
  "lexical_name": "ModulePlan.Valid",
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
  "slug": "moduleplan-valid--57ea4cf7a03ce1d7d9fb611a",
  "source": {
    "blob": "7deb9ae0f3d0cd4039f706327cf1290e5c81d8ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 22,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A5f95d7a7f0dd83b3/Variant4480a5d9063bcdec0b62d6fce5b757228ba3295e5813d5034d412678849acd92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57ea4cf7a03ce1d7d9fb611a30dc75f96d1b69f3e8abe7dc3c6cdb2278effdf0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A5f95d7a7f0dd83b3/Variant4480a5d9063bcdec0b62d6fce5b757228ba3295e5813d5034d412678849acd92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1fd05be6a830e7c8a0c66989beec2f7c7c2c39bef592d6c5e42b50e5359a24a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–22.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ModulePlan.Valid (plan : ModulePlan) : Prop :=
  plan.id.Valid ∧ plan.profileId.Valid ∧
    plan.hardConstraintsSatisfied = true ∧ plan.acyclic = true ∧
    plan.deterministicDigest.Valid

end MathDiscovery.Atom
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A5f95d7a7f0dd83b3/Variant4480a5d9063bcdec0b62d6fce5b757228ba3295e5813d5034d412678849acd92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A5f95d7a7f0dd83b3/Variant4480a5d9063bcdec0b62d6fce5b757228ba3295e5813d5034d412678849acd92.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7deb9ae0f3d0cd4039f706327cf1290e5c81d8ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
