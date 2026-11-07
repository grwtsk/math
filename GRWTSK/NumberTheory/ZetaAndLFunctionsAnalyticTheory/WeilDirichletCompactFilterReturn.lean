/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors

Source baseline: grwtsk/math 5b0f616868bd2596306744e061ce0798fda64d34.
Analytic source audit began at b916f67484e9387432b3ce00075ef5196c9d9ecf;
the consumed StageChain, ConductorFrontier and ZetaOddTransform are unchanged.
Analytical sources: D. Fiorilli and S. J. Miller, "Low-lying zeros of
Dirichlet L-functions", author manuscript June 18, 2012, equation (2.2);
M. A. Bennett, G. Martin, K. O'Bryant and A. Rechnitzer, "Counting Zeros
of Dirichlet L-Functions", Math. Comp. 90 (2021), Theorem 1.1;
NIST DLMF 25.15.4--5 and 5.9.16.

WRITTEN_ANALYTIC_PROOF / HUMAN_INDEPENDENT_REVIEW_NOT_RUN
LEAN_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN
TRANSITIVE_AXIOM_AUDIT_NOT_RUN
-/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDirichletStageChain
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilZetaOddTransform

/-!
# A compact-filter proof of the actual primitive negative-witness return

This gives a WRITTEN proof of `DirichletStageChain.PrimitiveNegativeWitness`
and exponential compact-test instability, without using a noncompact test,
division by the completed entire function, or weighted-source continuity.
The Lean declarations at the end prove only the final stage/conductor return
from an actual negative test. They do NOT formalize the analytic construction.

## Exact target, branch types and source

The target GRH is `Conditional.DirichletGRH`: every complex Dirichlet
character modulo every positive integer, with every zero in 0<Re(s)<1
on Re(s)=1/2. It is not a Hecke or automorphic GRH. The primitive principal
sector is zeta and has its separate RH source. Imprimitive sectors return
by the inducing-character Euler identity, whose additional factors are
nonzero on Re(s)>0. All primitive nonprincipal sectors below are included,
both gamma parities and genuinely complex characters.

Retain the existing contracts, without replacing their carriers:

* `PrimitiveNegativeWitness`: for every q>0, primitive nonprincipal chi
  and off-line open-strip zero rho, an existential T>0 and REAL odd test
  satisfying `Admissible chi T f`, with `primitiveArithmeticValue < 0`.
* `PrimitiveStageLower chi hp hn j`: for EVERY such admissible test at
  radius j+1, Q_chi(f) >= -2^(-j) E(f).
* `SmallConductorStages chi hp hn`: for EVERY j with
  chi.conductor < conductorFrontier(j+1), the preceding stage assertion.
* `OddLiteralCofinal.StageLower j`: the separate real odd measurable
  physical-L2, zero-extended, finite-gamma-form domain at radius j+1,
  including the zeta odd pole. No C2-only result covers that full domain.

Here E(f)=integral |f(t)|^2 dt is ALWAYS physical Lebesgue mass. For the
primitive sectors put a_chi=0 or 1 according to chi(-1), and use exactly

  Q_chi,T(f) = [log(q/pi)+psi(1/4+a_chi/2)] E(f)
    + integral_(r>0) exp(-(a_chi+1/2)r)/(1-exp(-2r))
                       * ||f(.+r)-f||_2^2 dr
    - 2 sum_(n>=2) Lambda(n)/sqrt(n) Re(chi(n)) C_f(log n),
  C_f(r)=integral f(t)f(t+r)dt.

For support [-T,T], C_f(r)=0 at r>=2T, including the null overlap at
equality. Thus this prime sum is EXACTLY the source's strict active
prime-power sum, with no endpoint or unobserved arithmetic tail omitted.
It is `primitiveArithmeticValue chi hp hn T (liftReal f)`.

All source parameters q, chi, parity, normalization, support and physical
mass remain fixed. The proof uses the native positive angular transform
F(z)=integral f(t) exp(i*z*t)dt, as in `WeilZetaOddTransform`.

## 1. The compact explicit formula, for an individual complex character

