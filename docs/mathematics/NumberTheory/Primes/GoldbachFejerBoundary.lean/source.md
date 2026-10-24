# Complete source: GRWTSK.NumberTheory.Primes.GoldbachFejerBoundary

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7265b7603e55cda94078bfe8bb5b40298c75fdb5` · SHA-256 `59eb934c4de37d3907b7e170e2031eae510872c205dc96941f9b7b275c17fde7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachFejerCoreLowerBound
import GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularBoundary
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Sign-aware denominator boundary for the Goldbach Fejér lower bound

The exact symmetric progression major sum is regrouped by denominator.  Each
denominator block is its arithmetic coefficient times one real nonnegative
Fejér-window integral.

For a coefficient with nonnegative real part, the uniform core lower bound is
used.  For a coefficient with negative real part, the elementary window upper
bound is used, with the inequality direction reversed.  This gives one
unconditional finite lower envelope for the complete progression model without
pretending that all denominator coefficients are positive.

Composite-denominator formulas, comparison with the finite Euler product,
prime-progression estimates, minor-arc estimates, and Goldbach remain explicit
later obligations.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachFejerBoundary

open scoped BigOperators Real
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCoordinates
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion
open GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer
open GRWTSK.NumberTheory.Primes.GoldbachProgressionArcBoundary
open GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization
open GRWTSK.NumberTheory.Primes.GoldbachPrimeCoefficientBridge
open GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientBoundary
open GRWTSK.NumberTheory.Primes.GoldbachPeriodizedSingularWindow
open GRWTSK.NumberTheory.Primes.GoldbachCommonWindowBoundary
open GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularEvaluation
open GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularBoundary
open GRWTSK.NumberTheory.Primes.GoldbachFejerCoreLowerBound
open GRWTSK.NumberTheory.Primes.GoldbachArcDecomposition

noncomputable section

/-- Positive denominators selected by the rational cutoff. -/
def goldbachDenominatorRange (Q : ℕ) : Finset ℕ :=
  Finset.Icc 1 Q

/-- Exact membership in the denominator range. -/
theorem mem_goldbachDenominatorRange
    {Q q : ℕ} :
    q ∈ goldbachDenominatorRange Q ↔
      0 < q ∧ q ≤ Q := by
  simp [goldbachDenominatorRange, Nat.succ_le_iff]

/-- The rational-index fibre at a fixed indexed denominator maps exactly to
the reduced residue representatives for that denominator. -/
theorem goldbachRationalArcIndices_denominator_fiber
    {Q q : ℕ}
    (hq : q ∈ goldbachDenominatorRange Q) :
    ((goldbachRationalArcIndices Q).filter
      (fun aq => aq.2 = q)).image
        (fun aq => aq.1) =
      goldbachCoprimeResidues q := by
  ext a
  rcases mem_goldbachDenominatorRange.mp hq with
    ⟨hq0, hqQ⟩
  simp only [Finset.mem_image, Finset.mem_filter,
    goldbachCoprimeResidues, Finset.mem_filter,
    Finset.mem_range]
  constructor
  · rintro ⟨aq, ⟨haq, haqdim⟩, rfl⟩
    rcases aq with ⟨b, r⟩
    change r = q at haqdim
    change b < q ∧ q.Coprime b
    subst r
    rcases mem_goldbachRationalArcIndices.mp haq with
      ⟨hbQ, hqQ', hq0', hbq, hcop⟩
    exact ⟨hbq, hcop.symm⟩
  · rintro ⟨haq, hcop⟩
    refine ⟨(a, q), ?_, rfl⟩
    constructor
    · apply mem_goldbachRationalArcIndices.mpr
      exact
        ⟨(Nat.le_of_lt haq).trans hqQ,
          hqQ, hq0, haq, hcop.symm⟩
    · rfl

/-- One exact denominator block in the symmetric-window progression model. -/
def goldbachFejerDenominatorBlock
    (Q N q : ℕ) : ℂ :=
  goldbachProgressionDenominatorCoefficient q N *
    goldbachSymmetricRealSingularIntegral Q N q

