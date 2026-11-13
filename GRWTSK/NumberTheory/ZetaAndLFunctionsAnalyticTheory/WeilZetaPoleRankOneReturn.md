# Exact negative rank-one direction of the original two zeta poles

Author: grwtsk contributors. Date: 2026-11-12, edition 1.
MSC2020: 11M26 (primary), 11M41, 46C20.

This is a SOURCE-BOUND ANALYTICAL PROOF, with four Lean
SOURCE_PROOF_CANDIDATES in WeilZetaPoleRankOneReturn.lean.
The new declarations prove (i) exact complex polarization,
(ii) its application to the ACTUAL native two-orientation zeta pole
correlation, (iii) the sharp one-negative-square lower bound and
(iv) nonnegativity on the kernel of the true negative moment.
The finite-dimensional codimension statement below is WRITTEN,
not a Lean declaration. Lean elaboration, complete import build,
fresh kernel replay, transitive axiom audit, certified computation
and independent review: NOT_RUN. Novelty UNASSESSED.

## 1. Exact source and hypotheses

Let A>=0, f:R->C be integrable in Lebesgue measure, and assume
f(t)=0 whenever A<|t|. The same theorem applies to every original
smooth compactly supported Weil test (stronger hypotheses).
The canonical actual correlation, not an invented quadratic source,
is
  C_f(r)=integral_R conj(f(t))*f(t+r) dt.

The completed-zeta explicit-formula source in
WeilGammaPhysicalReturn.zeta_hasSum_physical_arithmetic
retains both pole weights W(0),W(1), where
W(s)=integral_R C_f(r)*exp((s-1/2)r)dr.
By splitting the two integrable orientations,
W(0)+W(1) is exactly the literal complex correlation integral
  I_pole(f)=integral_R C_f(r)*
                    (exp(r/2)+exp(-r/2))dr.             (1)
The previous source declaration
SourcePrimeCorrelation.zeta_pole_correlation in
WeilCorrelationFourier.lean proves integrability of (1) and
the equality
  I_pole(f)=M_+(f)*conj(M_-(f))+M_-(f)*conj(M_+(f)),  (2)
with the two genuine complex moments
  M_+(f)=integral_R f(t)*exp(t/2)dt,
  M_-(f)=integral_R f(t)*exp(-t/2)dt.
All integrals are true Lebesgue integrals under the native source
assumptions; no divergence is hidden in an unqualified totalization.
The signed source pole scalar is P_zeta(f)=Re I_pole(f);
(2) also proves that I_pole(f) is real.

No prime weight, conductor, gamma, character phase, zero multiplicity,
functional-equation orientation, or pole sign is changed.

## 2. Exact complex polarization (WZPR-v1-01 and -02)

For any u,v in C,
  2*Re(u*conj(v)+v*conj(u))
       =|u+v|²-|u-v|².                             (3)
Proof: expand both complex norm squares as sums of their real
and imaginary coordinate squares. The diagonal terms cancel and
the remaining cross terms are exactly 4*Re(u*conj(v)).
This holds for complex coefficients, with no real-only restriction.

Set u=M_+(f), v=M_-(f). Substitution into the NATIVE
integral equality (2), without reordering its signs, gives
  2*P_zeta(f)=|M_+(f)+M_-(f)|²-
                    |M_+(f)-M_-(f)|².              (4)
The Lean theorem sourcePole_eq_signed_norms proves precisely (4)
from SourcePrimeCorrelation.zeta_pole_correlation.
The sourcePole definition is the real part of the literal
integral (1), not a surrogate positive operator.

Define positive and negative moments
  U(f)=(M_+(f)+M_-(f))/2,
  V(f)=(M_+(f)-M_-(f))/2.
Then (4) becomes
  P_zeta(f)=2*|U(f)|²-2*|V(f)|².                 (5)
Since exp(t/2) +/- exp(-t/2)=2(cosh(t/2),sinh(t/2)),
these are literally
  U(f)=integral_R f(t)*cosh(t/2)dt,
  V(f)=integral_R f(t)*sinh(t/2)dt.
Compact support justifies linearity of these integrals.
The orientation is important: the sinh moment, not cosh,
is the NEGATIVE square.

## 3. Unconditional source lower bound and exact negative kernel

Equation (4) gives for every supported integrable complex test
  P_zeta(f)>=-1/2*|M_+(f)-M_-(f)|²=-2*|V(f)|².    (6)
This is the source-bound lower theorem
sourcePole_ge_negative_moment (WZPR-v1-03).

If V(f)=0, equivalently M_+(f)=M_-(f), equation (5) gives
  P_zeta(f)=2|U(f)|²>=0.                         (7)
This is sourcePole_nonneg_on_negative_kernel
(WZPR-v1-04). The kernel condition is used for a SUBSPACE
dimension argument; it is not imposed as an admissibility
restriction on ALL Weil tests. The full pole-inclusive
quadratic form is preserved.

The bound (6) is sharp for the pole term: take f real odd,
smooth, supported in (-A,A), and choose f so that V(f)!=0.
Oddness gives U(f)=0 and hence
P_zeta(f)=-2|V(f)|². A concrete fixture is
f(t)=t*phi(t), with phi nonnegative, nonzero, even,
smooth and compactly supported strictly inside (-A,A)
for A>0. Its V moment is positive because
t*sinh(t/2)>=0 and is nonzero on the bump support.
Thus the negative orientation is genuine and cannot be
replaced by a positive squared norm.

## 4. Dimension of the pole-negative sector

On the complex vector space D_A=C_c^infinity((-A,A);C),
the functional V is complex-linear because the weighted
moments above are absolutely convergent and integration is
linear. Its kernel has algebraic codimension at most one.
For A>0 the odd fixture in §3 shows V is nonzero, so its
codimension is exactly one. This statement concerns the
negative COMPONENT of the pole form, not the negative
index of the complete arithmetic Weil form.

Let W be any d-dimensional complex linear subspace of D_A
on which the FULL original zeta arithmetic form Q_zeta,A
is strictly negative for every nonzero vector. Then
  dim_C(W ∩ ker V)>=d-1.                           (8)
On that intersection the source pole form is nonnegative
by (7), so the genuine nonpole part
  Q_zeta,A(f)-P_zeta(f)
is strictly negative for every nonzero f in that intersection.
This proves the EXACT rank-one allowance used in
WeilSignedDeficitNegativeIndex.md:
  ind_-(Q_zeta,A)<=
    1+ind_-(Q_zeta,A-P_zeta).                         (9)
The earlier written signed-frequency Bessel budget
bounds the last term by tau_1,A(eta)/eta, giving
ind_- <=1+tau_1,A(eta)/eta, but its Plancherel/Bessel
source-specific bridge remains WRITTEN, not kernel-checked.
This module supplies the native pole-sign part of (9)
rather than restating that bridge as an assumption.

The norm of the negative pole vector is
  int_(-A)^A sinh(t/2)²dt=sinh A-A.
This is nonnegative and gives the other previously
written signed-pole Bessel trace comparison. That norm
calculation is already source-treated in
WeilOddPoleSharpSupportCauchy and is not claimed new.

## 5. Tests, prior art and first remaining premise

The scalar identity holds at u=v=0 and for arbitrary complex
phases; at u=v the negative moment is zero. At u=-v the
positive moment is zero and (6) is attained. If f is odd,
P_zeta is negative unless its sinh moment happens to vanish.
For conductor q>1 primitive nonprincipal there is NO pole
term and this lemma is not instantiated. For conductor one
we retain both pole orientations, including the actual
negative sign.

Primary arithmetic convention:
Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1, equations (3.19)--(3.20).
Negative-index/variational comparison:
Bombieri, Remarks on Weil's quadratic functional in the
theory of prime numbers, I, Rendiconti Lincei 11 (2000),
pp.183--233, and its original negative-direction analysis.
No claim of a new rank-one identity or novelty;
this is a direct canonical Lean source transfer.

Source dependency chain:
WeilSourcePrimeCorrelation.correlation ->
WeilCorrelationFourier.zeta_pole_correlation ->
ZetaPoleRankOneReturn.sourcePole_eq_signed_norms ->
sourcePole_ge_negative_moment and
sourcePole_nonneg_on_negative_kernel ->
WeilSignedDeficitNegativeIndex.md §§4--5 ->
original conductor-one zeta Weil explicit formula
WeilGammaPhysicalReturn.zeta_hasSum_physical_arithmetic.
The final link to the completed zero sum retains its
SOURCE_PROOF_CANDIDATE status pending pinned Lean build.

Inspected grwtsk/math/main
70a5f9fa620f863d8aa76545a90dbdd1fe2ac8ef.
Pins unchanged:
Lean leanprover/lean4:v4.34.1;
mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.

FIRST FORMAL OBLIGATION: elaborate the exact pole-source
declarations, formalize the complex-linear negative moment
functional on the canonical supported smooth test space,
prove its kernel codimension <=1 in Lean, and discharge
the source-specific supported Plancherel/Bessel trace.
FIRST ARITHMETIC OBLIGATION: prove the full original
all-primitive/all-window/all-complex-test Weil form
nonnegative, retaining the two pole orientations,
all prime powers, and complete gamma/parity/conductor.
A rank-one pole bound or fixed-window finite
negative index does not prove that universal sign,
RH, or primitive Dirichlet GRH.
