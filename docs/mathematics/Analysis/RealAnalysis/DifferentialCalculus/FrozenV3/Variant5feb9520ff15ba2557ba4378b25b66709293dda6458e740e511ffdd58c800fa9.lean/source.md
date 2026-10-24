# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FrozenV3.Variant5feb9520ff15ba2557ba4378b25b66709293dda6458e740e511ffdd58c800fa9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `582264c66efd3c4c4f2d52f3d55eafabfe93491e` · SHA-256 `5feb9520ff15ba2557ba4378b25b66709293dda6458e740e511ffdd58c800fa9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePeanoBoundaryAtoms

/-!
# Native closed-endpoint traces of the actual Peano primitives

Ignored candidate only: the maintained source is frozen during full verification.
Global differentiation and closed-interval unique differentiation retain the
literal touching-support endpoint. No atomic arithmetic bound follows.

Research direction, source selection and evaluation: grwtsk contributors.
Formal construction: OpenAI Codex, from the attached ChatGPT Peano proof note.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePeanoEndpointTraces

open Set SourcePairing SourceBumpAutocorrelation SourceBumpPeano
open SourcePeanoProfileTransport SourcePositivePeanoPrimitive SourcePeanoBoundaryAtoms

private theorem overlapProfile_contDiff : ContDiff ℝ 3 overlapProfile := by
  unfold overlapProfile overlapP0
  fun_prop

private theorem overlapProfile_second_deriv_eq :
    deriv (deriv overlapProfile) = fun u =>
      u ^ 2 * (2 - u) ^ 7 * overlapP2 u / 315315 - (34 / 7) * overlapProfile u := by
  funext u
  have h := overlapProfile_second_deriv_certificate u
  linarith

private theorem overlapProfile_two : overlapProfile 2 = 0 := by
  norm_num [overlapProfile]

private theorem overlapProfile_deriv_two : deriv overlapProfile 2 = 0 := by
  rw [overlapProfile_deriv]
  norm_num

private theorem overlapProfile_second_deriv_two : deriv (deriv overlapProfile) 2 = 0 := by
  rw [overlapProfile_second_deriv_eq]
  simp [overlapProfile_two]

private theorem overlapProfile_third_deriv_two :
    deriv (deriv (deriv overlapProfile)) 2 = 0 := by
  have hF : Differentiable ℝ overlapProfile := overlapProfile_contDiff.differentiable (by norm_num)
  rw [overlapProfile_second_deriv_eq]
  unfold overlapP2
  simp (disch := fun_prop) only [deriv_fun_sub, deriv_div_const, deriv_fun_mul,
    deriv_fun_pow, deriv_const_sub_id, deriv_id'', deriv_fun_add,
    deriv_const_mul_id, deriv_const]
  rw [overlapProfile_deriv]
  norm_num

private theorem overlapProfile_third_deriv_zero :
    deriv (deriv (deriv overlapProfile)) 0 = 0 := by
  have hF : Differentiable ℝ overlapProfile := overlapProfile_contDiff.differentiable (by norm_num)
  rw [overlapProfile_second_deriv_eq]
  unfold overlapP2
  simp (disch := fun_prop) only [deriv_fun_sub, deriv_div_const, deriv_fun_mul,
    deriv_fun_pow, deriv_const_sub_id, deriv_id'', deriv_fun_add,
    deriv_const_mul_id, deriv_const]
  rw [overlapProfile_deriv]
  norm_num

