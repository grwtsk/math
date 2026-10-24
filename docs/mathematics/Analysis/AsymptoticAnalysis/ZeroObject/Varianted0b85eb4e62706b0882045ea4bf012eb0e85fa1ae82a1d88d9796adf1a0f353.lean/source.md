# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ZeroObject.Varianted0b85eb4e62706b0882045ea4bf012eb0e85fa1ae82a1d88d9796adf1a0f353

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2994d2bed9d51eaff0ce223228f80d3e56b42dc8` · SHA-256 `ed0b85eb4e62706b0882045ea4bf012eb0e85fa1ae82a1d88d9796adf1a0f353`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ZeroSymmetry
import Mathlib.Analysis.Analytic.Order

/-!
# Actual shifted zeta zeros with analytic multiplicity

This is the Z2.1 object of the source-bound B3.2 research family. The underlying
points are exactly the zeros of the actual Riemann zeta function in its open
critical strip. A dependent finite slot records every analytic multiplicity; the
whole family is not a finite `Multiset` or a sampled zero table.

Conjugation and functional-equation reflection preserve every occurrence slot.
The real-axis exclusion remains an explicit obligation. The paired alternating
numerator is positive and summable, but identifying its value with the actual
analytic continuation is a separate, unproved source-identity obligation.

No critical-line assumption, zero simplicity, zero-height cutoff, or later
zero-side formula is used here. The recovered source is RH-0010, section 5,
“Zero-side identity for these nonsmooth tests”.
-/
open Complex Filter
open scoped Topology ComplexConjugate
namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroObject

/-- The analytic identity principle excludes locally vanishing zeta germs away from the pole. -/
theorem zeta_order_finite {s : ℂ} (hs : s ≠ 1) :
    analyticOrderAt riemannZeta s ≠ ⊤ := by
  intro h
  have hz := analyticOn_riemannZeta.eqOn_zero_of_preconnected_of_eventuallyEq_zero
    (isConnected_compl_singleton_of_one_lt_rank (by simp) 1).isPreconnected
    (show s ∈ ({1}ᶜ : Set ℂ) from hs) (analyticOrderAt_eq_top.mp h)
  exact riemannZeta_ne_zero_of_one_le_re (s := 2) (by norm_num)
    (hz (by norm_num))

/-- A nontrivial zero has positive, finite analytic multiplicity; no simplicity is assumed. -/
theorem zeta_multiplicity_pos {s : ℂ}
    (hs : FormalResearch.RiemannHypothesis.NontrivialZetaZero s) :
    0 < analyticOrderNatAt riemannZeta s := by
  have hn : analyticOrderAt riemannZeta s ≠ 0 :=
    (analyticOn_riemannZeta s hs.2.2).analyticOrderAt_ne_zero.mpr hs.1
  have hf := zeta_order_finite hs.2.2
  have heq := Nat.cast_analyticOrderNatAt hf
  exact Nat.pos_of_ne_zero (fun h ↦ hn (by simpa [h] using heq.symm))

/-- Conjugating both source and target preserves complex analyticity. -/
theorem analytic_conj_conj {f : ℂ → ℂ} {s : ℂ} (hf : AnalyticAt ℂ f s) :
    AnalyticAt ℂ (fun z ↦ conj (f (conj z))) (conj s) := by
  apply analyticAt_iff_eventually_differentiableAt.mpr
  have ht : Tendsto conj (𝓝 (conj s)) (𝓝 s) := by
    simpa using (continuous_conj.tendsto (conj s))
  filter_upwards [ht.eventually (analyticAt_iff_eventually_differentiableAt.mp hf)] with z hz
  exact differentiableAt_conj_conj_iff.mpr hz

/-- Conjugation transports the exact finite local zero order. -/
theorem order_conj_conj {f : ℂ → ℂ} {s : ℂ} (hf : AnalyticAt ℂ f s)
    (hfinite : analyticOrderAt f s ≠ ⊤) :
    analyticOrderAt (fun z ↦ conj (f (conj z))) (conj s) = analyticOrderAt f s := by
  obtain ⟨n, hn⟩ := ENat.ne_top_iff_exists.mp hfinite
  rw [← hn]
  apply (analytic_conj_conj hf).analyticOrderAt_eq_natCast.mpr
  obtain ⟨g, hga, hgn, heq⟩ := hf.analyticOrderAt_eq_natCast.mp hn.symm
  refine ⟨fun z ↦ conj (g (conj z)), analytic_conj_conj hga, ?_, ?_⟩
  · simpa using hgn
  · have ht : Tendsto conj (𝓝 (conj s)) (𝓝 s) := by
      simpa using (continuous_conj.tendsto (conj s))
    filter_upwards [ht.eventually heq] with z hz
    simp only [hz, smul_eq_mul, map_mul, map_pow, map_sub, conj_conj]

/-- Reality of the actual zeta function preserves analytic multiplicity under conjugation. -/
theorem zeta_order_conj {s : ℂ} (hs : s ≠ 1) :
    analyticOrderAt riemannZeta (conj s) = analyticOrderAt riemannZeta s := by
  simpa using order_conj_conj (analyticOn_riemannZeta s hs) (zeta_order_finite hs)

/-- The completed function is analytic away from its two explicit poles. -/
theorem completed_analytic {s : ℂ} (h0 : s ≠ 0) (h1 : s ≠ 1) :
    AnalyticAt ℂ completedRiemannZeta s := by
  simp only [show completedRiemannZeta = fun z ↦ completedRiemannZeta₀ z - 1 / z -
    1 / (1 - z) from funext completedRiemannZeta_eq]
  apply AnalyticAt.sub
  · exact (differentiable_completedZeta₀.analyticAt s).sub
      (analyticAt_const.div analyticAt_id h0)
  · exact analyticAt_const.div (analyticAt_const.sub analyticAt_id) (sub_ne_zero.mpr h1.symm)

/-- The nonvanishing analytic inverse Gamma factor preserves the zero order. -/
theorem zeta_order_completed {s : ℂ}
    (hs : FormalResearch.RiemannHypothesis.NontrivialZetaZero s) :
    analyticOrderAt riemannZeta s = analyticOrderAt completedRiemannZeta s := by
  have heq : riemannZeta =ᶠ[𝓝 s] fun z ↦ (Gammaℝ z)⁻¹ * completedRiemannZeta z := by
    filter_upwards [eventually_ne_nhds hs.ne_zero] with z hz
    simp [riemannZeta_def_of_ne_zero hz, div_eq_mul_inv, mul_comm]
  rw [analyticOrderAt_congr heq]
  change analyticOrderAt ((fun z ↦ (Gammaℝ z)⁻¹) * completedRiemannZeta) s = _
  rw [analyticOrderAt_mul
    (differentiable_Gammaℝ_inv.analyticAt s) (completed_analytic hs.ne_zero hs.2.2),
    (differentiable_Gammaℝ_inv.analyticAt s).analyticOrderAt_eq_zero.mpr
      (inv_ne_zero hs.gamma_real_ne_zero), zero_add]

/-- The completed functional equation preserves every zero multiplicity under reflection. -/
theorem zeta_order_reflect {s : ℂ}
    (hs : FormalResearch.RiemannHypothesis.NontrivialZetaZero s) :
    analyticOrderAt riemannZeta (1 - s) = analyticOrderAt riemannZeta s := by
  change analyticOrderAt riemannZeta
    (FormalResearch.RiemannHypothesis.zeroReflect s) = _
  rw [zeta_order_completed hs, zeta_order_completed hs.reflect]
  change analyticOrderAt completedRiemannZeta (1 - s) = _
  have h := analyticOrderAt_comp_of_deriv_ne_zero
    (f := completedRiemannZeta) (g := fun z : ℂ ↦ 1-z) (z₀ := s)
    (by fun_prop) (by simp)
  simpa [Function.comp_def, completedRiemannZeta_one_sub] using h.symm

noncomputable section

/-- Actual zeta zeros in the open critical strip; the pole and trivial zeros are excluded by
the predicate. -/
def ZeroPoint := {ρ : ℂ // riemannZeta ρ = 0 ∧ 0 < ρ.re ∧ ρ.re < 1}

/-- The strip predicate implies the exact nontrivial-zero exclusions of the existing RH
source. -/
theorem point_nontrivial (ρ : ZeroPoint) :
    FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ.val := by
  refine ⟨ρ.property.1, ?_, ?_⟩
  · rintro ⟨n, hn⟩
    have hr := congrArg Complex.re hn
    have hn0 : (0 : ℝ) ≤ n := Nat.cast_nonneg n
    simp at hr
    linarith [ρ.property.2.1]
  · intro h
    have hlt := ρ.property.2.2
    rw [h] at hlt
    norm_num at hlt

/-- The natural analytic zero order. Finiteness and positivity are proved separately below. -/
def multiplicity (ρ : ZeroPoint) : ℕ := analyticOrderNatAt riemannZeta ρ.val

/-- Every point contributes at least one occurrence slot. -/
theorem multiplicity_positive (ρ : ZeroPoint) : 0 < multiplicity ρ :=
  zeta_multiplicity_pos (point_nontrivial ρ)

/-- The possibly infinite family with exactly one slot for each analytic multiplicity. -/
def ZeroOccurrence := Σ ρ : ZeroPoint, Fin (multiplicity ρ)

/-- Conjugation on actual zero points. -/
def conjugatePoint (ρ : ZeroPoint) : ZeroPoint :=
  ⟨conj ρ.val, by simp [ρ.property.1], by simpa using ρ.property.2⟩

/-- Functional-equation reflection on actual zero points. -/
def reflectPoint (ρ : ZeroPoint) : ZeroPoint :=
  ⟨1 - ρ.val, (point_nontrivial ρ).reflect.1, by
    simp only [sub_re, one_re]
    constructor <;> linarith [ρ.property.2.1, ρ.property.2.2]⟩

/-- Conjugation is an exact involution on the source zero predicate. -/
theorem conjugatePoint_involutive : Function.Involutive conjugatePoint := by
  intro ρ
  apply Subtype.ext
  simp [conjugatePoint]

/-- Reflection is an exact involution on the source zero predicate. -/
theorem reflectPoint_involutive : Function.Involutive reflectPoint := by
  intro ρ
  apply Subtype.ext
  simp [reflectPoint]

/-- Conjugation preserves the number of occurrence slots. -/
theorem multiplicity_conjugate (ρ : ZeroPoint) :
    multiplicity (conjugatePoint ρ) = multiplicity ρ := by
  exact congrArg ENat.toNat (zeta_order_conj (point_nontrivial ρ).2.2)

/-- Reflection preserves the number of occurrence slots. -/
theorem multiplicity_reflect (ρ : ZeroPoint) :
    multiplicity (reflectPoint ρ) = multiplicity ρ := by
  exact congrArg ENat.toNat (zeta_order_reflect (point_nontrivial ρ))

/-- Conjugation keeps the same finite multiplicity slot. -/
def conjugateOccurrence (o : ZeroOccurrence) : ZeroOccurrence :=
  ⟨conjugatePoint o.1, ⟨o.2.val, by simp [multiplicity_conjugate]⟩⟩

/-- Reflection keeps the same finite multiplicity slot. -/
def reflectOccurrence (o : ZeroOccurrence) : ZeroOccurrence :=
  ⟨reflectPoint o.1, ⟨o.2.val, by simp [multiplicity_reflect]⟩⟩

/-- Applying occurrence conjugation twice recovers the exact occurrence. -/
theorem conjugateOccurrence_involutive : Function.Involutive conjugateOccurrence := by
  rintro ⟨ρ, i⟩
  apply Sigma.ext (conjugatePoint_involutive ρ)
  apply (Fin.heq_ext_iff (by simp [conjugateOccurrence, multiplicity_conjugate])).mpr
  rfl

/-- Applying occurrence reflection twice recovers the exact occurrence. -/
theorem reflectOccurrence_involutive : Function.Involutive reflectOccurrence := by
  rintro ⟨ρ, i⟩
  apply Sigma.ext (reflectPoint_involutive ρ)
  apply (Fin.heq_ext_iff (by simp [reflectOccurrence, multiplicity_reflect])).mpr
  rfl

/-- A bijection of the entire multiplicity-indexed family, without enumerating it. -/
def conjugateEquiv : ZeroOccurrence ≃ ZeroOccurrence :=
  conjugateOccurrence_involutive.toPerm conjugateOccurrence

/-- The functional-equation bijection of the entire multiplicity-indexed family. -/
def reflectEquiv : ZeroOccurrence ≃ ZeroOccurrence :=
  reflectOccurrence_involutive.toPerm reflectOccurrence

/-- The manuscript coordinate is rho minus one half, rather than rho itself. -/
def shiftedValue (o : ZeroOccurrence) : ℂ := o.1.val - 1 / 2

/-- Conjugation acts on shifted values without changing the shift convention. -/
theorem shiftedValue_conjugate (o : ZeroOccurrence) :
    shiftedValue (conjugateOccurrence o) = conj (shiftedValue o) := by
  simp [shiftedValue, conjugateOccurrence, conjugatePoint, map_ofNat]

/-- Functional-equation reflection acts by negation after the exact half shift. -/
theorem shiftedValue_reflect (o : ZeroOccurrence) :
    shiftedValue (reflectOccurrence o) = -shiftedValue o := by
  simp only [shiftedValue, reflectOccurrence, reflectPoint]
  ring

/-- The shifted source points lie in the open half-width strip. -/
theorem shiftedValue_strip (o : ZeroOccurrence) :
    -(1 / 2 : ℝ) < (shiftedValue o).re ∧ (shiftedValue o).re < 1 / 2 := by
  simp only [shiftedValue, sub_re, div_ofNat_re, one_re]
  constructor <;> linarith [o.1.property.2.1, o.1.property.2.2]

/-- The right endpoint is excluded by the source strip predicate. -/
theorem shiftedValue_ne_half (o : ZeroOccurrence) : shiftedValue o ≠ 1 / 2 := by
  intro h
  have hh := congrArg Complex.re h
  have hs := (shiftedValue_strip o).2
  norm_num at hh
  linarith

/-- The left endpoint is excluded by the source strip predicate. -/
theorem shiftedValue_ne_neg_half (o : ZeroOccurrence) : shiftedValue o ≠ -(1 / 2) := by
  intro h
  have hh := congrArg Complex.re h
  have hs := (shiftedValue_strip o).1
  norm_num at hh
  linarith

/-- The exact remaining real-axis theorem. This declaration is a proposition, not an axiom. -/
def RealZeroExclusionObligation : Prop :=
  ∀ s : ℝ, 0 < s → s < 1 → riemannZeta (s : ℂ) ≠ 0

/-- No real shifted zeros, conditional on the explicitly retained real-axis theorem. -/
theorem shiftedValue_im_ne_zero_of_realZeroExclusion
    (h : RealZeroExclusionObligation) (o : ZeroOccurrence) :
    (shiftedValue o).im ≠ 0 := by
  intro hz
  have hi : o.1.val.im = 0 := by simpa [shiftedValue] using hz
  have he : (o.1.val.re : ℂ) = o.1.val := by
    apply Complex.ext <;> simp [hi]
  apply h o.1.val.re o.1.property.2.1 o.1.property.2.2
  simpa [he] using o.1.property.1

/-- The later denominator nonzero condition retains its still-open analytic premise. -/
theorem shiftedValue_ne_zero_of_realZeroExclusion
    (h : RealZeroExclusionObligation) (o : ZeroOccurrence) :
    shiftedValue o ≠ 0 := by
  intro hz
  exact shiftedValue_im_ne_zero_of_realZeroExclusion h o (by simp [hz])

/-- The complete admitted object structure, including finite orders and multiplicity
preserving symmetries. -/
def MultiplicityAndSymmetryObligation : Prop :=
  (∀ ρ : ZeroPoint,
    analyticOrderAt riemannZeta ρ.val ≠ ⊤ ∧ 0 < multiplicity ρ) ∧
  (∀ ρ : ZeroPoint,
    multiplicity (conjugatePoint ρ) = multiplicity ρ ∧
      multiplicity (reflectPoint ρ) = multiplicity ρ) ∧
  Function.Involutive conjugateOccurrence ∧
  Function.Involutive reflectOccurrence ∧
  (∀ o : ZeroOccurrence,
    (conjugateOccurrence o).2.val = o.2.val ∧
    (reflectOccurrence o).2.val = o.2.val ∧
    shiftedValue (conjugateOccurrence o) = conj (shiftedValue o) ∧
    shiftedValue (reflectOccurrence o) = -shiftedValue o ∧
    (-(1 / 2 : ℝ) < (shiftedValue o).re ∧ (shiftedValue o).re < 1 / 2) ∧
    shiftedValue o ≠ 1 / 2 ∧ shiftedValue o ≠ -(1 / 2))

/-- The source object and both symmetries check independently of real-axis exclusion. -/
theorem multiplicity_and_symmetry : MultiplicityAndSymmetryObligation := by
  refine ⟨fun ρ ↦ ⟨zeta_order_finite (point_nontrivial ρ).2.2,
      multiplicity_positive ρ⟩,
    fun ρ ↦ ⟨multiplicity_conjugate ρ, multiplicity_reflect ρ⟩,
    conjugateOccurrence_involutive, reflectOccurrence_involutive, ?_⟩
  intro o
  exact ⟨rfl, rfl, shiftedValue_conjugate o, shiftedValue_reflect o,
    shiftedValue_strip o, shiftedValue_ne_half o, shiftedValue_ne_neg_half o⟩

/-- Whole Z2.1 admission also requires the separately stated real-axis exclusion. -/
def ZeroObjectAdmissionObligation : Prop :=
  MultiplicityAndSymmetryObligation ∧ RealZeroExclusionObligation

/-- The proved object structure discharges admission only when the remaining theorem is
supplied. -/
theorem admission_of_realZeroExclusion (h : RealZeroExclusionObligation) :
    ZeroObjectAdmissionObligation :=
  ⟨multiplicity_and_symmetry, h⟩

/-- Consecutive pairs of the source alternating numerator, beginning with indices one and two. -/
def pairedEtaTerm (s : ℝ) (n : ℕ) : ℝ :=
  (2 * n + 1 : ℝ) ^ (-s) - (2 * n + 2 : ℝ) ^ (-s)

/-- Each consecutive pair is strictly positive for a real positive exponent parameter. -/
theorem pairedEtaTerm_pos {s : ℝ} (hs : 0 < s) (n : ℕ) :
    0 < pairedEtaTerm s n := by
  unfold pairedEtaTerm
  exact sub_pos.mpr (Real.rpow_lt_rpow_of_neg (by positivity) (by linarith) (by linarith))

/-- The nonnegative paired series has partial sums bounded by one and is genuinely summable. -/
theorem pairedEta_summable {s : ℝ} (hs : 0 < s) : Summable (pairedEtaTerm s) := by
  have hbound (N : ℕ) :
      (∑ n ∈ Finset.range N, pairedEtaTerm s n) +
        (2 * N + 1 : ℝ) ^ (-s) ≤ 1 := by
    induction N with
    | zero => simp
    | succ N ih =>
      rw [Finset.sum_range_succ]
      have hle : (2 * (N + 1) + 1 : ℝ) ^ (-s) ≤ (2 * N + 2 : ℝ) ^ (-s) :=
        Real.rpow_le_rpow_of_nonpos (by positivity) (by linarith) (by linarith)
      simp only [Nat.cast_add, Nat.cast_one] at *
      simp only [pairedEtaTerm] at *
      linarith
  apply summable_of_sum_range_le (fun n ↦ (pairedEtaTerm_pos hs n).le) (c := 1)
  intro N
  have hp : 0 ≤ (2 * N + 1 : ℝ) ^ (-s) := Real.rpow_nonneg (by positivity) _
  linarith [hbound N]

/-- An exact positive, summable paired numerator for every real s greater than zero. -/
def PairedEtaPositivitySummabilityObligation : Prop :=
  ∀ s : ℝ, 0 < s → (∀ n : ℕ, 0 < pairedEtaTerm s n) ∧ Summable (pairedEtaTerm s)

/-- This numerator property is unconditional and concerns the infinite paired series. -/
theorem paired_eta_positive_summable : PairedEtaPositivitySummabilityObligation := by
  intro s hs
  exact ⟨pairedEtaTerm_pos hs, pairedEta_summable hs⟩

/-- Missing source identification with the actual zeta continuation on the open real strip.
This is not obtained from positivity or convergence of the paired numerator alone. -/
def PairedEtaIdentityObligation : Prop :=
  ∀ s : ℝ, 0 < s → s < 1 → HasSum (pairedEtaTerm s)
    ((1 - (2 : ℝ) ^ (1 - s)) * (riemannZeta (s : ℂ)).re)

/-- The actual source identity would exclude real zeros because its paired numerator is
positive. -/
theorem real_zero_exclusion_of_paired_eta (h : PairedEtaIdentityObligation) :
    RealZeroExclusionObligation := by
  intro s hs0 hs1 hz
  have hsum := h s hs0 hs1
  have hp := hsum.summable.tsum_pos (fun n ↦ (pairedEtaTerm_pos hs0 n).le) 0
    (pairedEtaTerm_pos hs0 0)
  rw [hsum.tsum_eq, hz] at hp
  norm_num at hp

/-- A conditional reduction; the source-identity premise is part of the proposition. -/
def PairedEtaReductionObligation : Prop :=
  PairedEtaIdentityObligation → RealZeroExclusionObligation

/-- Checked conditional reduction without an inhabitant of the missing source identity. -/
theorem paired_eta_reduction : PairedEtaReductionObligation :=
  real_zero_exclusion_of_paired_eta

end
end ZeroObject
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
