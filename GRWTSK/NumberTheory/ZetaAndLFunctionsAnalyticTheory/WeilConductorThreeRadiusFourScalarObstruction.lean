/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

Original arithmetic object: Connes--Consani--Moscovici,
"Zeta Spectral Triples", arXiv:2511.22755v1,
equations (3.19)--(3.20), primitive modulus-three parity-one sector.
Source imports: CharacterWeilWindowBounds, WeilConductorThreeComplementTail,
WeilConductorThreeRadiusFourOddEdges. The exact scalar arithmetic check
below was independently executed in Python Fractions (integer intervals);
no Lean elaboration, kernel replay or axiom audit was performed.
Independent human review NOT_RUN; novelty NOT_ASSESSED.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourOddEdges
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeComplementTail
import Mathlib.Tactic

/-!
# Radius-four raw scalar obstruction beyond the old frequency stop

## Exact original source: do not reuse radius-three primeSymbol

The target is the genuine next-stage modulus-three source at radius T=4,
using ALL native `CharacterWindow.twistedPrime 4 modThreeQuadratic`
occurrences. At the support cutoff 2<=n<exp(8), exactly 458
unramified prime powers remain, with coefficient

  P_4(xi) = 2 sum_(n=p^e<exp(8),p!=3)
                   log(p)/sqrt(n)*chi3(n)*cos(xi*log(n)).

The original parity-one gamma symbol is
  A(xi)=log(3/pi)+Re digamma(3/4+i*xi/2).
The full *unfiltered scalar* symbol is s_4=A-P_4. This is NOT the
old 93-atom ConductorThreeComplementTail.primeSymbol (T=3), nor its
truncated finite-annulus multiplier b. The old annulus mask vanishes
outside Rstop=3500000000 and cannot be inferred to equal s_4 there.

## A new source-EXACT negative scalar point

Let
  xi_star=3806849122861433/1000000=3806849122.861433 > Rstop.
The independent complete 458-term outward rational enclosure gives

  P_4(xi_star) >= 29148118355677540825444049 / 10^24
                  = 29.148118355677540825444049,             (1)

while the SOURCE Binet bound A(xi)<=log(xi)+1 for xi>=100,
combined with exact atanh brackets for log(xi_star), gives

  A(xi_star) <= 23060067682057 / 10^12
                  =23.060067682057.                           (2)

Therefore s_4(xi_star)<-6 by exact integer comparison (Lean candidate
below). This refutes a pointwise nonnegative raw symbol for ALL
frequencies outside the old 3.5e9 cutoff. It does NOT refute the
original Weil quadratic inequality or any Dirichlet GRH target:
an isolated negative spectral multiplier is not an admissible
compact-test Rayleigh witness, and the old radius-three high-filter
acts on a DIFFERENT 93-atom symbol.

## Reproducible, outward exact rational calculation of (1)

All comparisons are exact integers or Python fractions; no floating
cosine evaluation enters the acceptance test. Steps:

1. Prove 2980<exp(8)<2981 by the positive 45-term exponential Taylor
   sum and its geometric rational remainder. Enumerate (p,e) for
   2<=p<=2980 prime, p!=3, 1<=e<=11, n=p^e<=2980. Check 458
   distinct tags and use beta_n=+1 for n mod3=1, -1 for n mod3=2.
   These are the ORIGINAL von-Mangoldt/character coefficients.

2. Compute every log(p), log(n), and log(xi_star) with exact dyadic
   normalization z=2^k v, 1<=v<2. Put y=(v-1)/(v+1), 0<=y<=1/3.
   The 26-term series
     L(y)=2*sum_(j=0)^25 y^(2j+1)/(2j+1)
   is a strict lower bound on log(v), and its omitted remainder is
     <=2*y^53/[53*(1-y^2)].
   Use the SAME series for log2 with y=1/3. Round both log
   endpoints OUTWARD on the integer grid Q=10^20.

3. Enclose pi through Machin's formula
     pi=16 atan(1/5)-4 atan(1/239).
   Use 28 alternating terms for each arctangent, paying the next term
   |z|^57/57 with its correct alternating sign. Round pi outward on
   the SAME Q grid. The resulting two integer endpoints differ by one.

4. Multiply the log(n) interval by the EXACT rational xi_star,
   round outward, subtract a verified integer multiple of the
   enclosed 2*pi, and verify for EVERY n that the resulting phase
   interval lies in [-pi,pi]. The maximum interval radius in the
   complete enumeration is below 1.35e-10.

5. At the rational midpoint of each reduced phase evaluate
     C_19(t)=sum_(j=0)^19 (-1)^j*t^(2j)/(2j)!.
   Pay the complete alternating remainder
     (22/7)^40/40! < 10^(-27)
   and the FULL interval-midpoint displacement by |cos'|<=1.
   Enclose each cosine OUTWARD on S=10^12, keeping all 458 signs.

