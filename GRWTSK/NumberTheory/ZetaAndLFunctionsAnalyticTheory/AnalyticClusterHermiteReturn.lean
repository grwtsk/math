/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported mathematical results retain their upstream authorship and licenses. -/
import GRWTSK.FunctionsOfAComplexVariable.FiniteComplexDivisorCharts
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ZeroDivisorIntervalCertificates
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDenseCertificateReduction

/-!
# Analytic complex-cluster divisors and Hermite source return

RP-OC-05 consumes RP-OC-06's general Hermite converse and RP-OC-10's existing
primitive Dirichlet source/target. MSC2020: 11M26, 11M41, 30C15, 15A63.

Unlike the previous quadratic-only return and RP-OC-08's real finite spectra,
chart roots may be complex and have arbitrary positive, mixed multiplicities.
Every weight is derived as an actual analytic order of the same source, by an
exact neighborhood factorization. No candidate root list or matrix label can
supply this factorization. Its arithmetic construction remains an obligation.

The matrices are finite root-moment matrices, not the arithmetic Weil form.
Conjugation closure, universal zero coverage, and all required sign bounds are
explicit. The raw Dirichlet L-function is not asserted to be a real-type entire
completion. No conductor/gamma/pole normalization or boundary exclusion is hidden.
The unchanged target is the OPEN critical strip, including modulus one.

Elaboration, fresh kernel replay, transitive axiom audit, independent review and
arithmetic certificate production: NOT_RUN. No GRH proof or novelty claim.
Coordination: math#1809; dependencies reviewed in #1806, #1805, #1807, #1800.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.AnalyticClusterHermiteReturn

open GRWTSK.FunctionsOfAComplexVariable.FiniteComplexDivisorCharts
open GRWTSK.ZeroCountCertificates
open GRWTSK.HermiteMomentCertificates
open GRWTSK.NumberTheory.WeilDenseCertificateReduction
open GRWTSK.RationalHermiteSignCertificates
open GRWTSK.LinearAlgebra.RationalEnclosureCertificates
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- The existing finite-divisor representation, with zero weights off the chart support. -/
def chartDivisor {f : ℂ → ℂ} (C : Chart f) : FiniteDivisor where
  support := C.roots
  multiplicity := weightAt C.roots C.multiplicity
  positive := by
    intro z hz
    simpa [weightAt, hz] using C.multiplicity_pos z hz

/-- Exact support identification with the actual source in the same domain. -/
theorem chartDivisor_identifies {f : ℂ → ℂ} (C : Chart f) :
    (chartDivisor C).IdentifiesZeros f C.domain := by
  intro z
  constructor
  · intro hz
    have hzu := C.roots_mem_domain z hz
    exact ⟨hzu, (C.zero_iff hzu).mpr hz⟩
  · rintro ⟨hzu, hz⟩
    exact (C.zero_iff hzu).mp hz

/-- This supplies the analytic-weight premise missing from bare IdentifiesZeros. -/
theorem chartDivisor_order {f : ℂ → ℂ} (C : Chart f) {z : ℂ}
    (hz : z ∈ C.domain) :
    analyticOrderAt f z = ((chartDivisor C).multiplicity z : ℕ∞) :=
  C.source_order hz

/-- The finite count is now a sum of actual analytic orders, not guessed weights. -/
theorem chartDivisor_count {f : ℂ → ℂ} (C : Chart f) :
    (chartDivisor C).totalCount = ∑ z ∈ C.roots, analyticOrderNatAt f z := by
  change (∑ z ∈ C.roots, weightAt C.roots C.multiplicity z) = _
  apply Finset.sum_congr rfl
  intro z hz
  exact (C.source_orderNat (C.roots_mem_domain z hz)).symm

/-- General finite Hermite equivalence returned to the actual chart source.
Positive weights, sufficient matrix size and the Hermite converse are reused
from RP-OC-06; they are not additional assumptions in this theorem. -/
theorem chart_hermite_iff_source_reality {f : ℂ → ℂ} (C : Chart f)
    (hconj : ∀ z ∈ C.roots, conj z ∈ C.roots) :
    Nonnegative (chartDivisor C).divisorMatrix ↔
      ∀ z ∈ C.domain, f z = 0 → z.im = 0 := by
  constructor
  · intro hpos
    exact (chartDivisor C).source_reality_of_hermite f C.domain
      (chartDivisor_identifies C) hconj hpos
  · intro hreal
    apply ((chartDivisor C).divisorMatrix_nonnegative_iff hconj).mpr
    intro z hz
    have hzu := C.roots_mem_domain z hz
    exact hreal z hzu ((C.zero_iff hzu).mpr hz)

/-- One accepted zero-tolerance rational certificate proves reality of every
source zero in this chart. Singular repeated-root matrices remain admissible. -/
theorem chart_reality_of_checked_zeroTolerance {f : ℂ → ℂ} (C : Chart f)
    (hconj : ∀ z ∈ C.roots, conj z ∈ C.roots)
    (P : Packet (Fin (chartDivisor C).totalCount)) {r : ℕ}
    (cert : Certificate ℚ (Fin (chartDivisor C).totalCount) Empty Empty (Fin r))
    (hencloses : Encloses P (chartDivisor C).divisorMatrix)
    (hcheck : intervalCheck P cert = true) (htol : P.tolerance = 0) :
    ∀ z ∈ C.domain, f z = 0 → z.im = 0 := by
  have hreal := (chartDivisor C).allReal_of_checked_zeroTolerance
    hconj P cert hencloses hcheck htol
  intro z hzu hz
  exact hreal z ((chartDivisor_identifies C z).mpr ⟨hzu, hz⟩)

/-- An accepted negative rational certificate gives a nonreal zero of the actual
source with its positive ANALYTIC multiplicity, not just a nonreal model node.
No conjugation premise is needed for this negative direction. -/
theorem chart_nonreal_of_negativeCheck {f : ℂ → ℂ} (C : Chart f)
    (P : Packet (Fin (chartDivisor C).totalCount))
    (q : Fin (chartDivisor C).totalCount → ℚ)
    (hencloses : Encloses P (chartDivisor C).divisorMatrix)
    (hcheck : negativeCheck P q = true) :
    ∃ z : ℂ, z ∈ C.domain ∧ f z = 0 ∧ z.im ≠ 0 ∧
      analyticOrderAt f z = ((chartDivisor C).multiplicity z : ℕ∞) ∧
      0 < (chartDivisor C).multiplicity z := by
  obtain ⟨z, hzu, hz, hnonreal⟩ := (chartDivisor C).source_nonreal_of_negativeCheck
    f C.domain (chartDivisor_identifies C) P q hencloses hcheck
  have hs := (chartDivisor_identifies C z).mpr ⟨hzu, hz⟩
  exact ⟨z, hzu, hz, hnonreal, chartDivisor_order C hzu,
    (chartDivisor C).positive z hs⟩

/-- Exact arithmetic return for one primitive source, with universal zero coverage.
The family of source factorizations and Hermite signs is not constructed here. -/
theorem satisfiesGRH_of_analytic_cluster_cover
    (source : PrimitiveDirichletSource)
    (C : ℕ → Chart (fun z => source.lFunction (arithmeticCoordinate z)))
    (hcover : ∀ s : ℂ, 0 < s.re → s.re < 1 → source.lFunction s = 0 →
      ∃ n, spectralCoordinate s ∈ (C n).domain)
    (hconj : ∀ n z, z ∈ (C n).roots → conj z ∈ (C n).roots)
    (hpositive : ∀ n, Nonnegative (chartDivisor (C n)).divisorMatrix) :
    source.SatisfiesGRH := by
  intro s hleft hright hzero
  obtain ⟨n, hn⟩ := hcover s hleft hright hzero
  have hz : source.lFunction (arithmeticCoordinate (spectralCoordinate s)) = 0 := by
    simpa only [arithmeticCoordinate_spectralCoordinate] using hzero
  have hreal := ((chart_hermite_iff_source_reality (C n) (hconj n)).mp (hpositive n))
    (spectralCoordinate s) hn hz
  have hline := (arithmeticCoordinate_on_line_iff (spectralCoordinate s)).mpr hreal
  simpa only [arithmeticCoordinate_spectralCoordinate] using hline

/-- The existing all-primitive-character target, without a new GRH predicate. -/
theorem primitiveGRH_of_analytic_cluster_cover
    (C : (source : PrimitiveDirichletSource) →
      ℕ → Chart (fun z => source.lFunction (arithmeticCoordinate z)))
    (hcover : ∀ (source : PrimitiveDirichletSource) (s : ℂ),
      0 < s.re → s.re < 1 → source.lFunction s = 0 →
        ∃ n, spectralCoordinate s ∈ (C source n).domain)
    (hconj : ∀ source n z, z ∈ (C source n).roots → conj z ∈ (C source n).roots)
    (hpositive : ∀ source n, Nonnegative (chartDivisor (C source n)).divisorMatrix) :
    PrimitiveDirichletGRH := by
  intro source
  exact satisfiesGRH_of_analytic_cluster_cover source (C source)
    (hcover source) (hconj source) (hpositive source)

/-- Arbitrarily sharp lower bounds admit singular matrices at repeated roots.
ALL coefficient vectors and ALL accuracies remain quantified; finitely many
successful tests or a fixed negative tolerance cannot supply this premise. -/
theorem primitiveGRH_of_analytic_cluster_dyadic_bounds
    (C : (source : PrimitiveDirichletSource) →
      ℕ → Chart (fun z => source.lFunction (arithmeticCoordinate z)))
    (hcover : ∀ (source : PrimitiveDirichletSource) (s : ℂ),
      0 < s.re → s.re < 1 → source.lFunction s = 0 →
        ∃ n, spectralCoordinate s ∈ (C source n).domain)
    (hconj : ∀ source n z, z ∈ (C source n).roots → conj z ∈ (C source n).roots)
    (hlower : ∀ source n (v : Fin (chartDivisor (C source n)).totalCount → ℝ) (k : ℕ),
      -((1 / 2 : ℝ) ^ k) ≤ quadraticValue (chartDivisor (C source n)).divisorMatrix v) :
    PrimitiveDirichletGRH := by
  apply primitiveGRH_of_analytic_cluster_cover C hcover hconj
  intro source n
  apply ((chartDivisor (C source n)).divisorMatrix_nonnegative_iff (hconj source n)).mpr
  exact ((chartDivisor (C source n)).allReal_iff_dyadic_lower_bounds (hconj source n)).mpr
    (hlower source n)

end GRWTSK.NumberTheory.AnalyticClusterHermiteReturn
