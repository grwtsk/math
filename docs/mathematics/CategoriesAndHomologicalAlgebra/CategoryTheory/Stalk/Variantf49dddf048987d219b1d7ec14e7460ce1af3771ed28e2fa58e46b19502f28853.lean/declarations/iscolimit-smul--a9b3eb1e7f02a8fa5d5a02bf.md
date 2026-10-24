# IsColimit.ι_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7ff927896957f258c81699645dfad13d76f10e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f49dddf048987d219b1d7ec14e7460ce1af3771ed28e2fa58e46b19502f28853.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bdd12294-f212-0f3b-e95d-eabd3712bf65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18cf0e91-e65a-d8bb-c23c-c9b35baddc77",
  "kind": "lemma",
  "lexical_name": "IsColimit.ι_smul",
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
  "slug": "iscolimit-smul--a9b3eb1e7f02a8fa5d5a02bf",
  "source": {
    "blob": "b7ff927896957f258c81699645dfad13d76f10e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 134,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalk/Variantf49dddf048987d219b1d7ec14e7460ce1af3771ed28e2fa58e46b19502f28853.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9b3eb1e7f02a8fa5d5a02bfa8cd05319182f290907326d1e0050aef290558a8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalk/Variantf49dddf048987d219b1d7ec14e7460ce1af3771ed28e2fa58e46b19502f28853.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18cf0e91-e65a-d8bb-c23c-c9b35baddc77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsColimit.ι_smul {cR : Cocone R} (hcR : IsColimit cR) {cM : Cocone M}
    (hcM : IsColimit cM) (i : C) (r : R.obj i) (m : M.obj i) :
    letI := IsColimit.module R M H hcR hcM
    cM.ι.app i (r • m) =
      HSMul.hSMul (α := cR.pt) (β := cM.pt) (cR.ι.app i r) (cM.ι.app i m) := by
  let := filteredColimitsModule R M H
  let α := IsColimit.coconePointUniqueUpToIso hcM
    (AddCommGrpCat.FilteredColimits.colimitCoconeIsColimit M)
  let β := IsColimit.coconePointUniqueUpToIso hcR
    (RingCat.FilteredColimits.colimitCoconeIsColimit R)
  apply α.addCommGroupIsoToAddEquiv.eq_symm_apply.mpr ?_
  change (cM.ι.app i ≫ α.hom) _ = (HSMul.hSMul (α := RingCat.FilteredColimits.colimit R)
    (β := AddCommGrpCat.FilteredColimits.colimit M)
    ((cR.ι.app i ≫ β.hom) r) ((cM.ι.app i ≫ α.hom) m))
  simp only [Functor.const_obj_obj, comp_coconePointUniqueUpToIso_hom, α, β]
  obtain ⟨s, α, H⟩ := IsFilteredOrEmpty.cocone_maps (leftToMax i i) (rightToMax i i)
  refine Functor.ιColimitType_eq_of_map_eq_map _ _ _ (leftToMax _ _ ≫ α) α ?_
  dsimp
  simp only [← ConcreteCategory.comp_apply, ← Functor.map_comp, *]

end CategoryTheory.Limits

namespace PresheafOfModules

variable {X : TopCat.{u}} {R : X.Presheaf RingCat.{u}} (M : PresheafOfModules.{u} R)

variable (x : X)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalk/Variantf49dddf048987d219b1d7ec14e7460ce1af3771ed28e2fa58e46b19502f28853.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalk/Variantf49dddf048987d219b1d7ec14e7460ce1af3771ed28e2fa58e46b19502f28853.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7ff927896957f258c81699645dfad13d76f10e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
