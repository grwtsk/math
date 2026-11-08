/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Source inspected: grwtsk/math@fdee2d433398325fa10209dcdd5c8273272a583a.
WRITTEN_ALL_INPUT_NEGATIVE_PART_SCHUR_COMPARISON_AND_ENTIRE_ITERATION_TAIL.
WHOLE_KZ_SIGN_AND_ORIGINAL_J3_OPEN.
Lean compilation, fresh kernel, transitive axiom audit: NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeRadiusFourWeightedSchurSource

/-!
# Negative-part return with all original physical old-U interactions

This source strengthens a lower comparison, not the original all-Z_F sign.
Reuse EXACTLY WeightedSchurSource Sections1--5: real odd physical
H=L2([-4,4],dt), whole-line zero extension, E=integral|f|^2;
Ff(xi)=integral f(t)exp(i xi t)dt, frequency measure dxi/(2pi).
The source parameters remain actual primitive nonprincipal chi3 modulo3,
conductor3, gamma parity1, no pole, ALL458 unramified atoms p^e<=2980,p!=3;
PH7990/2820,hH=1/(2*10^25), PL19000/1425,hL=153/(2*10^9),
w=PH^2(1-PL^2); D={30000000<|xi|<35*10^24} minus the two radius10
intervals centered +/-18524227541662946/10^7. No character/support changes.

Keep the original physical P23,Q,A23,C23,S,F,Uold,Z_F,D_U,B_U,T_Z and
K_Z=T_Z-B_U*D_U^-1B_U. In particular F=QV uses ALL odd Legendre
n<420000000000000000000000000 with actual Gram G; Uold has dimension
15159001. All coefficients, adjoints, projections and energies use that
physical metric, not raw coordinates. ALL z in the original Z_F are retained.
B=124997987/10^9, epsilon=5/10^54, b=B-epsilon.

On Y=ordinary odd frequency L2(D,dxi/(2pi)), the source constructs the SAME
bounded selfadjoint M=M_w, with ||M||<741 and
 L_F=b I_F+(K_w|F)* M (K_w|F), K_w=sqrt(w)F|D, ||K_w||<=1.
M contains the TRUE original P23 Schur correction; it is NOT multiplication
by raw s4 and its negative part must NOT be replaced by max(-s4,0).
Existing source proves ||K_w|Uold||^2<=c=1/49900 and a=b-741c>11/100.
These are the proved premises, no original K_Z positivity is assumed.

## Construction and uniform comparison

Bounded selfadjoint functional calculus on ALL Y defines
 M_-=max(-M,0), M_+=max(M,0), M=M_+-M_-, 0<=M_-<=741 I.
Define N=M_-^(1/2)(K_w|F):F->Y, N_U=N|Uold, N_Z=N|Z_F.
These are actual source-bound bounded real maps (or their complexifications).
Let Aminus=b I_U-N_U* N_U on ALL Uold, and
 J=N_U N_U*/b, Gminus=I_Y-J on ALL Y.
Then 0<=J<=rho I, rho=741/(49900b)<3/25<1,
Aminus>=a I and Gminus>=(1-rho)I. Thus both TRUE auxiliary inverses
exist. They are comparison objects, not replacements for original D_U^-1.

For EVERY u in Uold and z in Z_F, orthogonality and M_+>=0 give
 <L_F(u+z),u+z>>=b(E(u)+E(z))-||N_Uu+N_Zz||^2.       (1)
The right side completes its physical square EXACTLY as
 <Aminus(u-u0),u-u0>+b E(z)-<Gminus^-1 N_Zz,N_Zz>,
 u0=Aminus^-1 N_U* N_Zz.                              (2)
To verify (2), expand the square and use the bounded resolvent identity
 Gminus^-1=I+N_U Aminus^-1 N_U*.                       (3)
Multiplication of the right side of(3) by I-N_U N_U*/b gives I:
the remaining middle factor is
 Aminus^-1-b^-1 I-b^-1 N_U*N_U Aminus^-1=0,
by Aminus=bI-N_U*N_U. Selfadjointness gives both inverse identities.

Now choose the ACTUAL old-U minimizer u=-D_U^-1B_Uz in(1).
The original square-completion identity makes its left side exactly K_Z[z].
The square in(2) is nonnegative for this u, with no equality of u and u0
assumed. Hence the new unconditional ALL-INPUT source comparison is

 K_Z[z]>=b E(z)-<Gminus^-1 N_Zz,N_Zz> for EVERY z in Z_F. (4)

Thus ALL old-U interactions are retained through a rigorously bounded
auxiliary inverse, after discarding only a proved nonnegative M_+ term.
Every original P23 interaction remains inside the actual M. This is not an
assumption that an isolated compression controls mixed blocks.

## Complete inverse expansion with an explicit uniform error

Since ||J||<=rho<1, the ENTIRE operator-norm convergent Neumann series is
 Gminus^-1=sum_(j>=0)J^j.
For EVERY integer m>=0 and EVERY z in the SAME Z_F,
 0<=<Gminus^-1 N_Zz,N_Zz>-sum_(j=0)^m<J^j N_Zz,N_Zz>
   <=rho^(m+1)/(1-rho)||N_Zz||^2
   <=tau_m E(z), tau_m=741rho^(m+1)/(1-rho).            (5)
This follows by the full positive spectral geometric tail on [0,rho],
not by dropping any frequency, physical vector, or unobserved iteration.
Consequently the ACTUAL full original form obeys

 K_Z[z]>= (b-tau_m)E(z)-sum_(j=0)^m<J^j N_Zz,N_Zz>.    (6)

