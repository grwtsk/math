/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

Exact original source: Connes--Consani--Moscovici,
"Zeta Spectral Triples", arXiv:2511.22755v1, equations (3.19)--(3.20);
original chi3 parity-one source in WeilConductorThreeRadiusFourOddEdges.
Static EXACT INTEGER evidence:
documentation/mathematics/_verification/targets/
chi3-radius-four-odd-tent-head-20261107.json.
Independent Python Fraction + Python integer Bareiss and
JavaScript BigInt integer Bareiss replays were executed.
Lean parsing/elaboration, fresh kernel replay and transitive axiom audit:
NOT_RUN. Independent human mathematical/source review: NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourCollarWitness
import Mathlib.Tactic

/-!
# An actual 16-by-16 finite signed odd-edge Loewner certificate

## Original arithmetic carrier

Keep the ORIGINAL primitive nonprincipal character chi3 modulo3
and the original radius-four signed Weil prime contribution
  Delta_new(f)=-2 sum_(404<=n=p^e<=2980,p!=3)
                      log(p)/sqrt(n)*chi3(n)*C_f(log n),
where C_f(r)=integral_R f(t)f(t+r)dt for real odd f.
No gamma term, old prime term or zeta pole is moved into this
finite prime-only operator. The original full target is still the
ALL-test PrimitiveStageLower chi3 hp hn 3 at physical radius four.
The present theorem concerns ONLY a specified finite physical
observation subspace, not that universal source sign.

## 1. Exact odd reflection and the 31-entry Hankel source

Let h=1/8, I_i=(2+i*h,2+(i+1)*h), i=0,...,15.
Let e_i=h^(-1/2)1_(I_i) on positive (0,4), and extend any
u=sum_(i=0)^15 x_i e_i oddly to f(t)=u(t)-u(-t).
The e_i form an orthonormal physical L²(2,4) basis of this
16-dimensional STEP space, and E(f)=2 sum_i x_i².

All newly active prime-power shifts have 6<r=log n<8.
The ACTUAL odd-cross-origin formula of RadiusFourOddEdges gives
  C_f(r)=-integral u(t)u(r-t)dt.
For each pair of physical cells, this is the exact overlap
  int e_i(t)e_j(r-t)dt
     =max(0,1-8*|r-(4+(i+j+1)/8)|).
Consequently
  Delta_new(f)=sum_(i,j=0)^15 x_i*A_ij*x_j,              (1)
where
  A_ij=h_(i+j),
  h_k=2 sum_(404<=n=p^e<=2980,p!=3)
           [log p/sqrt(n)] chi3(n)
           max(0,1-8*|log n-(4+(k+1)/8)|), k=0,...,30. (2)

The full 16-by-16 matrix is SYMMETRIC HANKEL; it contains only
31 distinct source data. The first fifteen h_k are EXACTLY ZERO
because their tent supports lie below the first new prime-power
log shift. Hence the core-core block for cells 0,...,7 vanishes.
The mixed 110 early and collar 255 late source edges retain their
original chi3 signs; no absolute-phase substitution occurs in (1).

The piecewise constant e_i are L² observations, not C² source
tests. The signed finite prime translation form extends continuously
to their physical L² carrier. A further smooth approximation can
produce admissible individual tests (as in CollarWitness), but a
finite step-subspace sign NEVER implies the all-function stage sign.

## 2. COMPLETE signed 31-entry rational enclosures

The attached static manifest records EXACTLY the source-dependent
integer intervals
  L_k/10^9 <= h_k <= U_k/10^9, 0<=k<=30.              (3)
They are reproduced verbatim as Lean finite data below.

The finite outward-arithmetic generation uses the exact 365
tagged prime-power occurrences, with chi3(n)=+1 or -1; atanh
logarithms through 16 terms and complete positive remainders
2*y^33/[33*(1-y²)]; positive and negative integer sqrt intervals
at scale 10^9; and triangle-tent endpoint evaluation. Weight and
tent enclosures are rounded OUTWARD to S=10^12; signed endpoint
products are summed exactly on denominator S²=10^24. The 31
aggregate intervals are then rounded OUTWARD to denominator
10^9. Every one of the 365 occurrences is charged; most give
zero overlap at any fixed k. The widest output interval has
width 2/10^9, no unpriced source approximation. The single
cell k=16 (i=j=8) is explicitly
  -709891561/10^9 <= h_16 <= -709891560/10^9.
This is a source-negative odd prime direction, not a negative
full Weil quadratic-form value.

## 3. An independently replayed ACTUAL finite Loewner inequality

Define the MIDPOINT matrix
  M_ij=(L_(i+j)+U_(i+j))/(2*10^9).
The strict rational matrix
  B=M+(2749/1000)I                                 (4)
has all 16 leading principal minors POSITIVE. The independently
replayed complete fraction-free Bareiss algorithm uses the
INTEGER matrix
  Bnum_ij=L_(i+j)+U_(i+j)+1_(i=j)*5498000000
with positive common denominator 2*10^9.
Every division was exact, all sixteen pivots were strictly positive,
and all pivots matched the independently stored exact integers
in the static manifest. No sampling of vectors or eigenvalues
determines this certificate.

Sylvester's criterion (for a real symmetric matrix) therefore
proves B is positive definite on ALL real coefficient vectors.
The source interval implies
  |A_ij-M_ij|<=1/10^9 for ALL 256 matrix entries,
and hence by Cauchy--Schwarz
  ||A-M||_op <=16/10^9.
Since
  11/4 - 2749/1000 =1/1000 >16/10^9,
it follows without an unobserved finite-matrix row that

                A + (11/4) I is positive definite.        (5)

In the original physical odd L² norm,
  Delta_new(f) > -(11/8)*E(f)
for each nonzero f in the actual 16-cell step subspace.
The bound is dramatically sharper than using the unsigned new
prime half-mass W_new<70, but it is finite-subspace only.
It does NOT control the full L² orthogonal complement, the
gamma interaction, old prime phases, or mixed Schur blocks.
Those are the still-open consuming obligations for radius-four
PrimitiveStageLower.

## 4. Source/verification and hostile comparisons

The numeric source intervals and all sixteen exact integer
principal-minor pivots are stored in the attached manifest. The
two independent BigInt/Fraction determinant replays were executed
and agreed. The original 31 source enclosures were computed
using exact Fraction arithmetic, with the generation algorithm
fully specified above. An independent redo of every logarithm,
gamma/source connection and outward interval has NOT been completed
as a formal proof. The source's genuine finite Dirichlet character
and one-point source-weight identities are separately audited at
their existing repository scope.

This is NOT a complete Loewner sign for the 16-plus-billion
augmented annulus head from stage j=2; it is a new radius-four
365-atom collar observation. Nonnegative magnetic EDGE squares
alone would miss the signed onsite part that makes h_16<0.
The scalar positive outer filter and the broad core/collar
Schur return are independent source branches; no automatic
promotion from (5) to them is claimed. This arithmetic-projection,
exact interval and Sylvester mechanism is standard mathematics;
the finite source specialization is useful, but theorem novelty
and independent human assessment are not established.

All Lean declarations below are finite source-metadata and
rational-guard scripts, NOT a compiled proof of the 16x16
integer Bareiss process or the continuum integral identities.
The genuine 31 source inequalities and the finite Sylvester
criterion remain written/exact-computation evidence, with
compilation and kernel statuses explicit.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourOddTentHead

/-- Source-exact signed odd collar step: the original complex
character, von Mangoldt weight, and positive-half physical tent
are retained by `ConductorThreeRadiusFourCollarWitness.actualNewPrimeStep`.
The following list is the corresponding 31 exact OUTWARD rational
entry intervals in the full 16-cell observation matrix. -/
def entryIntervals : List (ℤ × ℤ) :=
  [ (0, 0), (0, 0), (0, 0), (0, 0), (0, 0),
    (0, 0), (0, 0), (0, 0), (0, 0), (0, 0),
    (0, 0), (0, 0), (0, 0), (0, 0), (0, 0),
    (445476118, 445476119),
    (-709891561, -709891560),
    (-367185211, -367185210),
    (41120664, 41120665),
    (-109213839, -109213838),
    (966329605, 966329606),
    (-240148211, -240148210),
    (-465194447, -465194446),
    (513856694, 513856695),
    (-535683676, -535683674),
    (-436331981, -436331979),
    (287411310, 287411312),
    (1185374060, 1185374061),
    (-483720183, -483720182),
    (-263789940, -263789938),
    (-453296212, -453296210) ]

/-- The complete finite Hankel source data is 31 anti-diagonals,
not a 256-entry independent resampling of prime coefficients. -/
theorem entry_count : entryIntervals.length = 31 := by
  decide

/-- Actual finite observed midpoint matrix with the PHYSICAL
orthonormal 16-cell basis, no substituted weight/Gram form. -/
noncomputable def midpointEntry (i j : Fin 16) : ℚ :=
  let v := entryIntervals.getD (i.val + j.val) (0, 0)
  ((v.1 : ℚ) + (v.2 : ℚ)) / (2 * 10 ^ (9 : ℕ))

theorem negative_eighth_cell :
    (entryIntervals.getD 16 (0, 0)).2 < (-7 : ℤ) * 10 ^ (8 : ℕ) := by
  decide

/-- Entire finite signed-source interval error, and the exact
remaining strict shift margin. The source intervals and 16 Bareiss
pivots are separate evidence in the static manifest. -/
theorem complete_interval_schur_margin :
    (16 / 10 ^ (9 : ℕ) : ℚ) <
      (11 / 4 - 2749 / 1000 : ℚ) := by
  norm_num

/-- Mathematical consumer when the source matrix and its complete
midpoint Sylvester sign are independently returned: the strict
positive margin is enough even after ALL 256 entry errors. -/
theorem scalar_margin_of_certified_midpoint (m e : ℝ)
    (hm : 0 ≤ m) (he : e ≤ 16 / 10 ^ (9 : ℕ)) :
    0 < m + (11 / 4 - 2749 / 1000 : ℝ) - e := by
  nlinarith

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourOddTentHead
