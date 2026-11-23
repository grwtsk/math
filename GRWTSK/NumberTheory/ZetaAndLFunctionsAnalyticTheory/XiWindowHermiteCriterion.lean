import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiContourTraceForm
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CanonicalZeroDivisor

/-! The finite Hermite tests on the actual nontrivial zeta divisor, with its
analytic multiplicities. The residue representation of these tests is analytic. -/

namespace GRWTSK.XiWindowHermiteCriterion

open GRWTSK.RiemannHypothesis GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.XiContourTraceForm
open scoped ComplexConjugate Polynomial
noncomputable section

def ordinate (s : ℂ) : ℂ := ⟨s.im, 1/2-s.re⟩

def argument (z : ℂ) : ℂ := ⟨1/2-z.im, z.re⟩

theorem argument_ordinate (s : ℂ) : argument (ordinate s) = s := by
  apply Complex.ext <;> simp [argument, ordinate]

def window (T : ℝ) : Finset ℂ := (heightHead T).image (fun p => ordinate p.1)

def weight (z : ℂ) : ℝ := (analyticOrderNatAt riemannZeta (argument z) : ℝ)

theorem weight_pos {T : ℝ} {z : ℂ} (hz : z ∈ window T) : 0 < weight z := by
  obtain ⟨p, _, rfl⟩ := Finset.mem_image.mp hz
  unfold weight
  rw [argument_ordinate]
  exact_mod_cast multiplicity_pos p

theorem window_conj {T : ℝ} {z : ℂ} (hz : z ∈ window T) : conj z ∈ window T := by
  obtain ⟨p, hp, rfl⟩ := Finset.mem_image.mp hz
  let q : ZeroPoint := ⟨criticalReflection p.1, p.2.critical_reflection⟩
  apply Finset.mem_image.mpr
  refine ⟨q, ?_, ?_⟩
  · rw [mem_heightHead] at hp ⊢
    simpa [q, height, criticalReflection, zeroReflect, zeroConjugate] using hp
  · apply Complex.ext <;> simp [q, ordinate, criticalReflection, zeroReflect, zeroConjugate] <;> ring

theorem weighted_windows_iff_RH :
    (∀ (T : ℝ) (p : ℂ[X]), p.degree < ((window T).card : WithBot ℕ) →
      0 ≤ traceForm (window T) weight p) ↔ _root_.RiemannHypothesis := by
  constructor
  · intro h s hs htr hpole
    let q : ZeroPoint := ⟨s, hs, htr, hpole⟩
    have hm : ordinate s ∈ window (height q) :=
      Finset.mem_image.mpr ⟨q, point_mem_own_head q, rfl⟩
    have hr := (hermite_nonneg_iff (w := weight) (fun _ hz => weight_pos hz)
      (fun _ hz => window_conj hz)).mp (h (height q)) _ hm
    have hi := congrArg Complex.im hr
    simp [ordinate] at hi
    linarith
  · intro h T
    apply (hermite_nonneg_iff (fun _ hz => weight_pos hz) (fun _ hz => window_conj hz)).mpr
    intro z hz
    obtain ⟨q, _, rfl⟩ := Finset.mem_image.mp hz
    have hq := h q.1 q.2.1 q.2.2.1 q.2.2.2
    apply Complex.ext <;> simp [ordinate, hq]

end
end GRWTSK.XiWindowHermiteCriterion