private theorem profilePrimitive_hasDerivAt (A t : ℝ) :
    HasDerivAt
      (fun s => Real.exp (s / 2) / sourceNormalization A * peanoNumerator A (s / A))
      (Real.exp (t / 2) / sourceNormalization A *
        (deriv (deriv (deriv overlapProfile)) (t / A) / A ^ 3 -
          deriv (deriv overlapProfile) (t / A) / (2 * A ^ 2) -
          deriv overlapProfile (t / A) / (4 * A) + overlapProfile (t / A) / 8)) t := by
  have hF1 : ContDiff ℝ 2 (deriv overlapProfile) := overlapProfile_contDiff.deriv'
  have hF2 : ContDiff ℝ 1 (deriv (deriv overlapProfile)) := hF1.deriv'
  have hd0 := ((overlapProfile_contDiff.differentiable (by norm_num) (t / A)).hasDerivAt.comp t
    ((hasDerivAt_id t).div_const A)).div_const 4
  have hd1 := ((hF1.differentiable (by norm_num) (t / A)).hasDerivAt.comp t
    ((hasDerivAt_id t).div_const A)).div_const A
  have hd2 := ((hF2.differentiable (by norm_num) (t / A)).hasDerivAt.comp t
    ((hasDerivAt_id t).div_const A)).div_const (A ^ 2)
  have he := (((hasDerivAt_id t).div_const 2).exp).div_const (sourceNormalization A)
  have hp := he.mul ((hd2.sub hd1).add hd0)
  change HasDerivAt _ _ t
  unfold peanoNumerator
  exact hp.congr_deriv (by
    dsimp only [id_eq, Pi.add_apply, Pi.sub_apply, Function.comp_def]
    simp only [div_eq_mul_inv, mul_inv_rev]
    ring)

private theorem deriv_eq_on_closed {f g : ℝ → ℝ} {a b : ℝ} (hab : a < b)
    (hf : Differentiable ℝ f) (hg : Differentiable ℝ g) (he : EqOn f g (Icc a b)) :
    EqOn (deriv f) (deriv g) (Icc a b) := by
  intro x hx
  have hu := uniqueDiffOn_Icc hab x hx
  rw [← (hf x).hasDerivAt.hasDerivWithinAt.derivWithin hu,
    ← (hg x).hasDerivAt.hasDerivWithinAt.derivWithin hu]
  exact derivWithin_congr he (he hx)

/-- Closed-interval transport gives the actual first derivative, including both endpoints. -/
theorem sourcePeanoPrimitive_deriv_eq_profile {A t : ℝ} (hA : 0 < A)
    (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    deriv (sourcePeanoPrimitive A) t =
      Real.exp (t / 2) / sourceNormalization A *
        (deriv (deriv (deriv overlapProfile)) (t / A) / A ^ 3 -
          deriv (deriv overlapProfile) (t / A) / (2 * A ^ 2) -
          deriv overlapProfile (t / A) / (4 * A) + overlapProfile (t / A) / 8) := by
  have he := deriv_eq_on_closed (a := 0) (b := 2 * A) (by linarith)
    ((sourcePeanoPrimitive_contDiff_two hA).differentiable (by norm_num))
    (fun s => (profilePrimitive_hasDerivAt A s).differentiableAt)
    (fun s hs => sourcePeanoPrimitive_eq_profile hA hs.1 hs.2)
  rw [he ⟨ht0, ht2⟩, (profilePrimitive_hasDerivAt A t).deriv]

/-- The actual exponential primitive vanishes at the closed touching-support endpoint. -/
theorem sourcePeanoPrimitive_at_upper_endpoint {A : ℝ} (hA : 0 < A) :
    sourcePeanoPrimitive A (2 * A) = 0 := by
  rw [sourcePeanoPrimitive_eq_profile hA (by linarith) le_rfl]
  have harg : 2 * A / A = (2 : ℝ) := by field_simp
  rw [harg]
  simp [peanoNumerator, overlapProfile_two, overlapProfile_deriv_two,
    overlapProfile_second_deriv_two]

/-- Its ordinary global derivative also vanishes at the same closed endpoint. -/
theorem sourcePeanoPrimitive_deriv_at_upper_endpoint {A : ℝ} (hA : 0 < A) :
    deriv (sourcePeanoPrimitive A) (2 * A) = 0 := by
  rw [sourcePeanoPrimitive_deriv_eq_profile hA (by linarith) le_rfl]
  have harg : 2 * A / A = (2 : ℝ) := by field_simp
  rw [harg]
  simp [overlapProfile_two, overlapProfile_deriv_two,
    overlapProfile_second_deriv_two, overlapProfile_third_deriv_two]

/-- The exact boundary reflection changes the first derivative's sign. -/
theorem boundaryPeano_deriv {A : ℝ} (hA : 0 < A) (y : ℝ) :
    deriv (boundaryPeano A) y =
      -peanoScale A * deriv (sourcePeanoPrimitive A) (2 * A - y) := by
  have hd := ((sourcePeanoPrimitive_contDiff_two hA).differentiable
    (by norm_num) (2 * A - y)).hasDerivAt
  have hc : HasDerivAt (fun z : ℝ => 2 * A - z) (-1) y := by
    simpa only [id_eq] using (hasDerivAt_id y).const_sub (2 * A)
  have h := (hd.comp y hc).const_mul (peanoScale A)
  exact (h.congr_deriv (by ring)).deriv

/-- The actual boundary primitive has zero value at y=0. -/
theorem boundaryPeano_at_zero {A : ℝ} (hA : 0 < A) : boundaryPeano A 0 = 0 := by
  simp [boundaryPeano, sourcePeanoPrimitive_at_upper_endpoint hA]

/-- Its ordinary global first derivative has zero trace at y=0. -/
theorem boundaryPeano_deriv_at_zero {A : ℝ} (hA : 0 < A) :
    deriv (boundaryPeano A) 0 = 0 := by
  simp [boundaryPeano_deriv hA, sourcePeanoPrimitive_deriv_at_upper_endpoint hA]


/-- The actual center value retains the signed curvature energy and normalization. -/
theorem sourcePeanoPrimitive_at_zero {A : ℝ} (hA : 0 < A) :
    sourcePeanoPrimitive A 0 =
      ((65536 / 109395 : ℝ) / 4 - (131072 / 45045 : ℝ) / A ^ 2) /
        sourceNormalization A := by
  rw [sourcePeanoPrimitive_eq_profile hA le_rfl (by linarith)]
  simp only [zero_div, Real.exp_zero, one_div, peanoNumerator,
    overlapProfile_zero, overlapProfile_deriv_zero, overlapProfile_second_deriv_zero]
  ring

/-- The actual center slope retains the positive half-energy and mass contributions. -/
theorem sourcePeanoPrimitive_deriv_at_zero {A : ℝ} (hA : 0 < A) :
    deriv (sourcePeanoPrimitive A) 0 =
      ((131072 / 45045 : ℝ) / (2 * A ^ 2) + (65536 / 109395 : ℝ) / 8) /
        sourceNormalization A := by
  rw [sourcePeanoPrimitive_deriv_eq_profile hA le_rfl (by linarith)]
  simp only [zero_div, Real.exp_zero, one_div, overlapProfile_zero,
    overlapProfile_deriv_zero, overlapProfile_second_deriv_zero, overlapProfile_third_deriv_zero]
  ring

/-- The opposite boundary trace records its value rather than assigning another zero. -/
theorem boundaryPeano_at_upper_endpoint {A : ℝ} (hA : 0 < A) :
    boundaryPeano A (2 * A) = peanoScale A *
      (((65536 / 109395 : ℝ) / 4 - (131072 / 45045 : ℝ) / A ^ 2) /
        sourceNormalization A) := by
  simp [boundaryPeano, sourcePeanoPrimitive_at_zero hA]

/-- The opposite boundary slope retains the single reflection sign and exact scale. -/
theorem boundaryPeano_deriv_at_upper_endpoint {A : ℝ} (hA : 0 < A) :
    deriv (boundaryPeano A) (2 * A) = -peanoScale A *
      (((131072 / 45045 : ℝ) / (2 * A ^ 2) + (65536 / 109395 : ℝ) / 8) /
        sourceNormalization A) := by
  simp [boundaryPeano_deriv hA, sourcePeanoPrimitive_deriv_at_zero hA]

end FormalResearch.RiemannHypothesis.SourcePeanoEndpointTraces
```
