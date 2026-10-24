# bernoulliFun_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c760c41d-8e1f-2ca6-b293-c40feac817df",
  "kind": "theorem",
  "lexical_name": "bernoulliFun_mul",
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
  "slug": "bernoullifun-mul--25017e96c851d60625410a9a",
  "source": {
    "blob": "87d1246d617e62cf3e1b45180465d6d0d45f07b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 149,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaValues/Variant55becd91436e210fff7a5cb6c974b2082661bad5726cf602158c6127bab5668d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25017e96c851d60625410a9a3c4e67c98f1376bf43a1301742b32b4770c51a44",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaValues/Variant55becd91436e210fff7a5cb6c974b2082661bad5726cf602158c6127bab5668d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c760c41d-8e1f-2ca6-b293-c40feac817df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bernoulliFun_mul (k : ℕ) {m : ℕ} (m0 : m ≠ 0) (x : ℝ) :
    bernoulliFun k (m * x) =
      m ^ k / m * ∑ i ∈ Finset.range m, bernoulliFun k (x + i / m) := by
  have m0' : (m : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr m0
  let f (k x) := bernoulliFun k (m * x) -
    m ^ k / m * ∑ i ∈ Finset.range m, bernoulliFun k (x + i / ↑m)
  suffices h : ∀ x, f k x = 0 by
    rw [← sub_eq_zero]
    exact h x
  induction k with
  | zero =>
    intro x
    simp only [f, bernoulliFun_zero, pow_zero, one_div, Finset.sum_const, Finset.card_range,
      nsmul_eq_mul, mul_one, sub_eq_zero]
    rw [inv_mul_cancel₀ (Nat.cast_ne_zero.mpr m0)]
  | succ k h =>
    have d (x) : HasDerivAt (f (k + 1)) (m * (k + 1) * f k x) x := by
      simp only [f, mul_sub, Finset.mul_sum, pow_succ, mul_div_cancel_right₀ _ m0',
        ← mul_assoc, mul_comm _ (_ / _), div_mul_cancel₀ _ m0']
      apply HasDerivAt.sub
      · rw [mul_assoc, mul_comm (m : ℝ) _, ← Nat.cast_add_one]
        exact (hasDerivAt_bernoulliFun _ _).comp _ (hasDerivAt_const_mul ..)
      · refine HasDerivAt.fun_sum fun i _ ↦ ?_
        simp only [mul_assoc, ← Nat.cast_add_one]
        apply HasDerivAt.const_mul
        rw [← mul_one (_ * _)]
        exact (hasDerivAt_bernoulliFun _ _).comp _ ((hasDerivAt_id' _).add_const _)
    simp only [h, mul_zero] at d
    have fc (x) : f (k + 1) x = f (k + 1) 0 :=
      is_const_of_deriv_eq_zero (fun _ ↦ (d _).differentiableAt) (fun _ ↦ (d _).deriv) x 0
    generalize f (k + 1) 0 = c at fc
    have i : ∫ x in (0 : ℝ)..m⁻¹, f (k + 1) x = 0 := by
      simp only [f]
      rw [intervalIntegral.integral_sub, intervalIntegral.integral_comp_mul_left _ m0', mul_zero,
        mul_inv_cancel₀ m0', integral_bernoulliFun_eq_zero (by lia), smul_zero, sub_eq_zero,
        intervalIntegral.integral_const_mul, eq_comm (a := 0), mul_eq_zero]
      · right
        rw [intervalIntegral.integral_finsetSum]
        · simp only [intervalIntegral.integral_comp_add_right, zero_add, ← one_div, ← add_div,
            add_comm (1 : ℝ), ← Nat.cast_add_one]
          rw [intervalIntegral.sum_integral_adjacent_intervals]
          · simp [div_self m0', integral_bernoulliFun_eq_zero]
          · intros; exact Continuous.intervalIntegrable (by fun_prop) _ _
        · intros; exact Continuous.intervalIntegrable (by fun_prop) _ _
      · exact Continuous.intervalIntegrable (by fun_prop) _ _
      · exact Continuous.intervalIntegrable (by fun_prop) _ _
    simp only [fc, intervalIntegral.integral_const, sub_zero, smul_eq_mul, mul_eq_zero, inv_eq_zero,
      Nat.cast_eq_zero, m0, false_or] at i
    simpa only [i] using fc

/-!
### Values at 1/2
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaValues/Variant55becd91436e210fff7a5cb6c974b2082661bad5726cf602158c6127bab5668d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaValues/Variant55becd91436e210fff7a5cb6c974b2082661bad5726cf602158c6127bab5668d.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87d1246d617e62cf3e1b45180465d6d0d45f07b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
