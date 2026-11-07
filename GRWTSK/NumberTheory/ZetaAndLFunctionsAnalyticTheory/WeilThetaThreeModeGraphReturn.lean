/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.

Primary arithmetic source: Connes--Consani--Moscovici, "Zeta Spectral
Triples", arXiv:2511.22755v1 (3.19)--(3.20), with the EXACT
normalization in grwtsk/math WeilOddRootProjection and the supplied
theta-weighted arithmetic-jump-heat note (2026-11-06).

WRITTEN_ANALYTIC_ARGUMENT / INDEPENDENT_REVIEW_NOT_RUN
LEAN_CANDIDATE / COMPILATION_NOT_RUN / KERNEL_REPLAY_NOT_RUN
TRANSITIVE_AXIOM_AUDIT_NOT_RUN
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilThetaApproximateRadicalReturn
import Mathlib

/-!
# Three theta radical cutoffs converge in operator graph norm

## Actual source and the new analytical result

Let phi be the unchanged positive even rapidly decreasing theta kernel
normalized by fhat(phi)=Xi. Put
  dnu(t)=2*phi(t)*cosh(t/2)dt,
  tau(t)=tanh(t/2),
and let J_0 be the SOURCE-EXACT closed positive arithmetic jump form on
the ODD subspace H_odd of L²(nu). Let L_0 be its nonnegative
self-adjoint generator (the closed-form/Friedrichs realization).
The complete zeta form is, for odd g,
  q(g)=Q_zeta(phi*g)
      =J_0(g)-(1/2)||g||_nu²-(1/2)<tau,g>_nu².
Its self-adjoint operator, without any RH hypothesis, is
  A=L_0-(1/2)I-(1/2)|tau><tau|,
on Dom(L_0). This is a bounded self-adjoint perturbation of L_0.
The SOURCE theta-derivative radical supplies
  A(phi^(2j+1)/phi)=0
for each fixed j>=0, on the stated graph/form domains.
All analytical use of these source inputs retains their historical
WRITTEN/UNREVIEWED status; they are not kernel-checked by importing a
Lean source name.

