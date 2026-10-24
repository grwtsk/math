# theta_eq_primeCounting_mul_log_sub_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a5aace4-2dd7-90c6-a9b2-68053f05369a",
  "kind": "theorem",
  "lexical_name": "theta_eq_primeCounting_mul_log_sub_integral",
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
  "slug": "theta-eq-primecounting-mul-log-sub-integral--9b7c15b8e2afb8725ec204e8",
  "source": {
    "blob": "6b4f47107dc0a1502ebe46e87d82b1eadd29dbcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 703,
    "line": 680,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b7c15b8e2afb8725ec204e875cb0dad618cd1b6ed157d1ba9ce129966210d46",
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

Occurrence: `result:8a5aace4-2dd7-90c6-a9b2-68053f05369a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 680–703.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theta_eq_primeCounting_mul_log_sub_integral {x : ℝ} (hx : 2 ≤ x) :
    θ x = π ⌊x⌋₊ * log x - ∫ t in 2..x, π ⌊t⌋₊ / t := by
  -- Rewrite in a form to which Abel summation can be applied
  rw [theta_eq_sum_Icc, sum_filter]
  let a : ℕ → ℝ := Set.indicator (Set.ofPred Nat.Prime) (fun n ↦ 1)
  trans ∑ n ∈ Icc 0 ⌊x⌋₊, log n * a n
  · refine sum_congr rfl fun n _ ↦ ?_
    split_ifs with h <;> simp [a, h]
  rw [sum_mul_eq_sub_integral_mul₁ a (by simp [a, not_prime_zero])
    (by simp [a, not_prime_one]) _ (fun z ⟨hz, _⟩ ↦ (by fun_prop (disch := linarith))) ?hint,
    ← intervalIntegral.integral_of_le hx]
  case hint =>
    rw [deriv_log']
    refine ContinuousOn.integrableOn_Icc ?_
    fun_prop (disch := grind)
  -- Rewrite the derivative inside the integral
  simp only [primeCounting, primeCounting', count_eq_card_filter_range]
  have int_deriv (f : ℝ → ℝ) :
      ∫ u in 2..x, deriv (fun x ↦ log x) u * f u =
      ∫ u in 2..x, f u / u :=
    intervalIntegral.integral_congr fun u _ ↦ by rw [deriv_log, mul_comm, div_eq_mul_inv]
  rw [int_deriv]
  simp [a, Set.indicator_apply, range_succ_eq_Icc_zero, mul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean#L680).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b4f47107dc0a1502ebe46e87d82b1eadd29dbcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