/-- The complete symmetric progression major sum regrouped by denominator. -/
theorem goldbachProgressionSymmetricWindowMajorSum_eq_denominatorSum
    (Q N : ℕ) :
    goldbachProgressionSymmetricWindowMajorSum Q N =
      ∑ q ∈ goldbachDenominatorRange Q,
        goldbachFejerDenominatorBlock Q N q := by
  unfold goldbachProgressionSymmetricWindowMajorSum
    goldbachFejerDenominatorBlock
  calc
    (∑ aq ∈ goldbachRationalArcIndices Q,
        goldbachProgressionArithmeticCoefficient N aq.1 aq.2 *
          goldbachSymmetricRealSingularIntegral Q N aq.2) =
      ∑ q ∈ goldbachDenominatorRange Q,
        ∑ aq ∈ goldbachRationalArcIndices Q with aq.2 = q,
          goldbachProgressionArithmeticCoefficient N aq.1 aq.2 *
            goldbachSymmetricRealSingularIntegral Q N aq.2 := by
              symm
              exact Finset.sum_fiberwise_of_maps_to
                (s := goldbachRationalArcIndices Q) (t := goldbachDenominatorRange Q)
                (g := fun aq : ℕ × ℕ => aq.2)
                (fun aq haq => by
                  exact mem_goldbachDenominatorRange.mpr
                    ⟨(mem_goldbachRationalArcIndices.mp haq).2.2.1,
                      (mem_goldbachRationalArcIndices.mp haq).2.1⟩)
                (fun aq =>
                  goldbachProgressionArithmeticCoefficient
                      N aq.1 aq.2 *
                    goldbachSymmetricRealSingularIntegral
                      Q N aq.2)
    _ =
      ∑ q ∈ goldbachDenominatorRange Q,
        (∑ a ∈ goldbachCoprimeResidues q,
          goldbachProgressionArithmeticCoefficient N a q) *
            goldbachSymmetricRealSingularIntegral Q N q := by
              apply Finset.sum_congr rfl
              intro q hq
              rw [Finset.sum_mul]
              apply Finset.sum_bij (fun aq _haq => aq.1)
              · intro aq haq
                rw [← goldbachRationalArcIndices_denominator_fiber hq]
                exact Finset.mem_image.mpr ⟨aq, haq, rfl⟩
              · intro aq₁ h₁ aq₂ h₂ heq
                apply Prod.ext heq
                exact (Finset.mem_filter.mp h₁).2.trans (Finset.mem_filter.mp h₂).2.symm
              · intro a ha
                rw [← goldbachRationalArcIndices_denominator_fiber hq] at ha
                rcases Finset.mem_image.mp ha with ⟨aq, haq, rfl⟩
                exact ⟨aq, haq, rfl⟩
              · intro aq haq
                rw [(Finset.mem_filter.mp haq).2]
    _ =
      ∑ q ∈ goldbachDenominatorRange Q,
        goldbachProgressionDenominatorCoefficient q N *
          goldbachSymmetricRealSingularIntegral Q N q := by
            rfl

/-- The real part of a denominator block is the real coefficient times the
real singular-window value. -/
theorem goldbachFejerDenominatorBlock_re
    (Q N q : ℕ) :
    (goldbachFejerDenominatorBlock Q N q).re =
      (goldbachProgressionDenominatorCoefficient q N).re *
        (goldbachSymmetricRealSingularIntegral Q N q).re := by
  unfold goldbachFejerDenominatorBlock
  rw [Complex.mul_re,
    goldbachSymmetricRealSingularIntegral_im_zero,
    mul_zero, sub_zero]

/-- A sign-aware lower term for one denominator.  Positive real coefficients
use the core lower mass; negative real coefficients use the complete upper
envelope. -/
def goldbachFejerDenominatorLowerTerm
    (Q N q : ℕ) : ℝ :=
  let c :=
    (goldbachProgressionDenominatorCoefficient q N).re
  if 0 ≤ c then
    c * goldbachFejerCoreMain N
  else
    c * goldbachFejerWindowUpper Q N q

/-- The complete finite sign-aware lower envelope. -/
def goldbachFejerDenominatorLowerSum
    (Q N : ℕ) : ℝ :=
  ∑ q ∈ goldbachDenominatorRange Q,
    goldbachFejerDenominatorLowerTerm Q N q

/-- Each indexed denominator lower term is valid for its exact block. -/
theorem goldbachFejerDenominatorLowerTerm_le_block_re
    {Q N q : ℕ}
    (hq : q ∈ goldbachDenominatorRange Q) :
    goldbachFejerDenominatorLowerTerm Q N q ≤
      (goldbachFejerDenominatorBlock Q N q).re := by
  rcases mem_goldbachDenominatorRange.mp hq with
    ⟨hq0, hqQ⟩
  let c :=
    (goldbachProgressionDenominatorCoefficient q N).re
  have hlower :
      goldbachFejerCoreMain N ≤
        (goldbachSymmetricRealSingularIntegral Q N q).re :=
    goldbachFejerCoreMain_le_symmetric_re hq0 hqQ
  have hupper :
      (goldbachSymmetricRealSingularIntegral Q N q).re ≤
        goldbachFejerWindowUpper Q N q :=
    goldbachSymmetricRealSingularIntegral_re_le_upper Q N q
  rw [goldbachFejerDenominatorBlock_re]
  unfold goldbachFejerDenominatorLowerTerm
  change
    (if 0 ≤ c then
      c * goldbachFejerCoreMain N
    else
      c * goldbachFejerWindowUpper Q N q) ≤
      c * (goldbachSymmetricRealSingularIntegral Q N q).re
  by_cases hc : 0 ≤ c
  · rw [if_pos hc]
    exact mul_le_mul_of_nonneg_left hlower hc
  · rw [if_neg hc]
    exact mul_le_mul_of_nonpos_left hupper
      (le_of_not_ge hc)

/-- The sign-aware denominator sum is an unconditional lower bound for the
complete symmetric progression model. -/
theorem goldbachFejerDenominatorLowerSum_le_symmetricMajor_re
    (Q N : ℕ) :
    goldbachFejerDenominatorLowerSum Q N ≤
      (goldbachProgressionSymmetricWindowMajorSum Q N).re := by
  rw [goldbachProgressionSymmetricWindowMajorSum_eq_denominatorSum]
  unfold goldbachFejerDenominatorLowerSum
  simp only [Complex.re_sum]
  exact Finset.sum_le_sum fun q hq =>
    goldbachFejerDenominatorLowerTerm_le_block_re hq

/-- Under the inherited safe-scale theorem, the same lower envelope applies to
the actual exact factored progression major source. -/
theorem goldbachFejerDenominatorLowerSum_le_factoredMajor_re
    {Q N : ℕ}
    (hscale : 2 * Q ^ 2 < N + 1) :
    goldbachFejerDenominatorLowerSum Q N ≤
      (goldbachProgressionFactoredMajorSum Q N).re := by
  rw [goldbachProgressionFactoredMajorSum_eq_symmetricWindow hscale]
  exact goldbachFejerDenominatorLowerSum_le_symmetricMajor_re Q N

/-- Direct strict Goldbach consumer using the sign-aware Fejér denominator
lower source.  Prime-progression and signed minor errors remain explicit. -/
theorem goldbachCount_pos_of_fejerDenominator_progression_bounds
    {Q N : ℕ}
    (hscale : 2 * Q ^ 2 < N + 1)
    (residueError : (ℕ × ℕ) → ℕ → ℝ)
    (minorError : ℝ)
    (hnonneg : ∀ aq ∈ goldbachRationalArcIndices Q,
      ∀ r ∈ Finset.range aq.2,
        0 ≤ residueError aq r)
    (hresidue : ∀ aq ∈ goldbachRationalArcIndices Q,
      ∀ x ∈ goldbachClippedRationalArc Q N aq,
        ∀ r ∈ Finset.range aq.2,
          ‖goldbachResidueProgressionDiscrepancy
              N aq.2 r
                (goldbachRationalArcOffset aq.1 aq.2 x)‖ ≤
            residueError aq r)
    (hminor :
      ‖goldbachRationalMinorContribution Q N‖ ≤
        minorError)
    (hmargin :
      (∑ aq ∈ goldbachRationalArcIndices Q,
        goldbachProgressionArcErrorBudget
          Q N aq residueError) +
        minorError <
      goldbachFejerDenominatorLowerSum Q N) :
    0 < goldbachCount N := by
  apply goldbachCount_pos_of_symmetricWindow_progression_bounds
    hscale residueError
    (goldbachFejerDenominatorLowerSum Q N)
    minorError
  · exact
      goldbachFejerDenominatorLowerSum_le_symmetricMajor_re Q N
  · exact hnonneg
  · exact hresidue
  · exact hminor
  · exact hmargin

/-- Finite-local-main certificate.  A separately supplied comparison places
the inherited finite Euler-product scale below the explicit Fejér denominator
lower source; progression and signed minor errors are then charged once. -/
theorem goldbachCount_pos_of_fejerDenominator_coefficient_certificate
    {arcQ localQ N : ℕ}
    (harcScale : 2 * arcQ ^ 2 < N + 1)
    (hlocalQ : 2 ≤ localQ)
    (residueError : (ℕ × ℕ) → ℕ → ℝ)
    (scale modelError minorError : ℝ)
    (hcompare :
      goldbachCoefficientTruncatedMainScale
          localQ N scale - modelError ≤
        goldbachFejerDenominatorLowerSum arcQ N)
    (hnonneg : ∀ aq ∈ goldbachRationalArcIndices arcQ,
      ∀ r ∈ Finset.range aq.2,
        0 ≤ residueError aq r)
    (hresidue : ∀ aq ∈ goldbachRationalArcIndices arcQ,
      ∀ x ∈ goldbachClippedRationalArc arcQ N aq,
        ∀ r ∈ Finset.range aq.2,
          ‖goldbachResidueProgressionDiscrepancy
              N aq.2 r
                (goldbachRationalArcOffset aq.1 aq.2 x)‖ ≤
            residueError aq r)
    (hminor :
      ‖goldbachRationalMinorContribution arcQ N‖ ≤
        minorError)
    (hmargin :
      modelError +
          (∑ aq ∈ goldbachRationalArcIndices arcQ,
            goldbachProgressionArcErrorBudget
              arcQ N aq residueError) +
          minorError <
        goldbachCoefficientTruncatedMainScale
          localQ N scale) :
    0 < goldbachCount N := by
  apply goldbachCount_pos_of_symmetricWindow_coefficient_certificate
    harcScale hlocalQ residueError
    scale modelError minorError
  · exact hcompare.trans
      (goldbachFejerDenominatorLowerSum_le_symmetricMajor_re
        arcQ N)
  · exact hnonneg
  · exact hresidue
  · exact hminor
  · exact hmargin

end
end GRWTSK.NumberTheory.Primes.GoldbachFejerBoundary
```
