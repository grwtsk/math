/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

Actual arithmetic source: Connes--Consani--Moscovici,
"Zeta Spectral Triples", arXiv:2511.22755v1, (3.19)--(3.20).
Input: the existing WeilDirichletStageChain, WeilConductorFrontier,
WeilConductorThreeFiniteAnnulus, and PrimeOrbitWeightedWeilBridge.
Inspection baseline: grwtsk/math@c779a67fa824da8f9b75384f7d61c46baeb2ce1f.
Source-specific odd-edge analysis is written mathematics; only the explicitly
declared finite algebra and conditional source returns are Lean candidates.
AI-assisted mathematical drafting; independent analytical review NOT_RUN.
LEAN_COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeFiniteAnnulus
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeOddEdgeLoewner
import Mathlib.Tactic

/-!
# The next original conductor-three stage: odd-edge core and collar at T=4

## Original target and exact family

The next source target is precisely
`DirichletStageChain.PrimitiveStageLower modThreeQuadratic
  modThreeQuadratic_primitive modThreeQuadratic_nonprincipal 3`.
The allowed tests are every REAL ODD C2 compact original Admissible at radius
4, with physical L2(dt) mass. The required defect is 2^(-3)=1/8.
No new character, stage, Weil source, or weighted test metric is introduced.

The preceding `WeilConductorThreeFiniteAnnulus` reports the radius-three
stronger inequality Q_chi3,3 >= -(1/20)*E at WRITTEN
COMPUTER-ASSISTED scope, not as a compiled analytic Lean theorem.
Here it remains a separately quantified hypothesis when consumed.

## Exact newly active arithmetic source

At T=3 the native prime correlation is supported by 2<=n<exp(6);
at T=4 by 2<=n<exp(8). For every n=p^e, p prime other than 3,
the ORIGINAL coefficient is w_n=log(p)/sqrt(p^e), with real character
beta_n=chi3(p^e) in {-1,+1} (not an independent phase per power).

Exact rational Taylor bounds give
  403 < exp(6) < 404,
  1096 < exp(7) < 1097,
  2980 < exp(8) < 2981.
For x=6,7,8, let S_45(x)=sum_(k=0)^45 x^k/k!. Positivity and
successive tail ratios bounded by x/47 give
  S_45(x) < exp(x) <
       S_45(x) + [x^46/46!]/[1-x/47].
Each of these rational brackets lies strictly inside the displayed
consecutive integers (independently checked with Fraction arithmetic).

A SECOND exact integer enumeration forms pairs (p,e) with
p<=2980 prime, p!=3, 1<=e<=11, p^e<=2980. The multiplicative source
has UNIQUE prime/power tagging, and e>=12 gives p^e>=4096.
The source counts are:

 * n<=403: 93 original unramified prime powers;
 * 404<=n<=1096: 110 NEW early odd edges, 6<log n<7;
 * 1097<=n<=2980: 255 NEW late odd edges, 7<log n<8;
 * total at T=4: 458; newly active: 365.

The finite inventory definition below is an INDEX/COMPARISON object,
not an alternate definition of the source prime sum. The counts and
the exp brackets are certified by standalone exact rational arithmetic;
their total Lean evaluation has NOT_RUN status.

Exact rational weights can also be bounded without sampling primes.
For integer p, let p=2^k*v with 1<=v<2 and
y=(v-1)/(v+1)<=1/3. The 16-term atanh identity bounds
log(p) between k*L16(1/3)+L16(y) and the corresponding upper sums, with
  L16(z)=2*sum_(j=0)^15 z^(2j+1)/(2j+1),
  tail <= 2*z^33/[33*(1-z^2)].
For n=p^e, let h_n=floor(sqrt(n*10^18)). Then
sqrt(n)>=h_n/10^9 and consequently
  w_n <= logUpper(p)*10^9/h_n.
