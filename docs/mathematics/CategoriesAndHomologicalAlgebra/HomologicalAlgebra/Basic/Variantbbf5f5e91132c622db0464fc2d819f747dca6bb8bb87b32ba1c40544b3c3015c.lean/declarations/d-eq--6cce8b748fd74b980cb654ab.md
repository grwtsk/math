# d_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b7a4be321775aaf35ffdd3a6ee0951b806fa452",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17acd948-b10d-9f0c-7d1a-ad73c98a0b09",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a2c24aa-3252-f6ed-f487-9c6481db1348",
  "kind": "theorem",
  "lexical_name": "d_eq",
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
  "slug": "d-eq--6cce8b748fd74b980cb654ab",
  "source": {
    "blob": "3b7a4be321775aaf35ffdd3a6ee0951b806fa452",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 121,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cce8b748fd74b980cb654abaa308211fd58cd2f9df25a76dd9269b9dfc6bee7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a2c24aa-3252-f6ed-f487-9c6481db1348`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem d_eq :
    d n A =
      ((diagonalHomEquiv n A).toModuleIso.inv ≫
        (linearYonedaObjResolution A).d n (n + 1) ≫
          (diagonalHomEquiv (n + 1) A).toModuleIso.hom).hom := by
  ext f g
/- Porting note (https://github.com/leanprover-community/mathlib4/issues/11039): broken proof was
  simp only [ModuleCat.coe_comp, LinearEquiv.coe_coe, Function.comp_apply,
    LinearEquiv.toModuleIso_inv, linearYonedaObjResolution_d_apply, LinearEquiv.toModuleIso_hom,
    diagonalHomEquiv_apply, Action.comp_hom, Resolution.d_eq k G n,
    Resolution.d_of (Fin.partialProd g), LinearMap.map_sum,
    ← Finsupp.smul_single_one _ ((-1 : k) ^ _), map_smul, d_apply]
  simp only [@Fin.sum_univ_succ _ _ (n + 1), Fin.val_zero, pow_zero, one_smul, Fin.succAbove_zero,
    diagonalHomEquiv_symm_apply f (Fin.partialProd g ∘ @Fin.succ (n + 1)), Function.comp_apply,
    Fin.partialProd_succ, Fin.castSucc_zero, Fin.partialProd_zero, one_mul]
  congr 1
  · congr
    ext
    have := Fin.partialProd_right_inv g (Fin.castSucc x)
    simp only [mul_inv_rev, Fin.castSucc_fin_succ] at *
    rw [mul_assoc, ← mul_assoc _ _ (g x.succ), this, inv_mul_cancel_left]
  · exact Finset.sum_congr rfl fun j hj => by
      rw [diagonalHomEquiv_symm_partialProd_succ, Fin.val_succ] -/
  -- https://github.com/leanprover-community/mathlib4/issues/5026
  -- https://github.com/leanprover-community/mathlib4/issues/5164
  change d n A f g = diagonalHomEquiv (n + 1) A
    ((resolution k G).d (n + 1) n ≫ (diagonalHomEquiv n A).symm f) g
  rw [diagonalHomEquiv_apply, Action.comp_hom, ConcreteCategory.comp_apply, resolution.d_eq]
  erw [resolution.d_of (Fin.partialProd g)]
  simp only [map_sum, ← Finsupp.smul_single_one _ ((-1 : k) ^ _)]
  -- This used to be `rw`, but we need `erw` after https://github.com/leanprover/lean4/pull/2644
  erw [d_apply, @Fin.sum_univ_succ _ _ (n + 1), Fin.val_zero, pow_zero, one_smul,
    Fin.succAbove_zero, diagonalHomEquiv_symm_apply f (Fin.partialProd g ∘ @Fin.succ (n + 1))]
  simp_rw [Function.comp_apply, Fin.partialProd_succ, Fin.castSucc_zero,
    Fin.partialProd_zero, one_mul]
  rcongr x
  · have := Fin.partialProd_right_inv g (Fin.castSucc x)
    simp only [mul_inv_rev, Fin.castSucc_fin_succ] at this ⊢
    rw [mul_assoc, ← mul_assoc _ _ (g x.succ), this, inv_mul_cancel_left]
  · -- This used to be `rw`, but we need `erw` after https://github.com/leanprover/lean4/pull/2644
    erw [map_smul, diagonalHomEquiv_symm_partialProd_succ, Fin.val_succ]

end inhomogeneousCochains

namespace groupCohomology

variable [Group G] (n) (A : Rep k G)

open inhomogeneousCochains

/-- Given a `k`-linear `G`-representation `A`, this is the complex of inhomogeneous cochains
$$0 \to \mathrm{Fun}(G^0, A) \to \mathrm{Fun}(G^1, A) \to \mathrm{Fun}(G^2, A) \to \dots$$
which calculates the group cohomology of `A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b7a4be321775aaf35ffdd3a6ee0951b806fa452` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
