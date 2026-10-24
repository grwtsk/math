# localization_localization_map_units

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99ef57eb-4efd-d2ff-29eb-58078159e66e",
  "kind": "theorem",
  "lexical_name": "localization_localization_map_units",
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
  "slug": "localization-localization-map-units--61a420d3abbeb3aed90ca196",
  "source": {
    "blob": "6627644612543b753f443169fef0d405f8581f2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 70,
    "path": "GRWTSK/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61a420d3abbeb3aed90ca1967a34727b8c937232f3ba59db93e07540daaa3f31",
  "verification": {
    "reference": "docs/verification/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99ef57eb-4efd-d2ff-29eb-58078159e66e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localization_localization_map_units [IsLocalization N T]
    (y : localizationLocalizationSubmodule M N) : IsUnit (algebraMap R T y) := by
  obtain ⟨y', z, eq⟩ := mem_localizationLocalizationSubmodule.mp y.prop
  rw [IsScalarTower.algebraMap_apply R S T, eq, RingHom.map_mul, IsUnit.mul_iff]
  exact ⟨IsLocalization.map_units T y', (IsLocalization.map_units _ z).map (algebraMap S T)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalizationLocalization/Variantfcfe43c05f5cc9c862460b95ab2d36aadf7f38ce590e877d20c66818ed08b043.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6627644612543b753f443169fef0d405f8581f2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
