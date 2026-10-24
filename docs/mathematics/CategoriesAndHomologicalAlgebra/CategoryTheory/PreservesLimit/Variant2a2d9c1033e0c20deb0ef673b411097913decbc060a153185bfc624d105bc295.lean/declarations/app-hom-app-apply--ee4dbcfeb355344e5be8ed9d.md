# π_ι_app_hom_app_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:136a66a1-df07-6bbb-9823-a2faaab3f402",
  "kind": "lemma",
  "lexical_name": "π_ι_app_hom_app_apply",
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
  "slug": "app-hom-app-apply--ee4dbcfeb355344e5be8ed9d",
  "source": {
    "blob": "d95b29e53aaaa65a0975577856d062a946d23358",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant2a2d9c1033e0c20deb0ef673b411097913decbc060a153185bfc624d105bc295.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee4dbcfeb355344e5be8ed9de9827f8068e4f598c666ae3875ef4ba521892751",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant2a2d9c1033e0c20deb0ef673b411097913decbc060a153185bfc624d105bc295.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:136a66a1-df07-6bbb-9823-a2faaab3f402`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma π_ι_app_hom_app_apply ⦃j : J⦄ ⦃k : K⦄ (x : (G.obj k).obj.obj j) :
    dsimp% π hc s j ((c.ι.app k).hom.app j x) =
      s.π.app (op k) ≫ weightedLimObjObjπ _ _ x :=
  ((Types.isColimit_iff_coconeTypesIsColimit _).1
      ⟨isColimitOfPreserves ((evaluation _ _).obj j) hc⟩).fac_apply ..

end preservesLimit'

open preservesLimit' in
/-- Let `F : J ⥤ C` and `K` be a category. We consider a cocone `c`
for a functor `G` from `K` to the fullsubcategory of `J ⥤ Type w` defined
by `hasWeightedLimit.{w} F`. Assuming the cocone `c` is a colimit as a cocone
in `J ⥤ Type w`, we show that after the application of the contravariant
functor `F.weightedLimFlipObj'.{w}`, the corresponding cone in `C` is a limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant2a2d9c1033e0c20deb0ef673b411097913decbc060a153185bfc624d105bc295.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variant2a2d9c1033e0c20deb0ef673b411097913decbc060a153185bfc624d105bc295.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d95b29e53aaaa65a0975577856d062a946d23358` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
