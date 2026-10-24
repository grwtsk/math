# hasSmallLocalizedShiftedHom_K_S'_X₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af52b247-988f-daae-75a9-74ead76d168e",
  "kind": "lemma",
  "lexical_name": "hasSmallLocalizedShiftedHom_K_S'_X₁",
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
  "slug": "hassmalllocalizedshiftedhom-k-s-x--27f9d4a37e172e48c25f43fb",
  "source": {
    "blob": "76bd5a418f541ad9ec793b4724d2ae6377e9526f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 77,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variantcef46793446b93d9bb7941a676ff272f87ffb1cc731937f3d75d4b99f43e83d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27f9d4a37e172e48c25f43fbb68c7a6391cf25f226a88c59e6f0b97570b02a90",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variantcef46793446b93d9bb7941a676ff272f87ffb1cc731937f3d75d4b99f43e83d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af52b247-988f-daae-75a9-74ead76d168e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma hasSmallLocalizedShiftedHom_K_S'_X₁ :
    HasSmallLocalizedShiftedHom.{w} W ℤ K (S').X₁ := by
  rw [Localization.hasSmallLocalizedShiftedHom_iff_source.{w} W ℤ qis hqis (S').X₁]
  infer_instance

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/-- The class in `Ext S.X₃ S.X₁ 1` that is attached to a short exact
short complex `S` in an abelian category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variantcef46793446b93d9bb7941a676ff272f87ffb1cc731937f3d75d4b99f43e83d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/ExtClass/Variantcef46793446b93d9bb7941a676ff272f87ffb1cc731937f3d75d4b99f43e83d7.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76bd5a418f541ad9ec793b4724d2ae6377e9526f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
