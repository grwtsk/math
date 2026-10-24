# isColimitColimitCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62211b537b637b9a19e7512adb2688751fae31bebd7415515b14a51fa360c2a8",
  "kind": "def",
  "lexical_name": "isColimitColimitCocone",
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
  "slug": "iscolimitcolimitcocone--0f2a6ffb46e7405e99ad5457",
  "source": {
    "blob": "7f484b3b55bee6a5d5ab5c871b4f0b90b5fcdd82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 90,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant14ee115f2ab9df5bb3183d9bf8b769a79a5e03cb6c740d89b83c32fe670498e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f2a6ffb46e7405e99ad5457e89cdca2b853f34dca03c2eaef1da59b798f4535",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant14ee115f2ab9df5bb3183d9bf8b769a79a5e03cb6c740d89b83c32fe670498e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62211b537b637b9a19e7512adb2688751fae31bebd7415515b14a51fa360c2a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimitColimitCocone : IsColimit (colimitCocone F) where
  desc s := homMk (colimit.desc _ ((forget₂ _ AddCommGrpCat).mapCocone s)) (fun r => by
    apply colimit.hom_ext
    intro j
    dsimp
    rw [colimit.ι_desc_assoc]
    -- This used to be `rw`, but we need `erw` after https://github.com/leanprover/lean4/pull/2644
    erw [mkOfSMul_smul]
    dsimp
    simp only [ι_colimMap_assoc, Functor.comp_obj, forget₂_obj, colimit.ι_desc,
      Functor.mapCocone_pt, Functor.mapCocone_ι_app, forget₂_map]
    exact smul_naturality (s.ι.app j) r)
  fac s j := by
    apply (forget₂ _ AddCommGrpCat).map_injective
    exact colimit.ι_desc ((forget₂ _ AddCommGrpCat).mapCocone s) j
  uniq s m hm := by
    apply (forget₂ _ AddCommGrpCat).map_injective
    apply colimit.hom_ext
    intro j
    erw [colimit.ι_desc ((forget₂ _ AddCommGrpCat).mapCocone s) j]
    dsimp
    rw [← hm]
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant14ee115f2ab9df5bb3183d9bf8b769a79a5e03cb6c740d89b83c32fe670498e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant14ee115f2ab9df5bb3183d9bf8b769a79a5e03cb6c740d89b83c32fe670498e8.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f484b3b55bee6a5d5ab5c871b4f0b90b5fcdd82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
