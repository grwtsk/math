/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.FunctionsOfAComplexVariable.FiniteSpectralProductMultiplicity
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ZeroCountCertificates
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDenseCertificateReduction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.ResonanceDeterminantCertification

/-!
# Analytic finite spectral divisors and conditional arithmetic return

RP-OC-08 consumes RP-OC-04's analytic unit transfer, RP-OC-06's positive-divisor
count consumer, and RP-OC-10's existing primitive-Dirichlet critical-strip target.
The divisor weights below are PROVED equal to analytic orders of the finite
model. An arbitrary root-location list does not supply that fact.

Source identification on each domain and coverage of every arithmetic zero are
explicit unsupplied premises. There is no arithmetic operator construction,
contour algorithm, Montel/Hurwitz limit theorem, completed-source adapter, or
proof of GRH here. No arithmetic term is deleted or replaced by a finite model.

The imported arithmetic coordinate is 1/2 + I*z, the negative of Program 8's
original spectral coordinate. Accordingly s=2 has anchor -3*I/2 in this module.
The finite product theorems allow either nonzero anchor sign. No evenness of a
nonreal-character source is assumed. Elaboration, kernel replay, axiom audit,
and independent review NOT_RUN. Coordination: math#1805, #1800, #1806, #1807.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology
open Filter Set

namespace GRWTSK.NumberTheory.SpectralProductDivisorReturn

open GRWTSK.FunctionsOfAComplexVariable.FiniteRealSpectrum
open GRWTSK.ZeroCountCertificates
open GRWTSK.ResonanceDeterminantReturn
open GRWTSK.NumberTheory.WeilDenseCertificateReduction

variable {ι : Type*} [Fintype ι]

/-- Distinct locations in the requested domain, with exact occurrence weights. -/
def spectralDivisor (λ : ι → ℝ) (U : Set ℂ) : FiniteDivisor := by
  classical
  exact {
    support := (rootSupport λ).filter (fun z => z ∈ U)
    multiplicity := occurrenceCount λ
    positive := by
      intro z hz
      exact (occurrenceCount_pos_iff λ z).mpr
        ((mem_rootSupport λ z).mp (Finset.mem_filter.mp hz).1) }

/-- Actual zero-set identification for the finite normalized product. -/
theorem divisor_identifies_model (λ : ι → ℝ) {β : ℝ}
    (hβ : β ≠ 0) (c : ℂ) (U : Set ℂ) :
    (spectralDivisor λ U).IdentifiesZeros (normalizedExpProduct λ β c) U := by
  classical
  intro z
  change z ∈ (rootSupport λ).filter (fun w => w ∈ U) ↔
    z ∈ U ∧ normalizedExpProduct λ β c z = 0
  rw [Finset.mem_filter, mem_rootSupport, normalizedExpProduct_zero_iff λ hβ]
  exact and_comm

/-- This additional theorem, absent from a bare IdentifiesZeros predicate,
identifies every weight with the analytic order of the actual model. -/
theorem divisor_multiplicity_eq_order (λ : ι → ℝ) {β : ℝ}
    (hβ : β ≠ 0) (c z : ℂ) (U : Set ℂ) :
    ((spectralDivisor λ U).multiplicity z : ℕ∞) =
      analyticOrderAt (normalizedExpProduct λ β c) z :=
  (analyticOrderAt_normalizedExpProduct λ hβ c z).symm

/-- The global multiplicity count is the index size, not the number of locations. -/
theorem divisor_totalCount_univ (λ : ι → ℝ) :
    (spectralDivisor λ Set.univ).totalCount = Fintype.card ι := by
  classical
  simpa [FiniteDivisor.totalCount, spectralDivisor] using sum_occurrenceCount λ

theorem divisor_allReal (λ : ι → ℝ) (U : Set ℂ) :
    (spectralDivisor λ U).AllReal := by
  classical
  intro z hz
  have hz' : z ∈ rootSupport λ := (Finset.mem_filter.mp hz).1
  obtain ⟨j, rfl⟩ := (mem_rootSupport λ z).mp hz'
  simp

/-- Reuse the existing RP-OC-06 count theorem rather than a new saturation notion. -/
theorem divisor_count_saturation (λ : ι → ℝ) (U : Set ℂ) :
    (spectralDivisor λ U).realCount = (spectralDivisor λ U).totalCount :=
  (spectralDivisor λ U).count_saturation_of_allReal (divisor_allReal λ U)

