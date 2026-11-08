/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

Original arithmetic source: Connes--Consani--Moscovici,
"Zeta Spectral Triples", arXiv:2511.22755v1, (3.19)--(3.20).
Imports original T=4 character source and the new signed odd-collar witness.
AI-assisted source analysis, with independent exact integer/Fraction
mass-enumeration diagnostics. LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_HUMAN_REVIEW_NOT_RUN. No RH/GRH result claimed.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourCollarWitness
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourScalarObstruction
import Mathlib.Tactic

/-!
# A complete positive outer frequency tail for the actual radius-four chi3 source

## The exact source and remaining finite-frequency consumer

Take the original primitive nonprincipal modulus-three, gamma parity-one
character and the native T=4 arithmetic source, NOT the 93-term T=3
primeSymbol. With the positive angular Fourier convention,
 s_4(xi) = A_4(xi) - P_4(xi),
 A_4(xi)=log(3/pi)+Re digamma(3/4+i xi/2),
 P_4(xi)=2 sum_(n=p^e<exp(8)) [log(p)/sqrt(n)] chi3(n)
                                        cos(xi log n).
There are 458 nonzero UNRAMIFIED prime powers n=p^e<=2980, p!=3,
e>=1, plus the native vanishing ramified values chi3(3^e)=0.
The complete signed prime correlations are preserved; no mixed-prime
or invented positive edge is inserted.

The previous RadiusFourScalarObstruction gives a source-NEGATIVE
frequency interval just above 3.8e9; thus no unqualified radius-three
high-positivity rule can be used at T=4. The result below proves a
separate, unconditional and extremely conservative OUTER tail:
  s_4(xi) > 2/3 whenever |xi|>=2^306.                 (A)

This is pointwise positivity of the COMPLETE raw 458-atom symbol
beyond an actual dyadic frequency cutoff, not a positivity theorem
for the whole source and not Dirichlet GRH. It discharges a valid
extreme outer-frequency sign leaf for any stage-four spectral partition
whose middle domain includes the entire |xi|<2^306 interval.

SOURCE COMPARISON: the existing WeilConductorThreeRadiusFourHighFilter
already gives a far stronger PRACTICAL filtered physical-space tail
with R=35*2^80 and source-return allowance. Its Schur bound
J(P4;g)<=58||g||² on supported tests is NOT a pointwise bound
P4(xi)<=58. The mass-only pointwise cutoff here is much larger,
and is an independent direct scalar guarantee, not a replacement
or a claim of quantitative improvement over that filtered route.

## Complete, exact rational half-mass

Use the original 458 prime-power tags (p,e), p prime other than3,
1<=e<=11 and 2<=p^e<=2980. For each integer z>=2, write
z=2^k*v with 1<=v<2. Define y=(v-1)/(v+1) in [0,1/3].
The 16-term rational atanh approximation
 L16(y)=2*sum_(j=0)^15 y^(2j+1)/(2j+1)
satisfies
 L16(y)<=log(v)<=L16(y)+2*y^33/[33*(1-y²)].
For log(z) use k copies of L16(1/3) plus L16(y) and their
complete positive remainder, never a floating log.

For n=p^e set h=floor(sqrt(n*10^18)) using exact integer square
root. The true half-weight is enclosed by
 logLower(p)*10^9/(h+1) <= log(p)/sqrt(n)
                           <= logUpper(p)*10^9/h.
Round EACH individual upper weight outward on Q=10^12,
and sum all 458 upper integers, preserving every tag and
no approximation of the sum by an integral. The result is

  W_4 = sum_(p^e<=2980,p!=3) log(p)/sqrt(p^e)
     < 105305132271302 / 10^12 < 10531/100.         (1)

For comparison the finite exact lower grid sum is
105305132263944 / 10^12, so the entire certified sum interval
has width <10^(-8). Both bounds are exact integer/Fraction results,
not interval-certified by a Lean kernel.

All character magnitudes are either 0 or 1 for chi3.
The source's native prime symbol has an OUTER factor of two,
and |cos|<=1; hence for EVERY real xi,

           |P_4(xi)| <= 2*W_4 < 2*(10531/100).       (2)

The true character signs and phases remain in the source.
The absolute-value inequality is used ONLY for the outer price,
not as a claim that every prime phase is independently adjustable.

## The original gamma-parity-one Binet lower bound