The full Fraction summation over the exact tagged inventory gives
  W_early=sum_(404<=n<=1096) w_n < 27,
  W_late =sum_(1097<=n<=2980) w_n < 43.
The unrounded diagnostics are about 26.11577566145361 and
42.99857729890598, respectively. Those decimals are summaries only;
the comparisons use rational bounds and integer square roots.

## Exact odd-reflected physical edges at the new support

Let f be REAL ODD, supported in [-4,4], and u=f|(0,4).
For 4<r<8 the ORIGINAL correlation has the identity

  C_f(r) = - integral_(r-4)^4 u(t)*u(r-t)dt.                 (1)

Indeed the overlap t in [-4,4-r] crosses from the negative half to the
positive half. Substitution t -> -t produces the displayed MINUS sign,
which must not be changed to a positive correlation.

When 6<r<7, split (1) at 3 and r-3:

 C_f(r) = -2*integral_(r-4)^3 u(t)*u(r-t)dt
          - integral_3^(r-3) u(t)*u(r-t)dt.                 (2)

The first term couples ONLY the radius-three core strip (2,3) to the
outer collar (3,4). The second stays entirely in the collar.
When 7<=r<8, (1) involves ONLY the collar (3,4).
In particular the 365 new terms have zero core-core block for
the physical decomposition at radius three. The 255 late terms have
zero core-collar block as well.

The original NEW prime contribution is
  Delta_new(f)=-2*sum_new w_n*beta_n*C_f(log n)
              = 2*sum_new w_n*beta_n
                  *integral_(log n-4)^4 u(t)u(log n-t)dt.     (3)

Because beta_n^2=1, every term has the exact signed magnetic-edge
representation

  2*w*beta*x*y = w*(x+beta*y)^2-w*x^2-w*y^2.                (4)

Integrating (4) on the entire actual overlap (not an invented boundary
graph), the two endpoint masses agree by reflection, so

  Delta_new(f) =
     sum_new w_n*integral_(log n-4)^4
              (u(t)+beta_n*u(log n-t))^2 dt
     -2*integral_2^4 d_new(t)*u(t)^2 dt,                    (5)

where d_new(t)=sum_{new:log n<=t+4} w_n for 2<t<4.
The first term is NONNEGATIVE, but the negative diagonal is compulsory.
Thus no positive-edge-to-global-RH inference is made.

In particular the new signed source obeys the unconditional
LOCALIZED bound

 Delta_new(f) >= -2*27*||u*1_(2,3)||²
                 -2*70*||u*1_(3,4)||².                    (6)

Equivalently, after restoring both odd halves, the coefficients are
-27 and -70 against the PHYSICAL squared norms on the two shells.
The upper absolute cross bound from (2) is

 |Delta_new(f)| <=
       4*27*||u*1_(2,3)||*||u*1_(3,4)||
       +2*70*||u*1_(3,4)||².                                (7)

(6)--(7) are complete SOURCE estimates from all 365 new atoms, not
finite observation samples. They are too coarse to establish the
required -1/8 stage by themselves.

## Exact first unsupported implication: core/collar Schur sign

For an ODD f decomposed in the full logarithmic FORM domain as
f=f_core+f_collar with orthogonal physical supports |t|<=3 and
3<|t|<=4, write x=||f_core||, y=||f_collar|| and

  Q4(f)=Q4(f_core)+Q4(f_collar)+2 Re Q4(f_core,f_collar).

If the radius-three physical bound -E/20 extends to the resulting
piecewise C2 core (the endpoint/domain extension must be justified),
then Q4(f_core)>=-x²/20: the genuine source is unchanged on its
support, because every new prime correlation vanishes there.

It is therefore sufficient to establish, for all such physical
core/collar vectors, a POSITIVE collar floor c and mixed bound b:

  Q4(f_collar) + y²/8 >= c*y²,
  |Q4(f_core,f_collar)| <= b*x*y,
  c>0, b² <= (3/40)*c.                                      (8)