/-- Transfer locations through an exact source return on the same domain. -/
theorem divisor_identifies_source (λ : ι → ℝ) {β : ℝ}
    (hβ : β ≠ 0) (c : ℂ) {U : Set ℂ} {h F : ℂ → ℂ}
    (hret : ExactReturnOn U (normalizedExpProduct λ β c) h F) :
    (spectralDivisor λ U).IdentifiesZeros F U := by
  intro z
  constructor
  · intro hz
    obtain ⟨hzU, hzG⟩ := (divisor_identifies_model λ hβ c U z).mp hz
    exact ⟨hzU, (zero_iff_of_exactReturnOn hret hzU).mp hzG⟩
  · rintro ⟨hzU, hzF⟩
    exact (divisor_identifies_model λ hβ c U z).mpr
      ⟨hzU, (zero_iff_of_exactReturnOn hret hzU).mpr hzF⟩

/-- Supply the analytic-order hypothesis of the general RP-OC-04 transfer
 theorem with the actual orders just derived for the finite spectral model. -/
theorem divisor_returns_source_with_multiplicity (λ : ι → ℝ) {β : ℝ}
    (hβ : β ≠ 0) (c : ℂ) {U : Set ℂ} {h F : ℂ → ℂ}
    (hU : IsOpen U) (hret : ExactReturnOn U (normalizedExpProduct λ β c) h F)
    (he : ∀ z ∈ U, AnalyticAt ℂ (fun w => Complex.exp (h w)) z)
    (hF : ∀ z ∈ U, AnalyticAt ℂ F z) :
    (spectralDivisor λ U).IdentifiesZeros F U ∧
      ∀ z ∈ (spectralDivisor λ U).support,
        analyticOrderAt F z = ((spectralDivisor λ U).multiplicity z : ℕ∞) :=
  finiteDivisor_source_return (spectralDivisor λ U) hU hret he hF
    (divisor_identifies_model λ hβ c U)
    (fun z _ => (divisor_multiplicity_eq_order λ hβ c z U).symm)

/-- Consume the same source-identified divisor through RP-OC-06's saturation rule. -/
theorem source_reality_of_local_return (λ : ι → ℝ) {β : ℝ}
    (hβ : β ≠ 0) (c : ℂ) {U : Set ℂ} {h F : ℂ → ℂ}
    (hret : ExactReturnOn U (normalizedExpProduct λ β c) h F) :
    ∀ z ∈ U, F z = 0 → z.im = 0 :=
  (spectralDivisor λ U).source_reality_of_saturation F U
    (divisor_identifies_source λ hβ c hret) (divisor_count_saturation λ U)

/-- Explicit sign-convention check for the imported spectral coordinate. -/
theorem arithmeticCoordinate_negative_anchor :
    arithmeticCoordinate (anchor (-(3 / 2 : ℝ))) = 2 := by
  apply Complex.ext <;>
    norm_num [arithmeticCoordinate, anchor, Complex.mul_re, Complex.mul_im]

/-- Conditional return to the existing RP-OC-10 per-character target.
Coverage is over every open-strip zero at every height, not finitely many tests.
The exact local identities are unsupplied arithmetic premises, not new axioms. -/
theorem satisfiesGRH_of_local_spectral_returns
    (source : PrimitiveDirichletSource)
    (d : ℕ → ℕ) (λ : (n : ℕ) → Fin (d n) → ℝ)
    (β : ℕ → ℝ) (c : ℕ → ℂ) (U : ℕ → Set ℂ) (h : ℕ → ℂ → ℂ)
    (hβ : ∀ n, β n ≠ 0)
    (hret : ∀ n, ExactReturnOn (U n) (normalizedExpProduct (λ n) (β n) (c n))
      (h n) (fun z => source.lFunction (arithmeticCoordinate z)))
    (hcover : ∀ s : ℂ, 0 < s.re → s.re < 1 → source.lFunction s = 0 →
      ∃ n, spectralCoordinate s ∈ U n) : source.SatisfiesGRH := by
  intro s hleft hright hzero
  obtain ⟨n, hn⟩ := hcover s hleft hright hzero
  have hspec : source.lFunction (arithmeticCoordinate (spectralCoordinate s)) = 0 := by
    simpa only [arithmeticCoordinate_spectralCoordinate] using hzero
  have hreal := source_reality_of_local_return (λ n) (hβ n) (c n) (hret n)
    (spectralCoordinate s) hn hspec
  have hline := (arithmeticCoordinate_on_line_iff (spectralCoordinate s)).mpr hreal
  simpa only [arithmeticCoordinate_spectralCoordinate] using hline

end GRWTSK.NumberTheory.SpectralProductDivisorReturn
