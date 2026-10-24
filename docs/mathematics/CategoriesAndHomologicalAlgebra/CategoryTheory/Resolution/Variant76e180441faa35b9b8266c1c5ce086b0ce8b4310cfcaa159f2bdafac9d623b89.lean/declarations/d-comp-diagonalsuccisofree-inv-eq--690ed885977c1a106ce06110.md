# d_comp_diagonalSuccIsoFree_inv_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3724bd28-24fd-59f0-72ca-49fe29355beb",
  "kind": "lemma",
  "lexical_name": "d_comp_diagonalSuccIsoFree_inv_eq",
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
  "slug": "d-comp-diagonalsuccisofree-inv-eq--690ed885977c1a106ce06110",
  "source": {
    "blob": "e434666d906e19735d3f51c8d78a6b6720cdbaa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 368,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant76e180441faa35b9b8266c1c5ce086b0ce8b4310cfcaa159f2bdafac9d623b89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:690ed885977c1a106ce061102f31252786020e5d25f7b4dbcdd9f4dd5c1e66d6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant76e180441faa35b9b8266c1c5ce086b0ce8b4310cfcaa159f2bdafac9d623b89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3724bd28-24fd-59f0-72ca-49fe29355beb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma d_comp_diagonalSuccIsoFree_inv_eq :
    d k G n ≫ (diagonalSuccIsoFree k G n).inv =
      (diagonalSuccIsoFree k G (n + 1)).inv ≫ (standardComplex k G).d (n + 1) n :=
  free_ext k G _ _ _ fun i ↦ by
    have eq3 : MonoidAlgebra.single (i 0 • Fin.partialProd fun i_1 ↦ i i_1.succ) (1 : k) =
        MonoidAlgebra.single (Fin.partialProd i ∘ Fin.succ) 1 := by
      congr; exact funext fun j ↦ Fin.partialProd_succ' i j |>.symm
    simp only [Rep.hom_comp, Representation.IntertwiningMap.comp_apply]
    rw [d_single (k := k), map_add, map_sum]
    -- in-context `have`: at `Action` carriers, only locally re-elaborated statements key-match
    have H : ∀ (m : ℕ) (f : Fin m → G) (g : G) (r : k),
        (diagonalSuccIsoFree k G m).inv.hom (single f (MonoidAlgebra.single g r)) =
          MonoidAlgebra.single (g • Fin.partialProd f) r := by
      intro m f g r
      simp only [diagonalSuccIsoFree, diagonalSuccIsoTensorTrivial, Iso.trans_inv, Rep.hom_comp,
        Representation.IntertwiningMap.comp_apply]
      have step1 : (Hom.hom (leftRegularTensorTrivialIsoFree k G (Fin m → G)).inv)
          (single f (.single g r)) = .single g 1 ⊗ₜ[k] .single f r :=
        Representation.leftRegularTensorTrivialIsoFree_symm_apply_single_single f g r
      rw [step1]
      simp only [mkIso_inv, Representation.linearizeOfMulActionIso, Representation.Equiv.mk_symm,
        LinearEquiv.refl_symm, ConcreteCategory.hom_ofHom, Action.tensorObj_V, Action.trivial_V,
        Functor.mapIso_inv, tensor_V, tensor_ρ, Iso.symm_inv, Functor.Monoidal.μIso_hom, μ_hom,
        MonoidalCategory.tensorIso_inv, Representation.linearizeTrivialIso, hom_tensorHom,
        Representation.IntertwiningMap.tensor_apply, Representation.Equiv.coe_toIntertwiningMap,
        Representation.Equiv.mk_apply, LinearEquiv.refl_apply]
      have key₁ := Representation.linearizeMap_single (k := k)
        (Action.diagonalSuccIsoTensorTrivial G m).inv (g, f) ((1 : k) * r)
      have key₂ := Representation.LinearizeMonoidal.μ_apply_single_single (k := k)
        (X := Action.leftRegular G) (Y := Action.trivial G (Fin m → G)) g f 1 r
      exact ((congrArg (fun z => (Representation.linearizeMap
        (Action.diagonalSuccIsoTensorTrivial G m).inv) z) key₂).trans key₁).trans (by simp)
    simp only [H, one_smul]
    simp [d_apply (k := k), Fin.partialProd_contractNth, Fin.sum_univ_succ, eq3]

end barComplex

open barComplex

set_option backward.isDefEq.respectTransparency false in
/-- The projective resolution of `k` as a trivial `k`-linear `G`-representation with `n`th
differential `(Gⁿ⁺¹ →₀ k[G]) → (Gⁿ →₀ k[G])` sending `(g₀, ..., gₙ)` to
`g₀·(g₁, ..., gₙ) + ∑ (-1)ʲ⁺¹·(g₀, ..., gⱼgⱼ₊₁, ..., gₙ) + (-1)ⁿ⁺¹·(g₀, ..., gₙ₋₁)` for
`j = 0, ..., n - 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant76e180441faa35b9b8266c1c5ce086b0ce8b4310cfcaa159f2bdafac9d623b89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant76e180441faa35b9b8266c1c5ce086b0ce8b4310cfcaa159f2bdafac9d623b89.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e434666d906e19735d3f51c8d78a6b6720cdbaa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
