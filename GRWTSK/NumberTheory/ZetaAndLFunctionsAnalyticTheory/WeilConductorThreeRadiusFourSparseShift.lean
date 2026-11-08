/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

Original arithmetic normalization: Connes--Consani--Moscovici,
"Zeta Spectral Triples", arXiv:2511.22755v1, equations (3.19)--(3.20).
Source pin inspected: grwtsk/math@5f7100dc0d1e47a9a393b010affd139c1dc2e87c.
Existing native carriers and consumers:
  WeilDirichletStageChain.Admissible / PrimitiveStageLower,
  WeilConductorFrontier.primitiveArithmeticValue,
  WeilConductorThreeRadiusFourHighFilter (original Schur norm 58),
  WeilConductorThreeRadiusFourSixteenShells (genuine 458-atom cancellation),
  WeilConductorThreeRadiusFourSignedSchurRobustness (physical gamma profile).

Independent Python Fraction and V8 BigInt rational/integer replays were
executed for every translated image and all 458 source-square weights.
Continuum operator/analytic source return WRITTEN, not kernel verified.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_HUMAN_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourSignedSchurRobustness
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourSixteenShells
import Mathlib.Tactic

/-!
# Complete sparse-translation orthogonality for the literal chi3 radius-four prime source

## Exact original problem and the new source-level operator connection

Keep the ORIGINAL primitive real nonprincipal chi3 modulo three,
gamma parity one, support radius T=4, physical Lebesgue L²(dt),
the EXACT 458 unramified prime-power occurrences n=p^e<=2980
and the original `DirichletStageChain.Admissible` test carrier.
No new Euler coefficients, phases, pole convention, weighted norm
or substitute stage target are introduced.

Let H=L²([-4,4],dt;C), with original whole-line zero extension.
Let P denote physical support restriction to [-4,4], U_r translation.
The source prime form is that of the real-symmetric operator

 T4=P * sum_(n=p^e<=2980,p!=3) w_n*chi3(n)*(U_(log n)+U_(-log n)) * P,
 w_n=log(p)/sqrt(p^e)>0, chi3(n) in {-1,+1}.

This is EXACTLY the prime term subtracted in the source
`ConductorFrontier.primitiveArithmeticValue`, with its outer factor
two already present in U_r+U_-r. The source includes all 458 occurrences
and is bounded selfadjoint on the original physical Hilbert carrier.

The existing 4096-row native physical Schur certificate (HighFilter)
gives ||T4||<=58 on the WHOLE physical L²([-4,4]) carrier, at its
recorded written/computer-assisted assurance scope. Our new result is a
much sharper DIRECTIONAL estimate on the genuine 16-shell subspace:

    ||T4 g||² <= C_shift ||g||²,
    C_shift <121/4,
    hence ||T4 g|| <(11/2)||g|| for g!=0.                   (A)

The proof is an exact translated-interval orthogonality argument,
not an estimate from independently adjustable prime phases.

## Complete 9712-image source calculation

Take the ACTUAL moving 16 shells of SixteenShells:
  I_j=[3+j/16+delta_j, 3+j/16+delta_j+h],
  0<=delta_j<=eps=10^-6, h=2^-20, j=0,...,15,
together with their odd reflections -I_j.
For complex/real L2 g supported in the resulting symmetric union,
split g into its 32 disjoint shell components g_s.

For each ACTUAL atom n, each sign sigma in {-1,+1}, and each
shell s, consider the image of that shell under translation
sigma*log(n), RESTRICTED TO THE ORIGINAL physical [-4,4].
The source certificate covers ALL nonempty such images. An exact
integer-grid interval enclosure, uniformly over EVERY independent
allowed delta_j, produces exactly 9712 nonempty envelopes.
Their interiors are PAIRWISE DISJOINT, and in fact every consecutive
ordered pair has STRICT positive gap on the common grid D=10^20.
The smallest gap is

  103504438662534 / 10^20 = 0.00000103504438662534.         (B)

The attaining original source keys are
  (n=1597,translation=-,j=7,positive shell),
  (n=2633,translation=-,j=15,positive shell).