The scalar Schur theorem below proves
  Q4(f)>=-(1/8)*(x²+y²)
using the explicit core margin 1/8-1/20=3/40.
The actual archimedean jump coupling, old 93 prime shifts and new
110 early odd edges ALL remain in Q4's mixed block. The 255 late
edges act only on the collar. The full-domain collar floor and
the core/collar mixed estimate (8) have NOT been established.
In particular discontinuous hard restriction at |t|=3 changes the
test regularity; the stage-two C2 assertion cannot silently be used
as a form-domain theorem. A smooth overlapping partition requires
its own nonorthogonal norm and mixed-term accounting.

The directly formalized core-inheritance lemma uses only ORIGINAL
C2-supported tests and the existing
`primitiveArithmeticValue_eq_of_le`; it therefore does not assume
the missing piecewise-domain extension.

## Formal/evidence and novelty boundary

Lean declarations below are algebra and conditional original-source
returns; no theorem of the stage j=3 inequality or universal analytic
integral identity has been Lean checked. The numerical inventory and
weight bounds were independently computed in exact integer/Fraction
arithmetic, but their implementation and whole-source identification
still require independent review. The reflection, correlation split,
positive-graph representation, and Schur completion are standard
mechanisms; no priority or theorem-level novelty is claimed.
This source is one additional consumer-backed research increment, not
a proof of Dirichlet GRH or RH.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourOddEdges

open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreePrimitiveGauss
open GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeOddEdgeLoewner

/-- Retains source prime/power occurrence identity, not a new arithmetic
Weil coefficient. 2^12 exceeds the radius-four integer cutoff. -/
def sourceAtomPairs (bound : ℕ) : Finset (ℕ × ℕ) :=
  (((Finset.range (bound + 1)).filter
    (fun p => Nat.Prime p ∧ p ≠ 3)).product (Finset.Icc 1 11)).filter
      (fun pair => pair.1 ^ pair.2 ≤ bound)

def earlyNewAtoms : Finset (ℕ × ℕ) :=
  (sourceAtomPairs 1096).filter (fun pair => 403 < pair.1 ^ pair.2)

def lateNewAtoms : Finset (ℕ × ℕ) :=
  (sourceAtomPairs 2980).filter (fun pair => 1096 < pair.1 ^ pair.2)

/-- The exact ORIGINAL next target, recorded as an abbreviation only. -/
abbrev StageThreeTarget : Prop :=
  DirichletStageChain.PrimitiveStageLower modThreeQuadratic
    modThreeQuadratic_primitive modThreeQuadratic_nonprincipal 3

/-- A single unramified odd-reflected edge, with the original signed
character coefficient. The negative diagonal is NOT discarded. -/
theorem odd_reflected_edge_reconstruction (beta w x y : ℝ)
    (hbeta : beta ^ 2 = 1) :
    w * (x + beta * y) ^ 2 - w * (x ^ 2 + y ^ 2) =
      2 * w * beta * x * y := by
  have hsq : (x + beta * y) ^ 2 =
      x ^ 2 + beta ^ 2 * y ^ 2 + 2 * beta * x * y := by ring
  rw [hsq, hbeta]
  ring

/-- The exact sum of a signed collection of odd-reflected source edges.
Nonnegativity of the edge squares does not assert nonnegativity of the
signed original prime energy. -/
theorem finite_odd_reflected_edge_reconstruction
    {ι : Type*} (s : Finset ι)
    (beta w x y : ι → ℝ)
    (hbeta : ∀ i ∈ s, beta i ^ 2 = 1) :
    (∑ i ∈ s, (w i * (x i + beta i * y i) ^ 2 -
         w i * (x i ^ 2 + y i ^ 2))) =
      ∑ i ∈ s, 2 * w i * beta i * x i * y i := by
  apply Finset.sum_congr rfl
  intro i hi
  exact odd_reflected_edge_reconstruction (beta i) (w i)
    (x i) (y i) (hbeta i hi)