Exact rational arithmetic gives tau_64<10^-56. This controls the entire
unobserved old-U interaction expansion after65 terms, uniformly in ALL z.
It does NOT evaluate the65 retained quadratic terms or prove them small.
In particular no existing epsilon allowance is silently spent a second time.
Taking ||Gminus^-1||<=b/a and M_-<=741I in(4) recovers the old coarse bound
K_Z[z]>=bE(z)-(741b/a)||K_wz||^2. Formula(4) retains the true negative
spectral component instead of charging for all weighted Fourier mass.

## Heat, lossless representation, review and consumer

The new types M_-,M_+,N,N_U,N_Z,Aminus,J,Gminus have the domains, source
parameters, physical or frequency norms and ALL-input quantifiers above.
M_+/- are bounded spectral functions on ALL Y, including their zero modes.
Their bounded heat exp(-t M_+/-), t>=0, obeys the semigroup law and
operator-norm return toI; no spectral gap or inverse is asserted for them.
Aminus and Gminus have genuine positive spectral heat on ALL Uold and Y,
respectively, with norm bounds exp(-at) and exp(-(1-rho)t). Their inverse
integrals retain entire time tails exp(-aT)/a and
exp(-(1-rho)T)/(1-rho). N maps retain the existing descriptor branch-coverage
interface; no heat intertwining with K_w or the original source is assumed.
Equation(1) and the actual minimizer give the exact consumer/source comparison.
Positive heat alone provides no unshifted K_Z or arithmetic sign.

Reuse WeightedStage's exhaustive representable branch indexing with
pi_j=2^(-j-1), total1 and entire unobserved tail2^-J, and its proved inverse
source-return. Reuse PaidPacket.RetainedEvidence, with
 decodeRetained(retainedCodec.encode(data))=data,
for ALL representable dependent proof data: source/type/binder identity,
full spectral functional descriptions, parameters, certificates, ALL errors,
and universal iteration/time-tail laws. No arbitrary semantic real operator,
function or uncomputed enormous Gram entry is claimed finitely evaluated.
Finite descriptions do not discharge the remaining convergence or sign tasks.

Primary comparison: Friedrich--Guenther--Klotz, A generalized Schur complement
for non-negative operators on linear space, arXiv:1708.01545v1 (2017),
https://arxiv.org/abs/1708.01545 . Its general nonnegative setting supplies no
chi3 sign; the elementary bounded comparison and all inverse identities used
here are proved above. This is not an invocation of positivity of the full
source. Novelty NOT_ASSESSED. Hostile check: M need not be a multiplier;
u0 need not equal the true old-U minimizer; neither identification was used.
An exact hostile finite-dimensional test explains the remaining scope. On a
SEPARATE Euclidean toy F=R^2=U+Z and Y=R^2, take M=diag(-2,3),
K_U=(1/1000,1/1000), K_Zcolumn=(1/2,1/3), with the SAME scalar b.
Then ||K||<=||K||HS<1, ||K_U||^2=2/10^6<1/49900,
M is selfadjoint of norm3<741, the actual U block is b+1/10^6>11/100,
and the mixed block is -2/2000+3/3000=0. Its actual Schur value is
b-1/6<0. Thus the coarse norm/positive-head premises ALONE cannot prove
positivity; additional actual chi3 structure must be used. This is NOT an
instance of the actual chi3 source or a negative witness for its K_Z.
Only one analytical derivation is supplied; independent human review NOT_RUN.

Dependency advance on original branch
radiusFour.filteredMiddle.entireResidual.tailSchur.finiteGram.remainingSchur:
actual weighted source -> proved negative-part comparison(4) -> entire
mixed-interaction expansion/error(5),(6). This discharges those LOCAL lower
comparison and iteration-tail obligations, NOT the original sign. The next
missing bound is actual control of the retained negative-part quadratic terms
sufficient for K_Z>=0 on ALL original Z_F (or another justified signed bound).
An interface demanding that inequality is not its proof.

Original radius-four PrimitiveStageLower chi3 hp hn3 remains OPEN, as do RH
and the cofinal consumer requiring RH AND PrimitiveNegativeWitness AND ALL
SmallConductorStages for every primitive nonprincipal character. Its GRH family
is ALL complex Dirichlet characters modulo every positive integer, including
principal/imprimitive; every zero0<Re(s)<1 must haveRe(s)=1/2.
Universal results(1)--(6): complete WRITTEN proofs using native source premises.
Finite scalar checks are ordinary exact arithmetic. Compilation, fresh kernel,
transitive axiom audit and independent human review: NOT_RUN.
-/

set_option autoImplicit false
namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourNegativePartReturn

def b : ℚ := ConductorThreeRadiusFourWeightedSchurSource.shiftedBudget
def rho : ℚ :=
  741 * ConductorThreeRadiusFourWeightedSchurSource.projectedLeakUpper / b
def interactionTail (m : ℕ) : ℚ := 741 * rho^(m+1) / (1-rho)

theorem scalar_inverse_and_entire_tail_guards :
    0 < b ∧ 0 < rho ∧ rho < 3/25 ∧ interactionTail 64 < 1/10^56 := by
  norm_num [b, rho, interactionTail,
    ConductorThreeRadiusFourWeightedSchurSource.shiftedBudget,
    ConductorThreeRadiusFourWeightedSchurSource.originalBudget,
    ConductorThreeRadiusFourWeightedSchurSource.finiteMargin,
    ConductorThreeRadiusFourWeightedSchurSource.projectedLeakUpper]

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourNegativePartReturn
