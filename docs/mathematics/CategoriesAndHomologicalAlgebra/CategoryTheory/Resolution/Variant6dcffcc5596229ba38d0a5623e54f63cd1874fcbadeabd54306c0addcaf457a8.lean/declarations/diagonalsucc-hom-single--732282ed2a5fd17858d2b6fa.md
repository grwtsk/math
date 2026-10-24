# diagonalSucc_hom_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0553316-56d5-cd91-cbf6-efa057df8a33",
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
  "slug": "diagonalsucc-hom-single--732282ed2a5fd17858d2b6fa",
  "source": {
    "blob": "e6b9161bb7b60f042c48cf598413a443784ba528",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 184,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:732282ed2a5fd17858d2b6fa21379598c090834e9492bc10ff0bdb3c8fa5db3f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0553316-56d5-cd91-cbf6-efa057df8a33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–206.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6b9161bb7b60f042c48cf598413a443784ba528` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