Choose three independent actual radical vectors, for example
  v0=-2*phi'/phi,
  v1=(phi'''-phi'/4)/phi,
  v2=(phi^(5)-phi'/16)/phi.
Their Fourier numerators are distinct odd polynomials times Xi;
they are linearly independent, since Xi is not the zero entire
function. Each vj is real odd and belongs to Dom(A).

Fix an even smooth compact cutoff chi supported in [-1,1], equal to 1
on [-1/2,1/2], with 0<=chi<=1. For T>=1 set
  chi_T(t)=chi(t/T),  r_(j,T)=chi_T*vj.
Then every r_(j,T) is supported in [-T,T] and is a real odd test.

### Theorem (written analysis, NO spectral gap assumed)

Each r_(j,T) belongs to Dom(A) and
  ||r_(j,T)-vj||_nu + ||A r_(j,T)||_nu --> 0  as T-->infinity.
Consequently, for sufficiently large T, the three-column Gram
matrix G_T=(<r_(i,T),r_(j,T)>_nu) is positive definite. Let
  R_T: R^3 -> H, R_T c=sum_i c_i r_(i,T),
  U_T=R_T G_T^(-1/2),  P_T=U_T U_T^*.
Then P_T is an ORTHOGONAL projection onto the ACTUAL supported span
and its range is contained in Dom(A). For every supported odd
u in the full form domain,
  v=(I-P_T)u
is supported in the SAME window, stays in the same form domain, and
  ||v||_nu<=||u||_nu,
  |q(v)-q(u)|<=2 ||A P_T||_op ||u||_nu²,
  ||A P_T||_op -> 0  as T->infinity.
Thus the existing exact 1/16-stage source-return allowance from
WeilThetaApproximateRadicalReturn is eventually met on EVERY
supported test (not just a selected finite trial):
  |q(v)-q(u)| <= allowableSourceDefect * ||u||_nu²
for all T sufficiently large.

This constructs the massContractive and sourceReturnLower fields
for the three-mode cut-off projection in
ZetaApproximateRadicalInputs, on the genuine theta-weighted source.
It does NOT prove its other fields archTwo, residualPrime or pole,
and therefore does not establish the 1/16 whole-source floor,
the sharp 1/2 half-gap, RH, or Dirichlet GRH.

### Proof of the graph convergence: full prime inventory retained

The positive conductance form gives the exact weak generator
for smooth g, with w_n=Lambda(n)/sqrt(n), r_n=log(n):

 (L_0 g)(t)=(1/(2*cosh(t/2))) *
 [ integral_0^infinity kappa_0(r) *
      {phi(t+r)(g(t)-g(t+r))+
       phi(t-r)(g(t)-g(t-r))}dr
 + sum_(n>=2) w_n *
      {phi(t+r_n)(g(t)-g(t+r_n))+
       phi(t-r_n)(g(t)-g(t-r_n))} ].

The gamma singularity is integrable after its DIFFERENCE is formed.
For g=vj and r_T=chi_T*g, subtracting chi_T L_0 g yields
the exact commutator
  [L_0,chi_T]g(t) =
  (1/(2*cosh(t/2))) *
   [ integral_(r>0) kappa_0(r)
      {Fj(t+r)[chi_T(t)-chi_T(t+r)] +
       Fj(t-r)[chi_T(t)-chi_T(t-r)]}dr
   + sum_(n>=2) w_n
      {Fj(t+r_n)[chi_T(t)-chi_T(t+r_n)] +
       Fj(t-r_n)[chi_T(t)-chi_T(t-r_n)]}],
where Fj(t)=phi(t)*vj(t) is the fixed theta-derivative
linear combination. No prime powers, ramified terms or diagonal
contributions are silently deleted.

For T>=1, uniform boundedness and the Lipschitz cutoff give
 |chi_T(t)-chi_T(s)| <= C min(|t-s|,1).
Near zero kappa_0(r)=O(1/r), at infinity O(exp(-r/2)), so
  sup_(r>0) kappa_0(r)*min(r,1) < infinity.
All theta derivative combinations have ||Fj||_L1<infinity.
Thus the entire gamma commutator is bounded pointwise by
C/(cosh(t/2)), tends to zero for fixed t by dominated convergence,
and has an L²(nu)-majorant independent of T.

For the COMPLETE prime part, each Fj obeys the unconditional bound
 |Fj(s)| <= C exp(-2|s|).
For t>=0 split sum_n log(n)/sqrt(n)*|Fj(t-log(n))|
at n<=exp(t). The two terms are bounded by

  C exp(-2t) sum_(n<=exp(t)) (log n)*n^(3/2),
  C exp( 2t) sum_(n> exp(t)) (log n)*n^(-5/2).

Elementary integral comparisons bound both by C(1+t)exp(t/2).
The plus-shift sum is bounded by
  C exp(-2t) sum_(n>=2) log(n)*n^(-5/2).
By reflection the same holds for t<=0. Dividing by
2*cosh(t/2) gives a universal C(1+|t|) pointwise bound.
The prime commutator tends to zero at each fixed t because
chi_T(t)-chi_T(t +/- log n) ->0 for every n, and the
untruncated absolute series at fixed t converges.
The measure nu has superexponential tails, so
(1+|t|) belongs to L²(nu). Dominated convergence proves
  ||[L_0,chi_T] vj||_nu ->0.

The generator formula is justified first weakly on the smooth
compact form core, retaining each gamma and prime difference.
The displayed L² majorant then identifies chi_T*vj as an
operator-domain element by the closed-form representation theorem.
Finally, since A*vj=0,
  A(chi_T*vj) = [L_0,chi_T]vj +
     (1/2)*tau* (chi_T*<tau,vj>_nu -
                          <tau,chi_T*vj>_nu).
The second summand tends to zero in L²(nu), since chi_T->1
pointwise, is uniformly bounded, and tau,vj belong to L²(nu).
Also chi_T*vj ->vj in L²(nu). This proves graph convergence.

The Gram matrices converge entrywise to the strictly positive
Gram matrix of the independent vj; hence G_T^(-1/2)
remains bounded. Because
  ||A R_T||_op <= (sum_j ||A r_(j,T)||²)^1/2 ->0,
we obtain ||A P_T||_op ->0.

For an arbitrary form-domain u, set v=(I-P_T)u. The form
representation with P_T u in Dom(A), NOT the undefined Au on
a merely form-domain u, gives
  q(u)-q(v) = <A(P_T u),u> + <v,A(P_T u)>.
Both terms are bounded by ||A P_T||_op*||u||².
The same-domain and source-return claims follow.

### Evidence boundary

This is a NEW WRITTEN analytic argument relative to the cited project
notes, not a Lean-checked continuum result. It uses their theta positivity,
closed reference form, theta radical and weighted source identity as
SOURCE INPUTS, not as newly reviewed theorems. In particular there is
no assumption of Q>=0 or of L_0|odd >=(1/2)I.

It supplies TWO, not all five, original weighted-stage analytical fields,
and gives no explicit numerical T0 or certificate verifying the three
remaining signed readouts. A form-core property alone would not
justify operator-graph convergence: the commutator and L² majorant are
the actual extra analytic argument.

No repository execution, messaging, scheduling or external proof
automation is authorized by this mathematical statement.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage.ThreeModeGraph

open GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage
open GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory

/-!
## Exact finite Euclidean projection identity

These declarations are an independent algebraic consistency check on
the finite Gram-frame contraction. The actual L²(nu) and operator
graph-domain arguments are the written proof above, NOT a theorem
proven merely by checking the finite formula.
-/

/-- A normalized finite orthogonal-column projection has exact Pythagorean
mass conservation, so the residual mass is no larger than the original. -/
theorem finite_orthogonal_projection_mass {n : ℕ}
    (u r : Fin n → ℝ) (hr : (∑ i, (r i) ^ 2) = 1) :
    let c := ∑ i, u i * r i
    (∑ i, (u i - c * r i) ^ 2) + c ^ 2 =
      ∑ i, (u i) ^ 2 := by
  dsimp
  let c := ∑ i, u i * r i
  change (∑ i, (u i - c * r i) ^ 2) + c ^ 2 = ∑ i, (u i) ^ 2
  calc
    (∑ i, (u i - c * r i) ^ 2) + c ^ 2 =
      (∑ i, ((u i) ^ 2 - 2 * c * (u i * r i) +
         c ^ 2 * (r i) ^ 2)) + c ^ 2 := by
        congr 1
        apply Finset.sum_congr rfl
        intro i _
        ring
    _ = (∑ i, (u i) ^ 2) - 2 * c * (∑ i, u i * r i) +
          c ^ 2 * (∑ i, (r i) ^ 2) + c ^ 2 := by
        rw [Finset.sum_add_distrib, Finset.sum_sub_distrib]
        simp only [← Finset.mul_sum]
        ring
    _ = (∑ i, (u i) ^ 2) := by
        rw [hr]
        dsimp [c]
        ring

/-- The same exact finite projection is nonexpansive; no proof of
positivity of an unrelated quadratic form is hidden here. -/
theorem finite_orthogonal_projection_contracts {n : ℕ}
    (u r : Fin n → ℝ) (hr : (∑ i, (r i) ^ 2) = 1) :
    let c := ∑ i, u i * r i
    (∑ i, (u i - c * r i) ^ 2) ≤
      ∑ i, (u i) ^ 2 := by
  dsimp
  have h := finite_orthogonal_projection_mass u r hr
  dsimp at h
  nlinarith [sq_nonneg (∑ i, u i * r i)]

/-- A small graph residual produces the EXISTING approved one-sided
source-error allowance. The genuine universal graph estimate is proved
in the written analysis above and must still be formalized in Lean. -/
theorem graph_error_consumes_source_allowance
    (mass operatorError original compressed : ℝ)
    (hmass : 0 ≤ mass)
    (hgraph : |compressed - original| ≤ 2 * operatorError * mass)
    (hsmall : 2 * operatorError ≤
      (ApproximateRadical.allowableSourceDefect : ℝ)) :
    compressed -
      (ApproximateRadical.allowableSourceDefect : ℝ) * mass ≤ original := by
  have hscaled := mul_le_mul_of_nonneg_right hsmall hmass
  have hupper := (abs_le.mp hgraph).2
  linarith

/-- The already defined dependent codec retains SOURCE, WINDOW, FAMILY,
PARAMETERS, CERTIFICATE, ALL ERROR fields jointly. It does not encode
unrestricted continuum vectors. -/
def threeModeGraphCodec :
    Lossless (Sigma (fun _ : List ℕ => List ℚ)) ℕ :=
  rationalStageRecordCodec

theorem threeModeGraphCodec_roundtrip
    (r : Sigma (fun _ : List ℕ => List ℚ)) :
    threeModeGraphCodec.decode (threeModeGraphCodec.encode r) = some r :=
  threeModeGraphCodec.roundtrip r

/-- Exhaustive positive branch coverage, but not a source sign. -/
theorem threeModeGraph_record_covered
    {x : ℕ → ℝ} (hx : ∀ n, 0 ≤ x n)
    (hm : 0 < ∑' n : ℕ, x n)
    (r : Sigma (fun _ : List ℕ => List ℚ)) :
    ∃ n, Encodable.decode n = some r ∧ 0 < stageCoverageStep x n :=
  every_representable_branch_covered hx hm r

/-- No mass is silently discarded after a finite inspected prefix. -/
theorem threeModeGraph_coverage_tail (J : ℕ) :
    (∑' k : ℕ, stageCoverageWeight (J + k)) = (1 / 2 : ℝ) ^ J :=
  stageCoverageWeight_tail J

end GRWTSK.NumberTheory.WeilQuadraticForm.WeightedStage.ThreeModeGraph
