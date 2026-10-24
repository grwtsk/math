# primeCounting_eq_theta_div_log_add_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:524454d8-3588-78f1-bbe3-14c24dcf08b3",
  "kind": "theorem",
  "lexical_name": "primeCounting_eq_theta_div_log_add_integral",
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
  "slug": "primecounting-eq-theta-div-log-add-integral--3a87c9da3571a8b84b6459a6",
  "source": {
    "blob": "6b4f47107dc0a1502ebe46e87d82b1eadd29dbcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 679,
    "line": 643,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a87c9da3571a8b84b6459a6dd74b9ec22130db28f70706fda9652a5a26722b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:524454d8-3588-78f1-bbe3-14c24dcf08b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 643–679.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeCounting_eq_theta_div_log_add_integral {x : ℝ} (hx : 2 ≤ x) :
    π ⌊x⌋₊ = θ x / log x + ∫ t in 2..x, θ t / (t * log t ^ 2) := by
  -- Rewrite in a form to which Abel summation can be applied
  simp only [primeCounting, primeCounting', count_eq_card_filter_range]
  rw [card_eq_sum_ones, range_succ_eq_Icc_zero, sum_filter]
  push_cast
  let a : ℕ → ℝ := Set.indicator (Set.ofPred Nat.Prime) (fun n ↦ log n)
  trans ∑ n ∈ Icc 0 ⌊x⌋₊, (log n)⁻¹ * a n
  · refine sum_congr rfl fun n hn ↦ ?_
    split_ifs with h
    · have : log n ≠ 0 := log_ne_zero_of_pos_of_ne_one (mod_cast h.pos) (mod_cast h.ne_one)
      simp [a, h, field]
    · simp [a, h]
  rw [sum_mul_eq_sub_integral_mul₁ a (f := fun n ↦ (log n)⁻¹) (by simp [a]) (by simp [a]),
    ← intervalIntegral.integral_of_le hx]
  · -- Rewrite the derivative inside the integral
    have int_deriv (f : ℝ → ℝ) :
        ∫ u in 2..x, deriv (fun x ↦ (log x)⁻¹) u * f u =
        ∫ u in 2..x, f u * -(u * log u ^ 2)⁻¹ :=
      intervalIntegral.integral_congr fun u _ ↦ by simp [field]
    rw [int_deriv]
    simp [a, Set.indicator_apply, sum_filter, theta_eq_sum_Icc]
    grind
  · -- Differentiability
    intro z ⟨_, _⟩
    have : z ≠ 0 := by linarith
    have : log z ≠ 0 := by apply log_ne_zero_of_pos_of_ne_one <;> linarith
    fun_prop
  · -- Integrability of the derivative
    refine ContinuousOn.integrableOn_Icc fun z ⟨_, _⟩ ↦ ContinuousWithinAt.congr ?_
      (fun _ _ ↦ deriv_inv_log_apply) deriv_inv_log_apply
    have : z ≠ 0 := by linarith
    have : log z ^ 2 ≠ 0 := by
      refine pow_ne_zero 2 <| log_ne_zero_of_pos_of_ne_one ?_ ?_ <;> linarith
    exact ContinuousAt.continuousWithinAt <| by fun_prop

/-- Expresses the Chebyshev theta function `ϑ` in terms of `π` by using Abel summation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean#L643).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b4f47107dc0a1502ebe46e87d82b1eadd29dbcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
