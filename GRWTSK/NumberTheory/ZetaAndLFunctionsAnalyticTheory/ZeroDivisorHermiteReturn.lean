/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported Mathlib results retain their upstream authorship and license. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ZeroCountCertificates
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.HermiteRealRootCriterion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilNegativeWitness

/-!
# Complete finite-divisor Hermite return

MSC2020: 11M26, 11M41, 15A63, 30C15.

This extends ZCERT-1 sections 6--8 (research revision
b8c773f7847126518bcc20f3e37d1223af889cf4) with the finite Hermite converse.
The classical interpolation source is Nathanson, arXiv:1911.01745v2,
Lemmas 1--2 and Theorem 1, pp. 2--3. See the adjacent provenance records.

The cofinal equivalence now uses a proved-in-source finite sign criterion,
not an assumed Hermite converse. Positive natural weights may be repeated
analytic multiplicities, but identifying them with `analyticOrderAt` remains
an analytic supplier. `IdentifiesZeros` is exact support identification only.
Every zero must be covered. A finite prefix or a zero list assembled from
samples does not supply this premise. Boundary nonvanishing, pole corrections,
contour moments, and arithmetic matrix positivity are not proved here.

The final consumer reuses RP-OC-02's actual analytically continued Dirichlet
L-function target on the open critical strip. It neither includes trivial
zeros in an all-zero assertion nor claims boundary-zero exclusion.

Formal source candidate: elaboration, fresh kernel replay, transitive axiom
audit, independent review, and arithmetic contour certification NOT_RUN.
No GRH proof or novelty claim. Inspected base
5f66eb82a40921253664f53602851091ccd01d94. Coordination: math#1806.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators ComplexConjugate
open GRWTSK.HermiteMomentCertificates
open GRWTSK.HermiteRealRootCriterion

namespace GRWTSK.ZeroCountCertificates

namespace FiniteDivisor

/-- Positive multiplicities dominate the number of distinct support locations. -/
theorem support_card_le_totalCount (d : FiniteDivisor) :
    d.support.card ≤ d.totalCount := by
  classical
  calc
    d.support.card = ∑ z ∈ d.support, (1 : ℕ) := by simp
    _ ≤ ∑ z ∈ d.support, d.multiplicity z := by
      apply Finset.sum_le_sum
      intro z hz
      have h := d.positive z hz
      omega
    _ = d.totalCount := rfl

/-- The full multiplicity-sized real-part Hermite matrix. Its n-by-n entries
require powers up to 2n-2; support locations are not repeated as independent slots. -/
def divisorMatrix (d : FiniteDivisor) :
    Matrix (Fin d.totalCount) (Fin d.totalCount) ℝ :=
  supportMatrix d.support (fun z => (d.multiplicity z : ℝ)) d.totalCount

/-- All-real support iff Hermite nonnegativity, including central and repeated zeros. -/
theorem divisorMatrix_nonnegative_iff (d : FiniteDivisor)
    (hconj : ∀ z ∈ d.support, conj z ∈ d.support) :
    Nonnegative d.divisorMatrix ↔ d.AllReal := by
  exact nonnegative_iff_real_support d.support
    (fun z => (d.multiplicity z : ℝ)) d.totalCount d.support_card_le_totalCount hconj
      (fun z hz => by exact_mod_cast d.positive z hz)

/-- The moment and count-saturation routes have the same finite source conclusion. -/
theorem divisorMatrix_nonnegative_iff_saturation (d : FiniteDivisor)
    (hconj : ∀ z ∈ d.support, conj z ∈ d.support) :
    Nonnegative d.divisorMatrix ↔ d.realCount = d.totalCount :=
  (d.divisorMatrix_nonnegative_iff hconj).trans d.allReal_iff_count_saturation

/-- RP-OC-10's arbitrarily sharp lower bounds also cover singular Hermite matrices.
The quantifier over EVERY vector and EVERY accuracy is not a finite certificate. -/
theorem allReal_iff_dyadic_lower_bounds (d : FiniteDivisor)
    (hconj : ∀ z ∈ d.support, conj z ∈ d.support) :
    d.AllReal ↔ ∀ (v : Fin d.totalCount → ℝ) (k : ℕ),
      -((1 / 2 : ℝ) ^ k) ≤ quadraticValue d.divisorMatrix v := by
  constructor
  · intro hreal v k
    have hpos := (d.divisorMatrix_nonnegative_iff hconj).mpr hreal v
    exact le_trans (neg_nonpos.mpr (by positivity)) hpos
  · intro h
    apply (d.divisorMatrix_nonnegative_iff hconj).mp
    intro v
    exact GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation.nonneg_of_dyadic_lower_bounds
      (h v)

