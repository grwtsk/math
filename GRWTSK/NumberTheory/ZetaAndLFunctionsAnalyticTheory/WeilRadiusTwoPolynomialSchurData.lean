/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Source: Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1 (3.19)--(3.20). The exact signed prime inventory,
outward weights and logarithm source are imported, not replaced.
SOURCE_PROOF_CANDIDATE. COMPILATION_NOT_RUN. FRESH_KERNEL_NOT_RUN.
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. INDEPENDENT_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPrimeObservations
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPrimePrices
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.RationalRealBounds
import Mathlib

/-!
# Exact 512-cell polynomial Schur price for the actual radius-two prime source

Let h(t)=1+11*t^2/50. Every original prime label q=2,...,54 has
logarithm bounds l(q)<=log(q)<=u(q), dyadic denominator 2^40.
These endpoints are compared below against the maintained
WeilRadiusTwoPrimeObservations.logBounds source, not numerical samples.

For t in [a,b]=[j/256,(j+1)/256] and r=log(q):
  t+r in [-2,2] implies a+l(q)<=2, and h(t+r)<=h(b+u(q)).
  t-r in [-2,2] implies b-l(q)>=-2, and h(t-r) is bounded
  by the larger value at a-u(q) or b-l(q).
Also h(t)>=h(a)>0. Source primeWeight(q)<=weightNumerator(q)/10000.
The two orientations can therefore be paid by rowNumerator(j)/
rowDenominator(j), with NO missing prime power.
The 512 exact Nat inequalities 5*num<=44*den yield a row cap 44/5.

The source complex energy uses the same nonnegative kernel after
taking norms; the original complex chi phase is not discarded until
an upper absolute-value bound is legitimately needed. This is not
the zeta pole-inclusive signed Schur matrix, its remote residual,
a high floor at N=64, a finite paid sign or a cofinal stage.

A separate Python Fraction checker and an independent JS BigInt
replay checked all rows and 53 source-log comparisons. The Lean
propositions below are an uncompiled source candidate, not a
claimed fresh kernel receipt.
-/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
noncomputable section
namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPolynomialSchurData

open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open RadiusTwoPrimeObservations RadiusTwoPrimePrices

def logData : Array (ℕ × ℕ) := #[
  (0, 0), -- 0
  (0, 0), -- 1
  (762123384785, 762123384786), -- 2
  (1207936985808, 1207936985809), -- 3
  (1524246769571, 1524246769572), -- 4
  (1769595698904, 1769595698905), -- 5
  (1970060370593, 1970060370595), -- 6
  (2139550835493, 2139550835494), -- 7
  (2286370154357, 2286370154358), -- 8
  (2415873971616, 2415873971617), -- 9
  (2531719083690, 2531719083691), -- 10
  (2636513734630, 2636513734631), -- 11
  (2732183755379, 2732183755380), -- 12
  (2820191643185, 2820191643186), -- 13
  (2901674220279, 2901674220280), -- 14
  (2977532684712, 2977532684714), -- 15
  (3048493539142, 3048493539144), -- 16
  (3115151015759, 3115151015760), -- 17
  (3177997356401, 3177997356403), -- 18
  (3237444894869, 3237444894871), -- 19
  (3293842468475, 3293842468477), -- 20
  (3347487821301, 3347487821302), -- 21
  (3398637119416, 3398637119417), -- 22
  (3447512349238, 3447512349239), -- 23
  (3494307140165, 3494307140166), -- 24
  (3539191397809, 3539191397810), -- 25
  (3582315027970, 3582315027972), -- 26
  (3623810957424, 3623810957425), -- 27
  (3663797605064, 3663797605066), -- 28
  (3702380919231, 3702380919232), -- 29
  (3739656069498, 3739656069499), -- 30
  (3775708860964, 3775708860966), -- 31
  (3810616923928, 3810616923930), -- 32
  (3844450720438, 3844450720440), -- 33
  (3877274400545, 3877274400546), -- 34
  (3909146534397, 3909146534399), -- 35
  (3940120741187, 3940120741189), -- 36
  (3970246231896, 3970246231897), -- 37
  (3999568279655, 3999568279657), -- 38
  (4028128628993, 4028128628994), -- 39
  (4055965853261, 4055965853263), -- 40
  (4083115667924, 4083115667926), -- 41
  (4109611206087, 4109611206088), -- 42
  (4135483261596, 4135483261598), -- 43
  (4160760504201, 4160760504203), -- 44
  (4185469670520, 4185469670522), -- 45
  (4209635734023, 4209635734025), -- 46
  (4233282056733, 4233282056735), -- 47
  (4256430524950, 4256430524952), -- 48
  (4279101670986, 4279101670988), -- 49
  (4301314782594, 4301314782596), -- 50
  (4323088001567, 4323088001569), -- 51
  (4344438412756, 4344438412758), -- 52
  (4365382124615, 4365382124616), -- 53
  (4385934342209, 4385934342211) -- 54
]
def logWord (q : ℕ) : ℕ × ℕ := logData[q]!
def logScale : ℕ := 2^40
def cellStride : ℕ := 2^32
def logLower (q : ℕ) : ℚ := (logWord q).1 / (logScale : ℚ)
def logUpper (q : ℕ) : ℚ := (logWord q).2 / (logScale : ℚ)