Write Lambda_chi(s)=(q/pi)^((s+a_chi)/2) Gamma((s+a_chi)/2)L(s,chi).
For primitive nonprincipal chi it is entire. Euler nonvanishing together
with the primitive functional equation and the nonvanishing on Re(s)=1
puts its completed zeros in the OPEN critical strip. The latter whole
line fact is the native Mathlib `LFunction_ne_zero_of_one_le_re`; DLMF
25.15.9 alone states only nonvanishing at the real point 1.

Let Z_chi be its ACTUAL zero divisor in z=(rho-1/2)/i coordinates, with
positive integer multiplicities m_z. In particular |Im z|<1/2. For a REAL
ODD compact C2 test f, the individual compact-test explicit formula is

            (Q_chi,T(f) : Complex) = sum_(z in Z_chi) m_z F(z)F(-z),
                    Q_chi,T(f) = Re sum_(z in Z_chi) -m_z F(z)^2.     (1)

There is NO half in (1). Averaging chi and its conjugate instead gives
one half of the divisor of Lambda_chi * Lambda_chibar, even for real chi.
We never assume that an individual complex-character divisor is even.

Normalization check: apply Fiorilli--Miller (2.2), before any family
averaging or GRH-dependent density assertion, with log Q=1 and its even
compact test C_f. Their exp(-2*pi*i*x*y) transform at z/(2*pi) equals
F(z)F(-z). Their gamma variable change r=2*pi*x gives
2 integral kappa_a(r)[C_f(0)-C_f(r)]dr. This is precisely the jump energy
above. Their prime coefficient is Re chi(n). Since C_f is real, it is
also the source's Re(conj chi(n)*C_f(log n)). This checks every factor,
gamma parity and conjugation against the original source.

One can also derive (1) by the residue theorem with
H(s)=F((s-1/2)/i)F(-(s-1/2)/i), for which H(1-s)=H(s).
Reflecting the left contour by the primitive functional equation gives
the right-line logarithmic derivatives of BOTH chi and chibar, without
halving the single-chi residues. Their Euler series and the digamma
integral give exactly the same source. Compact C2 transforms have an
inverse-square bound on each fixed horizontal strip; their products
decay to fourth order, so the zero sum converges absolutely. Contour
heights avoiding zeros follow from the classical zero count. No GRH
assumption occurs in this compact formula.

## 2. Every unobserved zero is retained in a conductor-explicit bound

For primitive q>1, Bennett--Martin--O'Bryant--Rechnitzer Theorem 1.1
implies, for every U>=20,

                         N_chi(U) <= U log(q(U+2)).                  (2)

Indeed ell=log(q(U+2)/(2*pi))>1.567. Put L0=log(q(U+2)). The upper
error is at most .22737*L0+2*L0, the main term at most (U/pi)*L0,
and the remaining constant at most -1/4. Since 1/pi<1/3 and U>=20,
U/pi+2.22737<U. These inequalities also cover the smallest q=2.

The head |Re z|<=20 contributes at most 20 log(22q) to
M_chi=sum m_z/(1+|z|^2). On the entire kth annulus
20*2^k < |Re z| <= 40*2^k, (2) bounds its contribution by
(1/10)*2^(-k)[log(42q)+k log 2]. Sum ALL k>=0. Hence

                  M_chi <= 20 log(22q)+(1/5)log(84q)
                        < 21 log(84q).                            (3)

Endpoints are assigned once. Both ordinate signs and all multiplicities
are counted. Boundary roots were excluded above, so (3) covers the same
divisor as (1), not a smaller zero carrier.

## 3. Construct an exact finite inner filter before damping its full tail

Let a=(rho-1/2)/i be the given nonreal zero, v=|Im a|>0, and
O={a,-a,conj a,-conj a} AS A SET; axial coincidences are deduplicated.
Use `RealWeilSource.exists_even_real_paperFT_eq_one` to obtain a REAL
even compact C2 b with B(a)=1. Choose S>0 containing its support and
beta=max(1,||b||_1). Evenness and reality give B=1 everywhere on O.

For any chosen L>0, inverse-square strip decay permits a finite R0>|a|
such that |B(z)|<=exp(-L) whenever |Re z|>R0, |Im z|<=1/2. Let W
be ALL distinct actual chi-zero ordinates in the inner window outside O.
It is finite by (2). Choose a nonzero small translate d with |d Re z|<pi
for a and every w in W. The native
`exists_odd_witness_on_finite_window` constructs a REAL odd compact C2 g
with G(a)=1 and G(w)=0 for EVERY w in W. Its finite real cosine polynomial,
antisymmetric translate and real affine normalization retain these zeros.
For an axial a, real scalar normalization suffices. Thus G=+/-1 on O.

Choose A>0 containing supp g and D>=0 with
|G(z)|<=D/(1+|z|^2) throughout |Im z|<=1/2, using native
`exists_paperFT_decay`. A need NOT equal S: cosine filters enlarge support.
The choices are ordered b, L, R0, W, g, A, D. In particular increasing
the convolution power below never changes the finite window or g.

For N>=1 put u_N=g*b^{*N}. The existing convolution specifications
prove that it is real odd compact C2 with transform G*B^N. It has support
radius at most A+NS and physical norm at most ||g||_2 beta^N by Young.
At every actual zero in O its term in (1) is -m_z; every inner zero
outside O has term zero. The ENTIRE outer divisor satisfies

 sum_(|Re z|>R0) m_z |G(z)B(z)^N|^2
       <= D^2 exp(-2LN) M_chi
       <= 21 D^2 log(84q) exp(-2LN).                               (4)

Choose N so the last bound is <1/2. Since the selected actual orbit
has total multiplicity at least one, (1) gives Q_chi(u_N)<-1/2.
This is already an actual compact negative witness.

