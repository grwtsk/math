# diagonalSucc_hom_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "373d20302dca715335554e857905929ddba2cb39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:45530652-5f22-07cb-d41f-b7fced92a9ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17675dd2-c71e-ae0d-16f8-90550dd9ea9e",
  "kind": "theorem",
  "lexical_name": "diagonalSucc_hom_single",
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
  "slug": "diagonalsucc-hom-single--0e72f3f39fac246bb608497b",
  "source": {
    "blob": "373d20302dca715335554e857905929ddba2cb39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 176,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e72f3f39fac246bb608497bf4e1b3894895445dc0abccd4d7705bf44b838103",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17675dd2-c71e-ae0d-16f8-90550dd9ea9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonalSucc_hom_single (f : Gⁿ⁺¹) (a : k) :
    (diagonalSucc k G n).hom.hom (single f a) =
      single (f 0) 1 ⊗ₜ single (fun i => (f (Fin.castSucc i))⁻¹ * f i.succ) a := by
/- Porting note: broken proof was
  dsimp only [diagonalSucc]
  simpa only [Iso.trans_hom, Iso.symm_hom, Action.comp_hom, ModuleCat.comp_def,
    LinearMap.comp_apply, Functor.mapIso_hom,
    linearization_map_hom_single (actionDiagonalSucc G n).hom f a, asIso_inv,
    linearization_μ_inv_hom, actionDiagonalSucc_hom_apply, finsuppTensorFinsupp',
    LinearEquiv.trans_symm, lcongr_symm, LinearEquiv.trans_apply, lcongr_single,
    TensorProduct.lid_symm_apply, finsuppTensorFinsupp_symm_single, LinearEquiv.coe_toLinearMap] -/
  change (𝟙 ((linearization k G).1.obj (Action.leftRegular G)).V
      ⊗ (linearizationTrivialIso k G (Fin n → G)).hom.hom)
    ((inv ((linearization k G).μ (Action.leftRegular G) { V := Fin n → G, ρ := 1 })).hom
      ((lmapDomain k k (actionDiagonalSucc G n).hom.hom) (single f a))) = _
  simp only [CategoryTheory.Functor.map_id, linearization_μ_inv_hom]
  rw [lmapDomain_apply, mapDomain_single, LinearEquiv.coe_toLinearMap, finsuppTensorFinsupp',
    LinearEquiv.trans_symm, LinearEquiv.trans_apply, lcongr_symm, Equiv.refl_symm]
  erw [lcongr_single]
  rw [TensorProduct.lid_symm_apply, actionDiagonalSucc_hom_apply, finsuppTensorFinsupp_symm_single]
  rfl
#align group_cohomology.resolution.diagonal_succ_hom_single GroupCohomology.Resolution.diagonalSucc_hom_single

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variantd53ceae4297626c7bb79e548ea5fc761472272ebf90f65c90f92c31e9c14aae5.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `373d20302dca715335554e857905929ddba2cb39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