/-- Bind these 53 exact endpoints to the ORIGINAL source logBounds. -/
theorem storedLog_le_sourceLogBounds :
    ∀ i : Fin 55, 2 ≤ i.val →
      logLower i.val ≤ (RadiusTwoPrimeObservations.logBounds i.val).1 ∧
      (RadiusTwoPrimeObservations.logBounds i.val).2 ≤ logUpper i.val := by
  decide +kernel

theorem storedLog_sound (i : Fin 55) (hi : 2 ≤ i.val) :
    Encloses (logLower i.val, logUpper i.val) (Real.log (i.val : ℝ)) := by
  have hs : Encloses (RadiusTwoPrimeObservations.logBounds i.val)
      (Real.log (i.val : ℝ)) :=
    RadiusTwoPrimeObservations.logBounds_sound (by omega) (by omega)
  obtain ⟨hl, hu⟩ := storedLog_le_sourceLogBounds i hi
  unfold Encloses at hs ⊢
  constructor
  · exact (by exact_mod_cast hl).trans hs.1
  · exact hs.2.trans (by exact_mod_cast hu)

def squaredDistance (a b : ℕ) : ℕ := (a-b)^2+(b-a)^2
def binLower (j : ℕ) : ℕ := j*cellStride
def binUpper (j : ℕ) : ℕ := (j+1)*cellStride
def plusNumerator (j q : ℕ) : ℕ :=
  if binLower j + (logWord q).1 ≤ 2*logScale then
    50*logScale^2 + 11*(binUpper j+(logWord q).2)^2 else 0
def minusNumerator (j q : ℕ) : ℕ :=
  if (logWord q).1 ≤ binUpper j+2*logScale then
    50*logScale^2+
      11*max (squaredDistance (binLower j) (logWord q).2)
             (squaredDistance (binUpper j) (logWord q).1) else 0

/-- Signed source weightNumerator zeroes every nonprime-power label. -/
def rowNumerator (j : ℕ) : ℕ :=
  ∑ q ∈ Finset.Icc 2 54,
    RadiusTwoPrimePrices.weightNumerator q *
      (plusNumerator j q + minusNumerator j q)

def rowDenominator (j : ℕ) : ℕ :=
  10000*(50*logScale^2+11*(binLower j)^2)

def checked (j : Fin 512) : Bool :=
  decide (5*rowNumerator j.val ≤ 44*rowDenominator j.val)

/-- Complete integer-arithmetic proof obligation, no skipped cells. -/
theorem all_rows_checked : ∀ j : Fin 512, checked j = true := by
  decide +kernel

theorem row_price_le (j : Fin 512) :
    5*rowNumerator j.val ≤ 44*rowDenominator j.val :=
  of_decide_eq_true (all_rows_checked j)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPolynomialSchurData
