/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib retains its upstream attribution and Apache-2.0 license. -/
import GRWTSK.Analysis.InnerProductSpace.DilationGram
import GRWTSK.Analysis.InnerProductSpace.FiniteWaveformOverlap
import GRWTSK.NumberTheory.Chebyshev.CorrelationPairing
import Mathlib.Tactic

/-!
# Geometric locations as finite translated waveforms

The location family may repeat: multiplicity is retained in its finite index
set. The common kernel is q(x-l), not an assertion that different profiles or
coefficients have equal values. The old logarithmic source is an exact
specialization. Positive-imaginary Fourier convention is inherited verbatim.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory
open scoped BigOperators

namespace GRWTSK.Analysis.InnerProductSpace.TranslatedWaveform

def atom (q : ℝ → ℝ) (l x : ℝ) : ℝ := q (x - l)

def synthesis {ι : Type*} (q : ℝ → ℝ) (S : Finset ι)
    (location weight : ι → ℝ) (x : ℝ) : ℝ :=
  ∑ i ∈ S, weight i * atom q (location i) x

def kernel (q : ℝ → ℝ) (l r : ℝ) : ℝ :=
  ∫ x : ℝ, q x * q (x - (l - r))

theorem kernel_eq_pairing (q : ℝ → ℝ) (l r : ℝ) :
    kernel q l r = ∫ x : ℝ, atom q l x * atom q r x := by
  unfold kernel atom
  rw [← integral_sub_right_eq_self
    (fun x : ℝ => q x * q (x - (l - r))) r]
  apply integral_congr_ae
  filter_upwards [] with x
  rw [show x - r - (l - r) = x - l by ring, mul_comm]

theorem atom_memLp {q : ℝ → ℝ} (hq : Measurable q)
    (h2 : Integrable (fun x : ℝ => q x ^ 2)) (l : ℝ) :
    MemLp (atom q l) 2 volume := by
  apply (memLp_two_iff_integrable_sq
    ((hq.comp (measurable_id.sub measurable_const)).aestronglyMeasurable)).2
  exact h2.comp_sub_right l

/-- Exact Gram identity for arbitrary real geometric locations and all ordered pairs. -/
theorem energy_eq_gram {ι : Type*} {q : ℝ → ℝ}
    (hq : Measurable q) (h2 : Integrable (fun x : ℝ => q x ^ 2))
    (S : Finset ι) (location weight : ι → ℝ) :
    (∫ x : ℝ, synthesis q S location weight x ^ 2) =
      ∑ i ∈ S, ∑ k ∈ S, (weight i * weight k) * kernel q (location i) (location k) := by
  have hm (i k : ι) : Integrable (fun x : ℝ =>
      (weight i * weight k) * (atom q (location i) x * atom q (location k) x)) :=
    ((atom_memLp hq h2 (location i)).integrable_mul
      (atom_memLp hq h2 (location k))).const_mul _
  have hs (x : ℝ) : synthesis q S location weight x ^ 2 =
      ∑ i ∈ S, ∑ k ∈ S,
        (weight i * weight k) * (atom q (location i) x * atom q (location k) x) := by
    simp only [synthesis, pow_two, Finset.sum_mul, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro k _
    ring
  simp_rw [hs]
  rw [integral_finsetSum S (fun i _ => integrable_finsetSum S (fun k _ => hm i k))]
  apply Finset.sum_congr rfl
  intro i _
  rw [integral_finsetSum S (fun k _ => hm i k)]
  apply Finset.sum_congr rfl
  intro k _
  rw [integral_const_mul, kernel_eq_pairing]

/-- Existing integer-labelled source is a specialization, not a new surrogate. -/
theorem synthesis_eq_weightedSource (A : ℝ) (S : Finset ℕ) (w : ℕ → ℝ) :
    synthesis
      (GRWTSK.ProofHorizon.CorkscrewChamberCap.ArithmeticSupplier.normalizedSource A)
      S (fun n => Real.log (n : ℝ)) w =
      GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceGram.weightedSource A S w := rfl

/-- Actual translation of the geometry intertwines with translation of the waveform. -/
theorem synthesis_translate {ι : Type*} (q : ℝ → ℝ) (S : Finset ι)
    (location weight : ι → ℝ) (d x : ℝ) :
    synthesis q S (fun i => location i + d) weight x =
      synthesis q S location weight (x - d) := by
  unfold synthesis atom
  apply Finset.sum_congr rfl
  intro i _
  congr 1
  congr 1
  ring

/-- Joint translation preserves full-line energy; it does not assert preservation
of a pairing against an observer held fixed in the original coordinates. -/
theorem translated_energy_eq {ι : Type*} (q : ℝ → ℝ) (S : Finset ι)
    (location weight : ι → ℝ) (d : ℝ) :
    (∫ x : ℝ, synthesis q S (fun i => location i + d) weight x ^ 2) =
      ∫ x : ℝ, synthesis q S location weight x ^ 2 := by
  simp_rw [synthesis_translate]
  exact integral_sub_right_eq_self (fun x : ℝ => synthesis q S location weight x ^ 2) d

open GRWTSK.RiemannHypothesis.SourcePairing

/-- Translation law for the repository's positive-imaginary Fourier convention. -/
theorem sourceFourier_atom (q : ℝ → ℝ) (l ξ : ℝ) :
    sourceFourier (atom q l) ξ =
      Complex.exp (Complex.I * (ξ : ℂ) * (l : ℂ)) * sourceFourier q ξ := by
  unfold sourceFourier atom
  calc
    _ = ∫ x : ℝ, (q (x + l - l) : ℂ) *
        Complex.exp (Complex.I * (ξ : ℂ) * ((x + l : ℝ) : ℂ)) :=
      (integral_add_right_eq_self
        (fun x : ℝ => (q (x - l) : ℂ) *
          Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))) l).symm
    _ = ∫ x : ℝ, Complex.exp (Complex.I * (ξ : ℂ) * (l : ℂ)) *
        ((q x : ℂ) * Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))) := by
      apply integral_congr_ae
      filter_upwards [] with x
      rw [add_sub_cancel_right, Complex.ofReal_add, mul_add, Complex.exp_add]
      ring
    _ = _ := integral_const_mul _ _

/-- Integrability is proved before exchanging the finite sum and Fourier integral. -/
theorem phase_atom_integrable {q : ℝ → ℝ} (hq : Integrable q) (l ξ : ℝ) :
    Integrable (fun x : ℝ => (atom q l x : ℂ) *
      Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))) := by
  have hi := hq.comp_sub_right l
  have hc : Continuous (fun x : ℝ =>
      Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))) := by fun_prop
  apply hi.norm.mono'
    (hi.ofReal.aestronglyMeasurable.mul hc.aestronglyMeasurable)
  filter_upwards [] with x
  simp [atom, norm_mul, Complex.norm_exp, Complex.mul_re, Complex.mul_im]

/-- The geometric waveform factors into the actual source transform and its
weighted exponential sum. Repeated locations and their coefficients survive. -/
theorem sourceFourier_synthesis {ι : Type*} {q : ℝ → ℝ} (hq : Integrable q)
    (S : Finset ι) (location weight : ι → ℝ) (ξ : ℝ) :
    sourceFourier (synthesis q S location weight) ξ =
      sourceFourier q ξ *
        ∑ i ∈ S, (weight i : ℂ) *
          Complex.exp (Complex.I * (ξ : ℂ) * (location i : ℂ)) := by
  have hi (i : ι) : Integrable (fun x : ℝ =>
      (weight i : ℂ) * ((atom q (location i) x : ℂ) *
        Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ)))) :=
    (phase_atom_integrable hq (location i) ξ).const_mul _
  change (∫ x : ℝ, ((synthesis q S location weight x : ℝ) : ℂ) *
    Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))) = _
  simp only [synthesis, Complex.ofReal_sum, Complex.ofReal_mul, Finset.sum_mul, mul_assoc]
  rw [integral_finsetSum S (fun i _ => hi i)]
  simp_rw [integral_const_mul]
  change (∑ i ∈ S, (weight i : ℂ) * sourceFourier (atom q (location i)) ξ) = _
  simp_rw [sourceFourier_atom]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  ring

end GRWTSK.Analysis.InnerProductSpace.TranslatedWaveform