All Admissible clauses hold: compact C2 implies physical L2 and compact
support; oddness is preserved; for r>0,
||f(.+r)-f||_2^2 <= min(r^2||f'||_2^2,4||f||_2^2).
The gamma kernel is O(1/r) at zero and exponentially decreasing at
infinity, so its entire required integral is finite. This proves exactly
`PrimitiveNegativeWitness` in WRITTEN mathematics.

## 4. Quantitative compact-only amplification on every large support

This also supplies a second analytical route to the written instability
theorem of `WeilDirichletOddWitnessAmplification`. Fix 0<kappa<2v and choose

                    L > (kappa*S+2 log beta)/(2v-kappa).

Make the preceding choices with this L. For r>=0 set
N=floor(r/L)+1, exactly the native positive-power index n=floor(r/L).
Thus N>=r/L and N<=r/L+1; no convolution with a fictitious zeroth
distribution is used. Let

             w_r(t)=[u_N(t-r)+u_N(t+r)]/2.

It is real odd, radius <=A+NS+r, and has transform
cos(rz)G(z)B(z)^N. If Re a!=0, take r=k*pi/|Re a| with integer k>=0;
for axial a take every r>=0. At EVERY actual divisor point in O the
negative square is -cosh(vr)^2, with its own multiplicity. This checks
the source SIGN, not an absolute-square replacement.

Since |cos(rz)|^2<=exp(r) on the actual half-width strip, (4) now gives
the entire outer error <=C exp(r-2LN)<=C exp(-r),
C=21 D^2 log(84q). Therefore, for all sufficiently large aligned r,

                Q_chi(w_r) <= -(1/8)exp(2vr).

The physical norm bound is ||w_r||_2<=||g||_2 beta^N, and ||g||_2>0
because G(a)=1. Define f_r=w_r/(||g||_2 beta^N). This normalization
uses the ORIGINAL physical norm and exact quadratic homogeneity. It gives

 ||f_r||_2<=1,    Q_chi(f_r)<=-c0 exp((2v-2 log(beta)/L)r),
 c0=1/(8||g||_2^2 beta^2)>0,
 radius(f_r)<=A+S+(1+S/L)r.

For every sufficiently large T choose the largest aligned r below
(T-A-S)/(1+S/L). It is within Delta=pi/|Re a| of that upper value;
in the axial case use the upper value itself and Delta=0. Thus there
exist c>0,T0 such that for EVERY T>=T0 an actual Admissible test has

                       E(f_T)<=1,   Q_chi,T(f_T)<=-c exp(kappa*T).    (5)

All choices and constants depend on the actual chi, rho and kappa.
There is no claimed uniformity, effective zero enumeration or hidden
maximum-real-part zero. The full outer divisor is paid in (4), before
normalization. No noncompact explicit formula or weighted metric occurs.

## 5. Exact return to the consuming cofinal branch

At T=j+1, (5) is strictly below -2^(-j) for EVERY sufficiently large j,
because (kappa+log 2)j+kappa+log c>0 eventually. As E(f_T)<=1, it is
strictly below -2^(-j)E(f_T). Hence `PrimitiveStageLower chi hp hn j`
FAILS for every sufficiently large j. The existing large-conductor
nonnegativity theorem simultaneously forces
chi.conductor < conductorFrontier(j+1); these are actual failures in
the small-conductor supplier, not an unrequested replacement branch.

The Lean theorems below prove precisely this last local return, given
the actual admissible test. The analytic construction (1)--(5) is still
WRITTEN, not an elaborated Lean proof term for PrimitiveNegativeWitness.
Combining its written result with the EXISTING all-small-stage consumer
and SEPARATE zeta stage chain yields the original Dirichlet GRH target
ONLY WHEN those universal lower-bound suppliers have themselves been
proved. They remain open, including the full-radius-three chi_3 stage.

## Heat and lossless representable proof data

Heat used here has ONLY the role of branch coverage. It is not a step
in (1)--(5) and proves no sign. For each of the preceding mathematical
types, let its representable data be finite, typed proof syntax, with
source revision, declaration/type tags, binding context, q, exact
root-of-unity character table, parity, Fourier and physical-norm tags,
support, L,R0,W-definition,N,r, all constants, all error/tail laws, proof
references and their separate evidence statuses retained as fields.
The infinite divisor and hypothetical arbitrary complex zero are represented
by their source definitions and BOUND variables, not by invented finite
binary values or an omitted convergence obligation. Ill-typed or unproved
syntax does not become accepted evidence by being representable.

Concretely, a descriptor is a product SourceRef * SectorDesc * Role *
Option Nat. SourceRef is a finite string triple (repository, revision,
declaration). SectorDesc is zeta or a positive q, a q-entry exact character
table and parity. Role is one of the four contracts listed above. Packet i
is a tuple of finite binder context, theorem/proof syntax trees, exact
error/tail syntax trees and a finite evidence-status record, all tagged
with descriptor i. Syntax has bound-variable, named-constant, application,
binder and exact-literal constructors; it contains no semantic real-value
constructor. Finite products, lists and recursive finite tagged trees
are Encodable by constructor tags and recursive list encoding. This
constructs the mathematical instance; its Lean datatype implementation
is NOT claimed here. For example the chi_3 table, its odd parity and the
universal root binder with all hypotheses in this written proof give an
actual finite record, with no assertion that an off-line root exists.

Use the EXISTING `WeightedStage.dependentProofCodec` on the dependent
total type R=Sigma Packet of these finite descriptions. Its law
is decode(encode x)=some x. On the encoder image define decodeImage by
the unique successful decode; injectivity follows by applying decode.
Then decodeImage(encode x)=x, preserving every field AND its dependent
type/context. No assertion that arbitrary real functions or all real
parameters are Encodable is made. Encoding a finite source expression
does not evaluate its root set or remove (2)--(4).

For exhaustiveness of the arithmetic sectors, put d=phi(q). At nonunits
use table value 0; at a unit use the unique exponent e in {0,...,d-1}
with chi(n)=exp(2*pi*i*e/d), stored as e+1. Lagrange's theorem on the
unit group proves that every actual character admits this exact finite
table. Conversely multiplicativity of exponents modulo d defines the
original character. Keep primitivity and nonprincipality as their actual
hypotheses. Enumerating all q, finite tables, roles and stages therefore
exhausts the required sectors; validity is a separate predicate.

Index every representable branch by its Encodable natural code, retaining
invalid/unused codes with their status. This is exhaustive because decode
of each actual encode returns that branch. Native coverage pi_n=2^(-n-1)
has positive weights, sum 1, and ENTIRE unobserved tail after J equal to
2^(-J). On summable states x the native Kx=(x+(sum x)pi)/2 preserves
mass; hence the exact source-return law is x=2Kx-(sum Kx)pi, pointwise.
These laws follow from the geometric series and the native mass theorem.
They apply to the syntax of every branch/type above and never assert
that positive coverage proves its arithmetic sign or closes a proof.

A genuine finite-description heat instance is x=c*pi+r, c rational and r
finitely supported rational. This representation is unique, since pi has
infinite support. Its exact k-step update is
(c,r) -> (c+(1-2^(-k))*sum r, 2^(-k)*r), with inverse
(c',r') -> (c'-(2^k-1)*sum r', 2^k*r'). Substitution proves both
roundtrips, with all finite tail exceptions retained. Its full tail is
c*2^(-J)+sum_(n>=J) r_n. Thus neither the representation nor heat drops
an unobserved coordinate. These are coverage laws, not source positivity.

## Comparison, assurance and next missing mathematics

The primitive odd-test root criterion is classical; no novelty claim is
made. This compact-filter argument reuses the actual GRWTSK zeta Fourier
helpers in every primitive sector. Its full-tail and amplification route
is distinct from the completed-function quotient, inverse transform and
weighted cutoff route in the earlier module; both SHARE the compact
explicit formula. Agent mathematical audits checked the axial root,
complex-sector multiplicities, Fourier sign, half-width strip, power
index and unequal support radii. Independent human review, compilation,
fresh kernel checking and transitive axiom auditing are NOT_RUN.

The next arithmetic obligation remains a genuine full-domain source
lower bound: for chi_3 at j=2, Q_chi3,3(f)>=-E(f)/4 for EVERY original
Admissible test. The previously isolated complementary-frequency bound
is still unproved. Neither (5), finite zero checks, branch heat nor
lossless coding supplies that sign. All cofinal zeta and remaining
primitive-character stage families also remain outstanding.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletCompactFilterReturn

open DirichletStageChain SourcePrimeCorrelation

/-- A unit-physical-mass negative test refutes the exact original stage.
The analytic construction of such tests is the written argument above. -/
theorem negative_unit_witness_refutes_stage
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (j : ℕ) (f : ℝ → ℝ)
    (hf : Admissible χ ((j : ℝ) + 1) f)
    (hmass : energy (liftReal f) ≤ 1)
    (hnegative : primitiveArithmeticValue χ hp hn ((j : ℝ) + 1) (liftReal f) <
      -((1 / 2 : ℝ) ^ j)) :
    ¬ PrimitiveStageLower χ hp hn j := by
  intro hstage
  have hscale := mul_le_mul_of_nonpos_left hmass
    (neg_nonpos.mpr (pow_nonneg (by norm_num : (0 : ℝ) ≤ 1 / 2) j))
  simp only [mul_one] at hscale
  exact (not_lt_of_ge (hscale.trans (hstage f hf))) hnegative

/-- A negative test is necessarily in the small-conductor branch, since
the existing complementary large-conductor source is nonnegative. -/
theorem negative_witness_forces_small_conductor
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (j : ℕ) (f : ℝ → ℝ)
    (hf : Admissible χ ((j : ℝ) + 1) f)
    (hnegative : primitiveArithmeticValue χ hp hn ((j : ℝ) + 1) (liftReal f) < 0) :
    χ.conductor < conductorFrontier (j + 1) := by
  by_contra hsmall
  rcases hf with ⟨_, _, _, _, hLp, _, harch⟩
  have hlarge := primitiveArithmeticValue_nonneg_of_frontier χ hp hn
    (j + 1) hLp harch (le_of_not_gt hsmall)
  rw [Nat.cast_add, Nat.cast_one] at hlarge
  exact (not_lt_of_ge hlarge) hnegative

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletCompactFilterReturn
