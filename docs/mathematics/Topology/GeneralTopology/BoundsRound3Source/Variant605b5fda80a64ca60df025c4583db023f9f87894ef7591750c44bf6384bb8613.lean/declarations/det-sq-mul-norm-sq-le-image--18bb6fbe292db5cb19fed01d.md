# det_sq_mul_norm_sq_le_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:597d1c2d-14c0-c231-fa79-178fd8a40efb",
  "kind": "theorem",
  "lexical_name": "det_sq_mul_norm_sq_le_image",
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
  "slug": "det-sq-mul-norm-sq-le-image--18bb6fbe292db5cb19fed01d",
  "source": {
    "blob": "8a6f5451b53faaf00804b52b39a7ebe0aefea395",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 206,
    "path": "GRWTSK/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18bb6fbe292db5cb19fed01dd6ed96536968cb29f9b5f4e885de7a9f3c8c374e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:597d1c2d-14c0-c231-fa79-178fd8a40efb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_sq_mul_norm_sq_le_image (M : Matrix (Fin k) (Fin k) ℝ)
    (hM : ‖M‖ ≤ 1) (x : EuclideanSpace ℝ (Fin k)) :
    M.det ^ 2 * ‖x‖ ^ 2 ≤ ‖Matrix.toEuclideanLin M x‖ ^ 2 := by
  classical
  let L := Matrix.toEuclideanLin M
  let P := LinearMap.adjoint L ∘ₗ L
  have hp : P.IsSymmetric := L.isSymmetric_adjoint_comp_self
  have hn : Module.finrank ℝ (EuclideanSpace ℝ (Fin k)) = k := by simp
  let b := hp.eigenvectorBasis hn
  let λ := hp.eigenvalues hn
  have hλ0 (i : Fin k) : 0 ≤ λ i :=
    L.isPositive_adjoint_comp_self.nonneg_eigenvalues hn i
  have hλimage (i : Fin k) : λ i = ‖L (b i)‖ ^ 2 := by
    have h := hp.apply_eigenvectorBasis hn i
    have he := congrArg (fun y => ⟪b i, y⟫) h
    simpa only [P, LinearMap.comp_apply, LinearMap.adjoint_inner_right,
      inner_smul_right, real_inner_self_eq_norm_sq, OrthonormalBasis.norm_eq_one,
      one_pow, mul_one, b, λ] using he.symm
  have hλ1 (i : Fin k) : λ i ≤ 1 := by
    rw [hλimage]
    have hnorm : ‖L (b i)‖ ≤ 1 := by
      have h := Matrix.l2_opNorm_mulVec M (b i)
      change ‖L (b i)‖ ≤ ‖M‖ * ‖b i‖ at h
      simpa only [OrthonormalBasis.norm_eq_one, mul_one] using h.trans
        (mul_le_mul_of_nonneg_right hM (norm_nonneg _))
    nlinarith [norm_nonneg (L (b i))]
  have hgram : Matrix.toEuclideanLin (M.transpose * M) = P := by
    rw [Matrix.toLpLin_mul]
    have he := Matrix.toEuclideanLin_conjTranspose_eq_adjoint M
    simpa only [Matrix.conjTranspose_eq_transpose_of_trivial] using
      congrArg (fun F => F ∘ₗ L) he
  have hdet : M.det ^ 2 = ∏ i, λ i := by
    have hd := hp.det_eq_prod_eigenvalues hn
    rw [← hgram, Matrix.toEuclideanLin_eq_toLin_orthonormal, LinearMap.det_toLin,
      Matrix.det_mul, Matrix.det_transpose] at hd
    simpa only [pow_two] using hd
  have hsmall (i : Fin k) : M.det ^ 2 ≤ λ i := by
    rw [hdet, ← Finset.prod_erase_mul _ _ (Finset.mem_univ i)]
    have hprod : (∏ j ∈ Finset.univ.erase i, λ j) ≤ 1 := by
      calc
        _ ≤ ∏ _j ∈ Finset.univ.erase i, (1 : ℝ) :=
          Finset.prod_le_prod (fun j _ => hλ0 j) (fun j _ => hλ1 j)
        _ = 1 := by simp
    exact (mul_le_mul_of_nonneg_right hprod (hλ0 i)).trans_eq (one_mul _)
  have hnorm : ‖x‖ ^ 2 = ∑ i, ⟪b i, x⟫ ^ 2 := (b.sum_sq_inner_right x).symm
  have himage : ‖L x‖ ^ 2 = ∑ i, λ i * ⟪b i, x⟫ ^ 2 := by
    calc
      ‖L x‖ ^ 2 = ⟪x, P x⟫ := by
        simp only [P, LinearMap.comp_apply, LinearMap.adjoint_inner_right,
          real_inner_self_eq_norm_sq]
      _ = ∑ i, ⟪x, b i⟫ * ⟪b i, P x⟫ := (b.sum_inner_mul_inner x (P x)).symm
      _ = _ := by
        apply Finset.sum_congr rfl
        intro i _
        have he := hp.eigenvectorBasis_apply_self_apply hn x i
        change ⟪b i, P x⟫ = λ i * ⟪b i, x⟫ at he
        rw [he, real_inner_comm x (b i)]
        ring
  rw [hnorm, himage, Finset.mul_sum]
  exact Finset.sum_le_sum fun i _ => mul_le_mul_of_nonneg_right (hsmall i) (sq_nonneg _)

/-- A contraction with determinant margin has inverse norm at most the reciprocal margin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundsRound3Source/Variant605b5fda80a64ca60df025c4583db023f9f87894ef7591750c44bf6384bb8613.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a6f5451b53faaf00804b52b39a7ebe0aefea395` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