All other 9710 adjacent comparisons are no smaller.
No frequency, prime-power, orientation, outer support cell or
mixed image is sampled or omitted.

### Fully reproducible exact integer procedure

For each n in the original tagged 458-atom inventory, write
n=2^k v, 1<=v<2, z=(v-1)/(v+1), 0<=z<1/3.
Use the EXACT rational 24-term atanh series

  L24(z)=2 sum_(j=0)^23 z^(2j+1)/(2j+1)
and the COMPLETE positive remainder
  0<=log(v)-L24(z)<=2*z^49/[49*(1-z²)].

Use the same formula with z=1/3 for log(2).
The returned log bracket on integer grid D is
 [floor(D*lowerLog(n)), ceil(D*upperLog(n))];
all 458 log bracket widths are <=1 integer grid unit.
Every physical shell endpoint 3+j/16, h and eps is EXACTLY an
integer on D=10^20.

For every atom n, sign sigma, shell j and side + or -:
construct the full output interval by signed interval addition of
the enclosed log(n) to the ENTIRE shell-placement envelope,
then intersect with [-4D,4D].
Retain only positive-length intervals and sort ALL retained envelopes
by lower endpoint. The manifest retains every one of the 458
(p,e,n,lowerLog,upperLog) records and the COMPLETE 9712-key
sorted output list. Reconstructing and comparing each adjacent
upper/lower endpoint gives the exact positive minimum (B).
The two independent arbitrary-precision implementations (Python
Fraction and V8 BigInt) agreed on image count and minimum.
The manifest therefore provides inspectable finite evidence,
not a floating scan or a bare SHA digest.

This source arithmetic is at finite computer-assisted scope;
the real-log Taylor formula and physical-image operator return
are WRITTEN analytic proofs, not new Lean elaborations.

## Squared-weight source price, including the special n=2 direction

Because every one of the translated output images is disjoint,
orthogonality of physical L2 functions on disjoint supports gives
the EXACT identity

  ||T4 g||²
    = sum_(n,sign,shell) w_n²
          ||P U_(sign*log n)g_shell||².                        (C)

The actual chi3(n) signs are preserved inside T4 and disappear
only AFTER taking squared norms in the genuinely disjoint
translated-image decomposition. No pointwise prime-sign positivity
or high-frequency assumption is imposed.

All source shell points have |t|>=3. For every n>=4 one has
log n>1, and at most ONE of the two output directions
t+log n,t-log n can lie in [-4,4] for a fixed source shell
side. Thus the sum over signs for each n>=4 is at most
w_n²||g_shell||². The ONLY active n with log n<1 is n=2;
it may contribute both directions and costs one ADDITIONAL w_2².

The entire exact source half-weight-square budget is

  sum_(all 458 n) w_n²
     <29974914579154 / 10^12,
  w_2² <240226506960 / 10^12.                              (D)

This follows from the REAL source coefficients w_n²=log(p)²/n,
using the same exact upper grid log(p) for each tagged atom,
`squareUpper(n)=ceil(10^12*(upperLog(p)/D)^2/n)`.
Every one of 458 upward integers is stored in the manifest,
and their exact sum is 29974914579154.
No square-root or floating error is incurred in (D).
In particular

  C_shift <=30215141086114/10^12 <121/4=(11/2)².          (E)

The 16-shell orthogonality and the extra n=2 direction pay
EVERY term in (C). Consequently the genuine operator estimate (A)
holds on EVERY original prime-free shell function, for all the
specified independent shell placements.

## A new complete signed gamma-plus-prime lower profile on ALL admissible tests

For arbitrary ORIGINAL radius-four Admissible real odd f, put
  g=1_(S_delta) f, h=f-g, G=||g||, H=||h||,
with G²+H²=E(f). As before, the hard L2 projections are
not claimed smooth or individually finite gamma.
The entire prime form has
  <g,T4g>=0 (exact original support cancellation),
  |<g,T4h>|=|<T4g,h>|<=(11/2)*G*H (A),
  |<h,T4h>|<=58*H² (old full-source Schur).
Therefore the COMPLETE signed native prime contribution satisfies

  -P4(f) >= -11*G*H-58*H².                                  (F)

The unchanged original parity-one gamma integral has
  Gamma1(f)>=K0*max(0,G²-2GH),
  K0=290947153/28311552,
by the ACTUAL jump correlation on the complete prime-free
shift interval J of SixteenShells; the estimate is on f itself,
never an unproved Gamma(g) or Gamma(h) projection law.
The source's original parity-one conductor constant is >-6/5.

Combining these source-exact inputs yields for EVERY original
Admissible f and EVERY allowed shell placement:

 Q_chi3,4(f) >= K0*max(0,G²-2GH)
                 -(6/5)*(G²+H²)-11GH-58H².                  (P11)

This is a GLOBAL source lower profile (which may be negative
for large H/G), not a universal stage-three proof.
The improvement relative to SignedSchurRobustness is the
source-exact mixed prime price 11GH versus 116GH, while
keeping the complete unrestricted complement cost 58H².

## Five much wider fully paid positive L² cones

If H<=G/d, d>2, the global lower profile (P11) becomes

 Q4(f)-v E(f) >=
 [K0*(1-2/d)-11/d-58/d²-(6/5+v)*(1+1/d²)]*G².            (G)

The following FIVE strict rational margins have been checked
independently and are positive:

 d=5,  v=1/4:   162760681/1179648000;
 d=6,  v=3/2:   134119829/212336640;
 d=7,  v=5/2:   1123453715/1387266048;
 d=8,  v=7/2:   24641617/37748736;
 d=10, v=5:     247105513/884736000.

Thus every original chi3 radius-four admissible f obeys

 H<=G/5  => Q4(f)>=(1/4)E(f),                               (H1)
 H<=G/6  => Q4(f)>=(3/2)E(f),
 H<=G/7  => Q4(f)>=(5/2)E(f),
 H<=G/8  => Q4(f)>=(7/2)E(f),
 H<=G/10 => Q4(f)>=5E(f).

At d=5 the allowed OUTSIDE physical squared-mass fraction is
  H²/(G²+H²)<=1/26,
more than ten times the fraction 1/257 available from the
previous signed-Schur 1/16 margin at d=16.
This is a meaningful SOURCE MIXED-BLOCK improvement but covers
only a positive leakage cone around the prime-free subspace.

## Mathematical comparison, hostile boundary and verification

The exact source-specific overlap calculation is not a new
physical Weil operator, graph-heat analogy or sampling argument:
it proves disjointness of every finite signed translation image
in the actual source space, and its consequence is the directional
operator estimate (A). The previous 4096-cell physical Schur
bound remains needed for the complement. All native prime signs,
translation orientations, ramified zeros, gamma, test domain,
physical metric and Fourier normalization are preserved.

This improvement is NOT a proof that ||T4||<=11/2 globally:
the directional bound needs the exact sparse support S_delta.
Moving the shells outside their 10^(-6) displacement window
or enlarging their widths requires a new complete source
overlap check; the minimum gap (B) could close. A localized
positive cone does not become dense/cofinal merely because
it is infinite dimensional, and the strong original target

  m11[v]>=<Bv,A0^(-1)Bv>
for EVERY finite-gamma edge vector v on the whole L2(3,4)
remains UNPROVED. The chi3 radius-four StageThreeTarget, all
other primitive-character cofinal stages, zeta RH and Dirichlet
GRH remain OPEN.

Exact arithmetic: two independently written arbitrary-precision
algorithms with matching atom count 458, image count 9712,
minimum (B), complete 458 squared-source prices and sum (E).
The finite certificate retains ALL output-image keys, not just a
hash or sampled rows. Lean compilation, kernel replay, axiom
audit and independent human review of this source: NOT_RUN.
Neither a finite certificate nor its correctness implies RH/GRH.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourSparseShift

open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreePrimitiveGauss
open GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
open GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourSixteenShells

/-- The entire native 458-atom upper price sum of (log p)^2/n,
with ONE extra n=2 direction, as exact rational data. -/
def totalSquareUpper : ℚ := 29974914579154 / 10 ^ (12 : ℕ)
def nTwoSquareUpper : ℚ := 240226506960 / 10 ^ (12 : ℕ)

theorem original_shift_norm_square_guard :
    totalSquareUpper + nTwoSquareUpper < (11 / 2 : ℚ) ^ 2 := by
  norm_num [totalSquareUpper, nTwoSquareUpper]

/-- Actual complete integer-grid physical image separation,
uniform under all original 16 shell shifts. The finite theorem
does not itself elaborate the transcendental log enclosure or
the 9712 comparisons; those are source-backed external data. -/
def minTranslatedImageGap : ℚ := 103504438662534 / 10 ^ (20 : ℕ)

theorem strict_translated_image_separation : 0 < minTranslatedImageGap := by
  norm_num [minTranslatedImageGap]

def K0 : ℚ := 290947153 / 28311552

/-- Ratio certificate after paying the exact original gamma and
conductor source, the improved 11 G H signed-prime coupling and the
full 58 H² complement. -/
def ratioMargin (d floor : ℚ) : ℚ :=
    K0 * (1 - 2 / d) - 11 / d - 58 / d ^ 2
      - (6 / 5 + floor) * (1 + 1 / d ^ 2)

theorem ratio5_floor_quarter :
    ratioMargin 5 (1 / 4) = 162760681 / 1179648000 ∧
      0 < ratioMargin 5 (1 / 4) := by
  norm_num [ratioMargin, K0]

theorem ratio6_floor_three_halves :
    ratioMargin 6 (3 / 2) = 134119829 / 212336640 ∧
      0 < ratioMargin 6 (3 / 2) := by
  norm_num [ratioMargin, K0]

theorem ratio7_floor_five_halves :
    ratioMargin 7 (5 / 2) = 1123453715 / 1387266048 ∧
      0 < ratioMargin 7 (5 / 2) := by
  norm_num [ratioMargin, K0]

theorem ratio8_floor_seven_halves :
    ratioMargin 8 (7 / 2) = 24641617 / 37748736 ∧
      0 < ratioMargin 8 (7 / 2) := by
  norm_num [ratioMargin, K0]

theorem ratio10_floor_five :
    ratioMargin 10 5 = 247105513 / 884736000 ∧
      0 < ratioMargin 10 5 := by
  norm_num [ratioMargin, K0]

/-- Source-type consumer: the complete physical signed/gamma
comparisons on the genuine L² shell carrier are explicit premises,
not an invented global positivity axiom. -/
theorem native_quarter_floor_of_source_comparisons
    (f : ℝ → ℝ)
    (_hadmissible : Admissible modThreeQuadratic 4 f)
    (E G gamma signedPrime c : ℝ)
    (hE : 0 ≤ E) (hG : 0 ≤ G)
    (hMassCap : E ≤ (1 + 1 / 25 : ℝ) * G)
    (hGamma :
      ((290947153 / 28311552 : ℝ) * (1 - 2 / 5)) * G ≤ gamma)
    (hPrime :
      -(11 / 5 + 58 / 25 : ℝ) * G ≤ signedPrime)
    (hc : -(6 / 5 : ℝ) ≤ c)
    (hSource :
      primitiveArithmeticValue modThreeQuadratic
        modThreeQuadratic_primitive modThreeQuadratic_nonprincipal
        4 (liftReal f) = c * E + gamma + signedPrime) :
    (1 / 4 : ℝ) * E ≤
      primitiveArithmeticValue modThreeQuadratic
        modThreeQuadratic_primitive modThreeQuadratic_nonprincipal
        4 (liftReal f) := by
  have hConst := mul_le_mul_of_nonneg_right hc hE
  have hNum :
      ((1 / 4 + 6 / 5 : ℝ) * (1 + 1 / 25) + 11 / 5 + 58 / 25) ≤
      ((290947153 / 28311552 : ℝ) * (1 - 2 / 5)) := by
    norm_num
  have hScaled := mul_le_mul_of_nonneg_right hNum hG
  have hMassCost := mul_le_mul_of_nonneg_left hMassCap
    (by norm_num : 0 ≤ (1 / 4 + 6 / 5 : ℝ))
  rw [hSource]
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourSparseShift
