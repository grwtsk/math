# whiskerRightIso_mapId

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eec0a286-f8ef-9cde-13c9-1906d12eb1e7",
  "kind": "lemma",
  "lexical_name": "whiskerRightIso_mapId",
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
  "slug": "whiskerrightiso-mapid--8c6c0f9a2f814e2c541007c5",
  "source": {
    "blob": "8847e6c501db108721bc84e04e7fee68c77b3d9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 224,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant0c1ddf7322b88b7a78f59d8785077a4af87942ccd4e8155f6ada7fc48d2243e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c6c0f9a2f814e2c541007c538d09172f995035f8f6bbbc36ecfbdea7519b283",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant0c1ddf7322b88b7a78f59d8785077a4af87942ccd4e8155f6ada7fc48d2243e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eec0a286-f8ef-9cde-13c9-1906d12eb1e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma whiskerRightIso_mapId (f : a ⟶ b) : whiskerRightIso (F.mapId a) (F.map f) =
    (F.mapComp (𝟙 a) f).symm ≪≫ F.map₂Iso (λ_ f) ≪≫ (λ_ (F.map f)).symm := by
  simp [mapComp_id_left]

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
@[to_app (attr := reassoc)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant0c1ddf7322b88b7a78f59d8785077a4af87942ccd4e8155f6ada7fc48d2243e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant0c1ddf7322b88b7a78f59d8785077a4af87942ccd4e8155f6ada7fc48d2243e7.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8847e6c501db108721bc84e04e7fee68c77b3d9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