/-- Exact magnetic-edge lower bound, retaining the required onsite
negative mass. A positive graph edge is not the Weil source alone. -/
theorem finite_odd_edge_floor
    {ι : Type*} (s : Finset ι)
    (beta w x y : ι → ℝ)
    (hbeta : ∀ i ∈ s, beta i ^ 2 = 1)
    (hw : ∀ i ∈ s, 0 ≤ w i) :
    -(∑ i ∈ s, w i * (x i ^ 2 + y i ^ 2)) ≤
      ∑ i ∈ s, 2 * w i * beta i * x i * y i := by
  have hposit : 0 ≤ ∑ i ∈ s, w i * (x i + beta i * y i) ^ 2 := by
    apply Finset.sum_nonneg
    intro i hi
    exact mul_nonneg (hw i hi) (sq_nonneg _)
  have heq := finite_odd_reflected_edge_reconstruction
    s beta w x y hbeta
  simp_rw [Finset.sum_sub_distrib] at heq
  linarith

/-- Exact scalar consumer for the remaining radius-four collar
estimate. Its hypotheses are NOT established for the original
archimedean-plus-arithmetic operator by this module. -/
theorem radius_four_core_collar_schur
    (x y Qcore Qcollar Qcross b c : ℝ)
    (hc : 0 < c) (hdet : b ^ 2 ≤ (3 / 40 : ℝ) * c)
    (hcore : -(1 / 20 : ℝ) * x ^ 2 ≤ Qcore)
    (hcollar : (c - 1 / 8) * y ^ 2 ≤ Qcollar)
    (hcross : -(b * x * y) ≤ Qcross) :
    -(1 / 8 : ℝ) * (x ^ 2 + y ^ 2) ≤
      Qcore + Qcollar + 2 * Qcross := by
  have hschur := ConductorThreeAnnulusSine.scalar_schur_nonnegative
    (3 / 40 : ℝ) b c x y hc hdet
  nlinarith

/-- The genuine radius-three *strong* floor, when available at its
claimed analytic scope, persists on the SAME radius-three supported
C2 tests even when viewed at the radius-four source. This does not
include arbitrary radius-four collar tests or hard-cutoff jumps. -/
theorem radius_three_core_keeps_strong_floor
    (hstrong : ∀ f : ℝ → ℝ,
      DirichletStageChain.Admissible modThreeQuadratic 3 f →
        -(1 / 20 : ℝ) * energy (DirichletStageChain.liftReal f) ≤
          primitiveArithmeticValue modThreeQuadratic
            modThreeQuadratic_primitive modThreeQuadratic_nonprincipal
            3 (DirichletStageChain.liftReal f))
    (f : ℝ → ℝ)
    (hf : DirichletStageChain.Admissible modThreeQuadratic 3 f) :
    -(1 / 8 : ℝ) * energy (DirichletStageChain.liftReal f) ≤
      primitiveArithmeticValue modThreeQuadratic
        modThreeQuadratic_primitive modThreeQuadratic_nonprincipal
        4 (DirichletStageChain.liftReal f) := by
  have hsource := hstrong f hf
  rcases hf with ⟨_, _, _, _, _, hsupport, _⟩
  have heq := primitiveArithmeticValue_eq_of_le modThreeQuadratic
    modThreeQuadratic_primitive modThreeQuadratic_nonprincipal
    hsupport (show (3 : ℝ) ≤ 4 by norm_num)
  have hmass : 0 ≤ energy (DirichletStageChain.liftReal f) :=
    integral_nonneg (fun _ => sq_nonneg _)
  rw [← heq]
  nlinarith

/-- Distinct stage budgets and the positive core margin, exact rationals. -/
theorem stage_three_core_margin :
    (1 / 8 : ℚ) - 1 / 20 = 3 / 40 ∧
      (1 / 20 : ℚ) < 1 / 8 ∧ (27 + 43 : ℚ) = 70 := by
  norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourOddEdges
