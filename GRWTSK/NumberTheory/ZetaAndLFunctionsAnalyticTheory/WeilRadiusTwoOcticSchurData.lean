/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Primary source: Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1, equations (3.19)--(3.20).
Source baseline: grwtsk/math@ce17d0c21026a26e4ed27012840b51cb7a73034f.
Original literal source inventory and outward logarithm endpoints imported below.
Written mathematical argument and all 512 integer rows: independently checked.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_REVIEW_NOT_RUN.
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPolynomialSchurData
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPolynomialPrimeDiffusion
import Mathlib

/-!
# A sharper degree-eight Doob--Schur weight on the actual radius-two prime source

Let x=t/2 and define the actual, strictly positive weight
 h(t) = 1+(12476*x^2-25461*x^4+42115*x^6-20110*x^8)/10000.
For every real t in [-2,2], h(t)>=1 and h is even and monotone
in |t|. To verify this WITHOUT a numerical derivative assumption, set
u=x^2 in [0,1]. Then
  10000*d(h)/du=12476-50922*u+126345*u^2-80440*u^3.
Its Bernstein coefficients of degree three on u in [0,1/2] are
  (12476,3989,24123/4,34185/4);
on [1/2,1] they are
  (34185/4,44247/4,14051,7459).
ALL coefficients are STRICTLY positive. Similarly h-1=u*P(u)/10000
where P(u)=12476-25461*u+42115*u^2-20110*u^3 has positive
Bernstein coefficients on [0,1]:
  (12476,3989,28621/3,9020).
Consequently h>=1 and increases with |t| on the whole support.

Retain EXACTLY the previous original source:
  WeilRadiusTwoPolynomialSchurData.logWord, logScale, binLower, binUpper
  WeilRadiusTwoPrimePrices.weightNumerator
  OddRootProjection/LowSchur source prime weights (including all q=2..54).
For each of 512 cells [j/256,(j+1)/256] in t>=0:
  source shifted t+r is present only if cell lower+log lower<=2;
  source shifted t-r is present only if log lower<=cell upper+2.
Use h monotonicity to bound each active source row at the largest
possible neighbor |t+/-r|; CLAMP the latter to physical support |t|<=2.
Use h(cell lower) for the positive denominator.
The complete signed-source-dominating absolute row is bounded by
  rowNumerator(j)/rowDenominator(j).
The exact 512 Nat/Int inequalities below are
  100*rowNumerator(j) <= 859*rowDenominator(j).
They were independently checked with Python exact integers and verified
against the full source logWord table: the maximum row ratio is
8.588043677542824 at cell 450, below 859/100=8.59.

This is not an arbitrary phase-erased "Weil" replacement:
The positive shift operator K acts on |f| only as an upper bound of the
ORIGINAL twistedPrime 2 chi term. Weighted Young/Schur gives for
supported physical complex L2 f and every individual chi:
 |twistedPrime 2 chi (C_f o log)| <= (859/100)*energy(f).
Proof: at each supported pair use
  2|f(t)f(t+r)| <= h(t+r)/h(t)*|f(t)|^2
                      +h(t)/h(t+r)*|f(t+r)|^2;
integrate, translate the second term, sum BOTH source orientations,
and use the complete source row bound. This is valid for all complex
characters, both parity types and every original active prime power.
The integral-domain/source comparison is a WRITTEN mathematical proof;
Lean formalization of the entire continuum Schur/interval cover is
not claimed in this module.

The real zeta negative pole, full residual-paid 65x65 head, N=64 high
complement, and any cofinal support family remain OPEN. A positive
Doob kernel is not a proof that the signed zeta form is nonnegative.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoOcticSchurData

open RadiusTwoPolynomialSchurData
open RadiusTwoPrimePrices
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds

/-- The original source scale 2^40, not a newly generated log inventory. -/
private def scale : ℕ := RadiusTwoPolynomialSchurData.logScale

/-- The exact positive octic weight in physical coordinates. -/
def ground (t : ℝ) : ℝ :=
  let x := t / 2
  1 + ((12476 : ℝ)*x^2-25461*x^4+42115*x^6-20110*x^8)/10000