/-- Return matrix positivity to the actual function on the exact certified window. -/
theorem source_reality_of_hermite (d : FiniteDivisor)
    (f : ℂ → ℂ) (D : Set ℂ)
    (hsource : d.IdentifiesZeros f D)
    (hconj : ∀ z ∈ d.support, conj z ∈ d.support)
    (hpositive : Nonnegative d.divisorMatrix) :
    ∀ z ∈ D, f z = 0 → z.im = 0 := by
  exact d.source_reality_of_saturation f D hsource
    ((d.divisorMatrix_nonnegative_iff_saturation hconj).mp hpositive)

end FiniteDivisor

/-- Cofinal exact-source Hermite equivalence. The finite converse is supplied
by `divisorMatrix_nonnegative_iff`, rather than entered as a hypothesis. -/
theorem allZerosReal_iff_cofinal_hermite
    {κ : Type*} (F : κ → ℂ → ℂ) (D : κ → ℕ → Set ℂ)
    (divisor : κ → ℕ → FiniteDivisor)
    (hcover : ∀ c z, F c z = 0 → ∃ n, z ∈ D c n)
    (hsource : ∀ c n, (divisor c n).IdentifiesZeros (F c) (D c n))
    (hconj : ∀ c n z, z ∈ (divisor c n).support → conj z ∈ (divisor c n).support) :
    (∀ c z, F c z = 0 → z.im = 0) ↔
      ∀ c n, Nonnegative (divisor c n).divisorMatrix := by
  constructor
  · intro hreal c n
    apply ((divisor c n).divisorMatrix_nonnegative_iff (hconj c n)).mpr
    intro z hz
    exact hreal c z ((hsource c n z).mp hz).2
  · intro hpositive
    apply allZerosReal_of_cofinal_saturation F D divisor hcover hsource
    intro c n
    exact ((divisor c n).divisorMatrix_nonnegative_iff_saturation (hconj c n)).mp
      (hpositive c n)

/-- Source-specific consumer for the continued Dirichlet L-function in its
open critical strip. Zero coverage and the all-window signs remain explicit.
The theorem does not supply an arithmetic instance of either hypothesis. -/
theorem dirichlet_criticalStripStatement_of_hermite_certificates
    {N : ℕ} [NeZero N] (chi : DirichletCharacter ℂ N)
    (D : ℕ → Set ℂ) (divisor : ℕ → FiniteDivisor)
    (hsource : ∀ j, (divisor j).IdentifiesZeros
      (fun z => DirichletCharacter.LFunction chi (arithmeticCoordinate z)) (D j))
    (hcover : ∀ rho : ℂ, DirichletCharacter.LFunction chi rho = 0 →
      0 < rho.re → rho.re < 1 → ∃ j, spectralCoordinate rho ∈ D j)
    (hconj : ∀ j z, z ∈ (divisor j).support → conj z ∈ (divisor j).support)
    (hpositive : ∀ j, Nonnegative (divisor j).divisorMatrix) :
    GRWTSK.NumberTheory.WeilNegativeWitness.criticalStripStatement chi := by
  intro rho hzero hleft hright
  obtain ⟨j, hj⟩ := hcover rho hzero hleft hright
  have hz : DirichletCharacter.LFunction chi
      (arithmeticCoordinate (spectralCoordinate rho)) = 0 := by
    simpa only [arithmeticCoordinate_spectralCoordinate] using hzero
  have hreal := (divisor j).source_reality_of_hermite
    (fun z => DirichletCharacter.LFunction chi (arithmeticCoordinate z)) (D j)
    (hsource j) (hconj j) (hpositive j) (spectralCoordinate rho) hj hz
  have hline := (arithmeticCoordinate_on_line_iff (spectralCoordinate rho)).mpr hreal
  simpa only [arithmeticCoordinate_spectralCoordinate] using hline

end GRWTSK.ZeroCountCertificates