6. Put h_n=floor(sqrt(n*S^2)), so
     h_n/S <= sqrt(n) < (h_n+1)/S.
   Bound each POSITIVE magnitude 2log(p)/sqrt(n) by combining
   the outward log(p) interval and these exact integer square-root
   bounds, rounding OUTWARD on S. Multiply the signed weight and
   cosine endpoint intervals by taking the MINIMUM of all four
   rational endpoint products. Sum all 458 minima exactly on S^2.

The resulting source-enclosing LOWER integer numerator is
  29148118355677540825444049 on denominator S^2=10^24.
The symmetric upper diagnostic is ~29.1481184041 but is NOT used.
The positivity and strict comparison in (1) are not estimates based
on sampling a phase torus or taking 458 independently chosen phases;
every phase is the actual xi_star*log(p^e).

## Source Binet comparison for (2)

The existing source's written Binet derivation gives
  A(xi)<=log|xi|+1 for |xi|>=100,
retaining log(3/pi), parity one and the gamma digamma correction.
The same exact 26-term atanh interval yields
  log(xi_star)+1 < 23060067682057/10^12.
This is an analytic comparison with explicitly paid rational log error,
not an assertion that the digamma function is numerically equal to
its logarithmic approximation. The final strict gap is more than 6.

## What this does not resolve

The stage j=3 source is an INTEGRAL of s_4(xi)|F(xi)|^2
over ALL real xi, not a pointwise sign requirement. The admissible
Fourier transforms are support-limited; they cannot be Dirac masses at
xi_star. Thus no negative Weil vector, RH violation, or stage failure
is constructed.

Any radius-four packet/variance proof must retain all 458 atoms and
either pay signed high-frequency contributions above 3.5e9 or prove a
new source-specific high return. It cannot import the old 93-atom
pointwise positivity outside that cutoff as an unchanged lemma.
The pending original stage j=3 remains
 Q_chi3,4(f)>=-(1/8)||f||^2
for EVERY original admissible odd C2 test. The current new odd-edge
core/collar Schur obligation remains open.

Formal source below has the ACTUAL native T=4 twistedPrime type and
the exact rational implication. The finite phase/log/sqrt enclosure
algorithm was executed in exact arithmetic but is not yet encoded
in Lean as proofs of the two source inequalities (1)--(2).
Consequently they are EXPLICIT theorem hypotheses and may not be
inferred from `norm_num`. Lean compilation, kernel checking and
independent source review remain NOT_RUN. The mathematical mechanism
is standard rational Taylor/interval arithmetic; no novelty claim.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScalarObstruction

open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreePrimitiveGauss
open GRWTSK.NumberTheory.WeilQuadraticForm.CharacterWindow
open GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeComplementTail

/-- The exact rational frequency, beyond the previous 3.5-billion stop. -/
def obstructionFrequency : ℝ := (3806849122861433 : ℝ) / 1000000

/-- The ORIGINAL native prime symbol at T=4, not the earlier T=3 symbol. -/
def radiusFourPrimeSymbol (xi : ℝ) : ℝ :=
  twistedPrime 4 modThreeQuadratic
    (fun n => (Real.cos (xi * Real.log (n : ℝ)) : ℂ))

/-- Exact rational interval endpoints from the completed 458-term scalar
calculation. These are certificate DATA, not assertions about primeSymbol. -/
def rationalPrimeLower : ℚ :=
  29148118355677540825444049 / 10 ^ (24 : ℕ)

def rationalGammaUpper : ℚ :=
  23060067682057 / 10 ^ (12 : ℕ)

theorem obstruction_frequency_gt_old_stop :
    (3500000000 : ℝ) < obstructionFrequency := by
  norm_num [obstructionFrequency]

/-- Exact order comparison of the two outward bounds. -/
theorem rational_obstruction_margin :
    rationalGammaUpper + 6 < rationalPrimeLower := by
  norm_num [rationalGammaUpper, rationalPrimeLower]

/-- Source-specific conditional return: the analytic finite enclosures
remain EXPLICIT hypotheses, not hidden proof-irrelevant fields. -/
theorem genuine_radius_four_symbol_lt_neg_six
    (hprime : (29148118355677540825444049 : ℝ) / 10 ^ (24 : ℕ) ≤
       radiusFourPrimeSymbol obstructionFrequency)
    (hgamma : gammaSymbol obstructionFrequency ≤
       (23060067682057 : ℝ) / 10 ^ (12 : ℕ)) :
    gammaSymbol obstructionFrequency -
      radiusFourPrimeSymbol obstructionFrequency < -6 := by
  have hmargin :
      (23060067682057 : ℝ) / 10 ^ (12 : ℕ) + 6 <
        (29148118355677540825444049 : ℝ) / 10 ^ (24 : ℕ) := by
    norm_num
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScalarObstruction
