# physical_relative_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11b1356b-fbf9-6434-e35c-f2a19adf9e00",
  "kind": "theorem",
  "lexical_name": "physical_relative_half",
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
  "slug": "physical-relative-half--b397702050f52df9cf66d826",
  "source": {
    "blob": "28daff445024da5c4170e5a73031aaa8c71bd927",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 140,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant5bc6bc3b9a79dea70cf50d044483967035966ad01f85a75b16a38f4285b21b73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b397702050f52df9cf66d826151887e67c25cd34d80471fc58a0d1693266b057",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant5bc6bc3b9a79dea70cf50d044483967035966ad01f85a75b16a38f4285b21b73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11b1356b-fbf9-6434-e35c-f2a19adf9e00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem physical_relative_half {Y : ℝ} (hY : 1 ≤ Y) :
    (1 / 2 : ℝ) * (∫ x in 1..Y,
      (Chebyshev.psi x - x) / (x * Real.sqrt x)) =
      (∑ n ∈ Finset.Icc 0 (Nat.floor Y), (vonMangoldt n : ℝ) / Real.sqrt n) -
        Chebyshev.psi Y / Real.sqrt Y - Real.sqrt Y + 1 := by
  have hderiv : IntegrableOn (deriv (fun x : ℝ => 1 / Real.sqrt x)) (Icc 1 Y) := by
    have hc : ContinuousOn (fun x : ℝ => -1 / (2 * x * Real.sqrt x)) (Icc 1 Y) := by
      intro x hx
      exact (continuousAt_const.div (by fun_prop)
        (by positivity : 2 * x * Real.sqrt x ≠ 0)).continuousWithinAt
    apply hc.integrableOn_Icc.congr_fun
    · intro x hx
      exact (invsqrt_deriv (by linarith [hx.1])).deriv.symm
    · exact measurableSet_Icc
  have ha := sum_mul_eq_sub_sub_integral_mul (vonMangoldt : ℕ → ℝ)
    (a := 1) (b := Y) (f := fun x => 1 / Real.sqrt x) (by norm_num) hY
    (fun x hx => (invsqrt_deriv (by linarith [hx.1])).differentiableAt) hderiv
  have hp : IntervalIntegrable (fun x : ℝ => Chebyshev.psi x / (x * Real.sqrt x))
      volume 1 Y := by
    have hc : ContinuousOn (fun x : ℝ => 1 / (x * Real.sqrt x)) (Icc 1 Y) := by
      intro x hx
      exact (continuousAt_const.div (by fun_prop)
        (by positivity : x * Real.sqrt x ≠ 0)).continuousWithinAt
    rw [intervalIntegrable_iff_integrableOn_Icc_of_le hY]
    apply (integrableOn_mul_sum_Icc (vonMangoldt : ℕ → ℝ)
      (m := 0) (by norm_num : (0 : ℝ) ≤ 1) hc.integrableOn_Icc).congr_fun
    · intro x _
      rw [← Chebyshev.psi_eq_sum_Icc]
      ring
    · exact measurableSet_Icc
  have hi : (∫ x in Ioc (1 : ℝ) Y,
      deriv (fun x : ℝ => 1 / Real.sqrt x) x *
        ∑ n ∈ Finset.Icc 0 (Nat.floor x), (vonMangoldt n : ℝ)) =
      -(1 / 2 : ℝ) * (∫ x in 1..Y, Chebyshev.psi x / (x * Real.sqrt x)) := by
    rw [intervalIntegral.integral_of_le hY, ← integral_const_mul]
    apply setIntegral_congr_fun measurableSet_Ioc
    intro x hx
    rw [(invsqrt_deriv (by linarith [hx.1])).deriv, ← Chebyshev.psi_eq_sum_Icc]
    ring
  have hs : (∑ n ∈ Finset.Ioc ⌊(1 : ℝ)⌋₊ ⌊Y⌋₊,
      (1 / Real.sqrt (n : ℝ)) * (vonMangoldt n : ℝ)) =
      ∑ n ∈ Finset.Icc 0 ⌊Y⌋₊, (vonMangoldt n : ℝ) / Real.sqrt n := by
    rw [Finset.sum_Ioc_eq_sum_Icc_sub_sum_Icc (Nat.floor_le_floor hY)]
    simp only [Nat.floor_one, Finset.sum_Icc_succ_top (by omega : 0 ≤ 0)]
    simp
    apply Finset.sum_congr rfl
    intro n _
    ring
  rw [hi, hs, ← Chebyshev.psi_eq_sum_Icc] at ha
  simp only [Real.sqrt_one, one_div, one_mul, Chebyshev.psi_eq_zero_of_le_one le_rfl,
    mul_zero, sub_zero] at ha
  have hc : IntervalIntegrable (fun x : ℝ => 1 / Real.sqrt x) volume 1 Y := by
    apply ContinuousOn.intervalIntegrable_of_Icc hY
    intro x hx
    exact (continuousAt_const.div Real.continuous_sqrt.continuousAt
      (Real.sqrt_pos.2 (by linarith [hx.1])).ne').continuousWithinAt
  have hm : (∫ x in 1..Y, 1 / Real.sqrt x) = 2 * Real.sqrt Y - 2 := by
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x hx => by
      have hx0 : 0 < x := by rw [uIcc_of_le hY] at hx; linarith [hx.1]
      convert (Real.hasDerivAt_sqrt hx0.ne').const_mul 2 using 1 <;> try rfl
      ring) hc]
    simp
  have he : (∫ x in 1..Y, (Chebyshev.psi x - x) / (x * Real.sqrt x)) =
      (∫ x in 1..Y, Chebyshev.psi x / (x * Real.sqrt x)) -
        ∫ x in 1..Y, 1 / Real.sqrt x := by
    rw [← intervalIntegral.integral_sub hp hc]
    apply intervalIntegral.integral_congr
    intro x hx
    rw [uIcc_of_le hY] at hx
    have hx0 : x ≠ 0 := by linarith [hx.1]
    field_simp
  rw [he, hm]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant5bc6bc3b9a79dea70cf50d044483967035966ad01f85a75b16a38f4285b21b73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant5bc6bc3b9a79dea70cf50d044483967035966ad01f85a75b16a38f4285b21b73.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28daff445024da5c4170e5a73031aaa8c71bd927` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