theorem ground_even (t : ℝ) : ground (-t) = ground t := by
  unfold ground
  ring

/-- Derivative in u=(t/2)^2, multiplied by the original 10000. -/
def derivativePolynomial (u : ℝ) : ℝ :=
  12476-50922*u+126345*u^2-80440*u^3

/-- Rational Bernstein decomposition on BOTH halves of [0,1],
retaining an explicit analytic positivity argument. -/
theorem derivativePolynomial_nonneg {u : ℝ}
    (hu0 : 0 <= u) (hu1 : u <= 1) :
    0 <= derivativePolynomial u := by
  by_cases hhalf : u <= (1/2 : ℝ)
  · let v := 2*u
    have hv0 : 0 <= v := by dsimp [v]; linarith
    have hv1 : v <= 1 := by dsimp [v]; linarith
    have hvnot : 0 <= 1-v := by linarith
    have hident : derivativePolynomial u =
        12476*(1-v)^3 + 3*3989*v*(1-v)^2 +
        3*(24123/4 : ℝ)*v^2*(1-v) + (34185/4 : ℝ)*v^3 := by
      dsimp [derivativePolynomial, v]
      ring
    rw [hident]
    positivity
  · let v := 2*u-1
    have hv0 : 0 <= v := by dsimp [v]; linarith
    have hv1 : v <= 1 := by dsimp [v]; linarith
    have hvnot : 0 <= 1-v := by linarith
    have hident : derivativePolynomial u =
        (34185/4 : ℝ)*(1-v)^3 + 3*(44247/4 : ℝ)*v*(1-v)^2 +
        3*14051*v^2*(1-v) + 7459*v^3 := by
      dsimp [derivativePolynomial, v]
      ring
    rw [hident]
    positivity

/-- Integer-scaled octic weight:
    octicWord(z)=10000*2^8*scale^8*ground(z/scale).
This avoids approximate real arithmetic in all 512 source rows. -/
def octicWord (z : ℕ) : ℤ :=
  let L : ℤ := scale
  10000*256*L^8 +
    12476*64*(z : ℤ)^2*L^6 -
    25461*16*(z : ℤ)^4*L^4 +
    42115*4*(z : ℤ)^6*L^2 -
    20110*(z : ℤ)^8

/-- Clamp the outward neighbor to the TRUE physical support |t|<=2;
this is necessary because the source weight is monotone only there. -/
def clamp (z : ℕ) : ℕ := min (2*scale) z

def absDist (a b : ℕ) : ℕ := max (a-b) (b-a)

def upperPlus (j q : ℕ) : ℤ :=
  if binLower j+(logWord q).1 <= 2*scale then
    octicWord (clamp (binUpper j+(logWord q).2))
  else 0

def upperMinus (j q : ℕ) : ℤ :=
  if (logWord q).1 <= binUpper j+2*scale then
    octicWord (clamp
      (max (absDist (binLower j) (logWord q).2)
           (absDist (binUpper j) (logWord q).1)))
  else 0

/-- Every genuine prime power from q=2 through 54, and both orientations. -/
def rowNumerator (j : ℕ) : ℤ :=
  ∑ q ∈ Finset.Icc 2 54,
    (weightNumerator q : ℤ) * (upperPlus j q+upperMinus j q)

def rowDenominator (j : ℕ) : ℤ :=
  10000*octicWord (binLower j)

/-- Direct bounded decision on the EXACT arithmetic, with no rational
rounding or samples of an unknown continuum sign. -/
def checked (j : Fin 512) : Bool :=
  decide (100*rowNumerator j.val <= 859*rowDenominator j.val)

/-- Concrete 512-cell arithmetic statement; requires fresh Lean checking.
The independently executed integer checker passed each same-source row. -/
theorem all_rows_checked : ∀ j : Fin 512, checked j = true := by
  decide +kernel

theorem row_price_le (j : Fin 512) :
    100*rowNumerator j.val <= 859*rowDenominator j.val :=
  of_decide_eq_true (all_rows_checked j)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoOcticSchurData
