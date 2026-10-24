# norm_logDeriv_of_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db214161-142a-e9b5-f8d5-c126610606b9",
  "kind": "theorem",
  "lexical_name": "norm_logDeriv_of_factorization",
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
  "slug": "norm-logderiv-of-factorization--6d0b6e3c969784e714372627",
  "source": {
    "blob": "44b683e049ac87227567f5bcccc8d2cbd10209af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 106,
    "path": "GRWTSK/Analysis/Complex/NormalizedLogDerivativeBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d0b6e3c969784e714372627c383acbfef9fc144538ac03378858f69bbec3350",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/NormalizedLogDerivativeBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db214161-142a-e9b5-f8d5-c126610606b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_logDeriv_of_factorization {ι : Type*} (S : Finset ι) (a : ι → ℂ) (m : ι → ℕ)
    (L f : ℂ → ℂ) (C z : ℂ) (H δ : ℝ) (hC : C ≠ 0) (hH : 0 < H) (hδ : 0 < δ)
    (hL : DifferentiableOn ℂ L (ball 0 (11 / 4 : ℝ))) (h0 : L 0 = 0)
    (hreal : ∀ w ∈ ball 0 (11 / 4 : ℝ), (L w).re ≤ H)
    (ha : ∀ i ∈ S, ‖a i‖ ≤ 11 / 4) (hz : ‖z‖ ≤ 9 / 4)
    (hsep : ∀ i ∈ S, δ ≤ ‖z - a i‖)
    (hfactor : f =ᶠ[𝓝 z] fun w => C *
      (Complex.exp (L w) * ∏ i ∈ S, (factor 3 (a i) w) ^ m i)) :
    ‖logDeriv f z‖ ≤ 80 * H + (∑ i ∈ S, (m i : ℝ)) * (1 / δ + 1) := by
  have hmem : z ∈ ball (0 : ℂ) (11 / 4 : ℝ) := by
    rw [Metric.mem_ball, dist_zero_right]
    linarith
  have hdiff := hL.differentiableAt (isOpen_ball.mem_nhds hmem)
  have hne (i : ι) (hi : i ∈ S) : z ≠ a i := by
    intro he
    have hh := hsep i hi
    rw [he, sub_self, norm_zero] at hh
    linarith
  rw [logDeriv_of_factorization S a m L f C z hC hdiff ha hz hne hfactor]
  calc
    _ ≤ ‖deriv L z‖ + ‖∑ i ∈ S, (m i : ℂ) * logDeriv (factor 3 (a i)) z‖ := norm_add_le _ _
    _ ≤ 80 * H + ∑ i ∈ S, ‖(m i : ℂ) * logDeriv (factor 3 (a i)) z‖ :=
      add_le_add (norm_deriv_log_le_eighty L H hH hL h0 hreal z hz) (norm_sum_le _ _)
    _ ≤ 80 * H + ∑ i ∈ S, (m i : ℝ) * (1 / δ + 1) := by
      apply add_le_add le_rfl
      apply Finset.sum_le_sum
      intro i hi
      rw [norm_mul, Complex.norm_natCast]
      exact mul_le_mul_of_nonneg_left
        (norm_logDeriv_factor_le (a i) z δ hδ (ha i hi) hz (hsep i hi)) (Nat.cast_nonneg _)
    _ = _ := by rw [Finset.sum_mul]

end
end GRWTSK.Analysis.Complex.NormalizedLogDerivativeBound
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/NormalizedLogDerivativeBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/NormalizedLogDerivativeBound.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44b683e049ac87227567f5bcccc8d2cbd10209af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
