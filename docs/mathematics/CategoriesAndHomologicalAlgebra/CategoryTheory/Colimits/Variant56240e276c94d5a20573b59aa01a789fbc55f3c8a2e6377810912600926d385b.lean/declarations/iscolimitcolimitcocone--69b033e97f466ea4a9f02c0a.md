# isColimitColimitCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc33206ab43d684c0e28cbbabed430b2bd08828a59c461b5e48aae762e0a6254",
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
  "slug": "iscolimitcolimitcocone--69b033e97f466ea4a9f02c0a",
  "source": {
    "blob": "467890248156563a42f746a82a5be8f05ff3a879",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant56240e276c94d5a20573b59aa01a789fbc55f3c8a2e6377810912600926d385b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69b033e97f466ea4a9f02c0ace65aa867d1fe286d6cd2da29bfc9be4730f6e7d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant56240e276c94d5a20573b59aa01a789fbc55f3c8a2e6377810912600926d385b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc33206ab43d684c0e28cbbabed430b2bd08828a59c461b5e48aae762e0a6254`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–105.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant56240e276c94d5a20573b59aa01a789fbc55f3c8a2e6377810912600926d385b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant56240e276c94d5a20573b59aa01a789fbc55f3c8a2e6377810912600926d385b.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `467890248156563a42f746a82a5be8f05ff3a879` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