The explicit source analysis in WeilConductorThreeComplementTail
proves for |xi|>=100

           A_4(xi) >= log|xi| - 3/4.                 (3)

The parity-one gamma constant and conductor log(3/pi) are kept in
this source-specific inequality. For a genuinely elementary dyadic
frequency, the three-term positive atanh sum gives

 log 2 > 2*(1/3+1/81+1/1215)=842/1215 >693/1000.

If |xi| >= 2^306, then
 log|xi|>=306 log2 > 306*(693/1000) =212.058.
Combining (1)--(3) gives

 s_4(xi) >
   306*(693/1000)-3/4-2*(10531/100)
   =86/125 > 2/3.                                  (4)

This proves (A) at the written analytical source scope, without
assuming a zero-free region or the sign of any compact Weil test.

## Source-exact integrated consequence

Let f be ANY original compact C2 admissible radius-four test and
F its genuine additive Fourier transform. Its source has the exact
raw real-axis integral
 Q_chi3,4(f)=int_R s_4(xi)|F(xi)|² dxi/(2*pi).
The physical Plancherel measure is nonnegative. By (A),

 int_(|xi|>=2^306) s_4(xi)|F(xi)|² dxi/(2*pi)
   >= (2/3)*int_(|xi|>=2^306) |F(xi)|² dxi/(2*pi).  (5)

The full prime part is bounded, the gamma multiplier grows only
logarithmically, and compact C2 implies F(xi)=O(|xi|^-2).
Thus the tail integrals and the source decomposition are well-defined.
The source sign problem is reduced to a bounded (but exceedingly huge)
frequency interval |xi|<2^306, with every original signed coefficient
and gamma term intact. This is a correct finite-range research
reduction, NOT a computationally tractable head certificate.

The negative point near 3.8e9 and the positive cutoff at 2^306
do not contradict one another. No conclusion about the strict
source stage `PrimitiveStageLower chi3 ... 3` or GRH follows.
The next sign is the finite-middle all-admissible physical operator
bound, with complete Fourier, Gram and complement errors, rather
than the now-paid extreme outer-frequency tail.

All global analytic identities above are WRITTEN proofs, not
newly compiled Lean declarations. The finite `norm_num` guard
below and source-conditional order consumer keep their analytic
hypotheses explicit. Numerical evidence is separate from a
source-bound verified computer-assisted proof.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourHighTail

open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
open GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScalarObstruction
open GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeComplementTail

/-- Actual unramified conductor-three half-mass: no change to the
prime-weight or Dirichlet character type. -/
noncomputable def actualHalfMass : ℝ :=
  ∑ n ∈ activePrimePowers (4 : ℝ),
    primeWeight n * |(modThreeQuadratic n).re|

/-- Independently computed outward integer-grid endpoints, not
a Lean claim that the complete `actualHalfMass` has been elaborated. -/
def halfMassLowerRational : ℚ := 105305132263944 / 10 ^ (12 : ℕ)
def halfMassUpperRational : ℚ := 105305132271302 / 10 ^ (12 : ℕ)

theorem half_mass_rational_guard :
    halfMassLowerRational < halfMassUpperRational ∧
      halfMassUpperRational < 10531 / 100 := by
  norm_num [halfMassLowerRational, halfMassUpperRational]

/-- Three positive atanh terms for log(2); the analytic log comparison
is separately explained above. -/
theorem three_term_log_two_guard :
    (693 / 1000 : ℚ) < 842 / 1215 := by
  norm_num

theorem strict_tail_rational_margin :
    (2 / 3 : ℚ) <
      306 * (693 / 1000) - 3 / 4 - 2 * (10531 / 100) := by
  norm_num

/-- Strict native-source outer positivity, conditional on the genuine
gamma Binet inequality, full literal 458-atom half-mass, and actual
dyadic logarithm. No substitute Dirichlet character or scalar signal. -/
theorem native_raw_outer_pos_of_source_bounds (xi : ℝ)
    (hlog : 306 * (693 / 1000 : ℝ) < Real.log |xi|)
    (hgamma : Real.log |xi| - 3 / 4 ≤ gammaSymbol xi)
    (hprime : radiusFourPrimeSymbol xi ≤ 2 * (10531 / 100 : ℝ)) :
    (2 / 3 : ℝ) <
      gammaSymbol xi - radiusFourPrimeSymbol xi := by
  nlinarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourHighTail
