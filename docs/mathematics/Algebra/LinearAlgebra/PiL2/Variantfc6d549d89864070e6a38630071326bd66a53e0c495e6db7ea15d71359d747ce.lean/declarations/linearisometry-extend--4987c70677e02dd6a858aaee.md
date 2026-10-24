# LinearIsometry.extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7cd2cd6957f769774012d650b23a8fe0af4d92f724b2aea040e8e383905ceb61",
  "kind": "def",
  "lexical_name": "LinearIsometry.extend",
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
  "slug": "linearisometry-extend--4987c70677e02dd6a858aaee",
  "source": {
    "blob": "49e30bb74bd904ca644d790d4a578a68b89065c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 947,
    "line": 897,
    "path": "GRWTSK/Algebra/LinearAlgebra/PiL2/Variantfc6d549d89864070e6a38630071326bd66a53e0c495e6db7ea15d71359d747ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4987c70677e02dd6a858aaeeca2585554ca69e50a010eae192c798e50d43eafd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PiL2/Variantfc6d549d89864070e6a38630071326bd66a53e0c495e6db7ea15d71359d747ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7cd2cd6957f769774012d650b23a8fe0af4d92f724b2aea040e8e383905ceb61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 897–947.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def LinearIsometry.extend (L : S →ₗᵢ[𝕜] V) : V →ₗᵢ[𝕜] V := by
  -- Build an isometry from Sᗮ to L(S)ᗮ through euclidean_space
  let d := finrank 𝕜 Sᗮ
  let LS := LinearMap.range L.toLinearMap
  have E : Sᗮ ≃ₗᵢ[𝕜] LSᗮ := by
    have dim_LS_perp : finrank 𝕜 LSᗮ = d :=
      calc
        finrank 𝕜 LSᗮ = finrank 𝕜 V - finrank 𝕜 LS := by
          simp only [← LS.finrank_add_finrank_orthogonal, add_tsub_cancel_left]
        _ = finrank 𝕜 V - finrank 𝕜 S := by simp only [LinearMap.finrank_range_of_inj L.injective]
        _ = finrank 𝕜 Sᗮ := by simp only [← S.finrank_add_finrank_orthogonal, add_tsub_cancel_left]

    exact
      (stdOrthonormalBasis 𝕜 Sᗮ).repr.trans
        ((stdOrthonormalBasis 𝕜 LSᗮ).reindex <| finCongr dim_LS_perp).repr.symm
  let L3 := LSᗮ.subtypeₗᵢ.comp E.toLinearIsometry
  -- Project onto S and Sᗮ
  haveI : CompleteSpace S := FiniteDimensional.complete 𝕜 S
  haveI : CompleteSpace V := FiniteDimensional.complete 𝕜 V
  let p1 := (orthogonalProjection S).toLinearMap
  let p2 := (orthogonalProjection Sᗮ).toLinearMap
  -- Build a linear map from the isometries on S and Sᗮ
  let M := L.toLinearMap.comp p1 + L3.toLinearMap.comp p2
  -- Prove that M is an isometry
  have M_norm_map : ∀ x : V, ‖M x‖ = ‖x‖ := by
    intro x
    -- Apply M to the orthogonal decomposition of x
    have Mx_decomp : M x = L (p1 x) + L3 (p2 x) := by
      simp only [LinearMap.add_apply, LinearMap.comp_apply, LinearMap.comp_apply,
        LinearIsometry.coe_toLinearMap]
    -- Mx_decomp is the orthogonal decomposition of M x
    have Mx_orth : ⟪L (p1 x), L3 (p2 x)⟫ = 0 := by
      have Lp1x : L (p1 x) ∈ LinearMap.range L.toLinearMap :=
        LinearMap.mem_range_self L.toLinearMap (p1 x)
      have Lp2x : L3 (p2 x) ∈ (LinearMap.range L.toLinearMap)ᗮ := by
        simp only [LinearIsometry.coe_comp, Function.comp_apply, Submodule.coe_subtypeₗᵢ, ←
          Submodule.range_subtype LSᗮ]
        apply LinearMap.mem_range_self
      apply Submodule.inner_right_of_mem_orthogonal Lp1x Lp2x
    -- Apply the Pythagorean theorem and simplify
    rw [← sq_eq_sq (norm_nonneg _) (norm_nonneg _), norm_sq_eq_add_norm_sq_projection x S]
    simp only [sq, Mx_decomp]
    rw [norm_add_sq_eq_norm_sq_add_norm_sq_of_inner_eq_zero (L (p1 x)) (L3 (p2 x)) Mx_orth]
    simp only [LinearIsometry.norm_map, _root_.add_left_inj, mul_eq_mul_left_iff,
      norm_eq_zero, true_or_iff, eq_self_iff_true, ContinuousLinearMap.coe_coe, Submodule.coe_norm,
      Submodule.coe_eq_zero]
  exact
    { toLinearMap := M
      norm_map' := M_norm_map }
#align linear_isometry.extend LinearIsometry.extend

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PiL2/Variantfc6d549d89864070e6a38630071326bd66a53e0c495e6db7ea15d71359d747ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PiL2/Variantfc6d549d89864070e6a38630071326bd66a53e0c495e6db7ea15d71359d747ce.lean#L897).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49e30bb74bd904ca644d790d4a578a68b89065c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
