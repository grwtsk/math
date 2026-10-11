# Matched averaging for the closed Möbius pickup

Human mathematical direction, theorem selection and conceptual framing:
R.A. Jacob Martone. Written derivation and implementation assistance:
OpenAI Codex. This is a written mathematical reduction. The matched kernel
and its new source adapters have not received public Lean acceptance.
P04, P05 and the Riemann hypothesis remain open.

For real T >= 0, keep the closed prefix N_T = floor(exp T) and

\[
M(x)=\sum_{1\le n\le x}\mu(n),\qquad
W(T)=\int_0^T e^{-u/2}M(e^u)\,du
=2\sum_{n=1}^{N_T}\mu(n)(n^{-1/2}-e^{-T/2}).
\]

The endpoint correction is -2 exp(-T/2) M(exp T), with the same cutoff
as the weighted prefix. An upper touching response is zero. The public
[arithmetic definitions](../../../../GRWTSK/NumberTheory/Moebius/MertensPrimitive.lean)
and [finite response identity](../../../../GRWTSK/NumberTheory/Moebius/FiniteResponseSum.lean)
retain that convention. Relocation and check-in do not certify a new replay.

For 0 < delta <= 1, set eta = delta/2 and define

\[
A_0=\int_0^1e^{\eta v}\,dv,\quad
A_1=\int_0^1v e^{\eta v}\,dv,\quad
D=A_1-A_0/2,\quad
b=(1-A_0)/D,\quad a=1-b/2,
\]

\[
k_\delta(s)=\delta^{-1}(a+bs/\delta),\qquad 0\le s\le\delta.
\]

Integration by parts, with v(1-v) zero at both endpoints, gives

\[
D=\frac\eta2\int_0^1v(1-v)e^{\eta v}\,dv>0.
\]

The two defining equations are therefore well-defined and give exactly

\[
\int_0^\delta k_\delta= a+b/2=1,\qquad
\int_0^\delta k_\delta(s)e^{s/2}\,ds
=aA_0+bA_1=A_0+bD=1.
\]

There is a uniform coefficient bound without evaluating a numerically
cancelling closed formula. Put
I_0 = integral_0^1 (1-v) exp(eta v) dv and
I_1 = integral_0^1 v(1-v) exp(eta v) dv.
Fubini gives A_0-1 = eta I_0, so |b| = 2 I_0/I_1.
Since the derivative of -v(1-v)^2 is (3v-1)(1-v), integration by parts gives

\[
3I_1-I_0=\eta\int_0^1v(1-v)^2e^{\eta v}\,dv\ge0.
\]

Thus -6 <= b < 0. Exact integration of the squared affine polynomial gives

\[
\|k_\delta\|_2^2
=\delta^{-1}(a^2+ab+b^2/3)
=\delta^{-1}(1+b^2/12)\le4/\delta,
\qquad \|k_\delta\|_1\le2.
\]

These choices depend on the homogeneous functions 1 and exp(s/2).
They do not depend on the observed Möbius waveform.

For 0 <= d <= delta, put

\[
F_\delta(d)=\int_d^\delta
k_\delta(s)(e^{s/2}-e^{d/2})\,ds.
\]

The two moments give F_delta(0) = 0; an empty integral gives
F_delta(delta) = 0. For T >= 1 define
R_delta(T) = integral_0^delta k_delta(s) W(T-s) ds - W(T).
The exact source return is

\[
R_\delta(T)=2e^{-T/2}
\sum_{e^{T-\delta}<n\le e^T}
\mu(n)F_\delta(T-\log n).
\]

To prove it, expand the completed closed pickup over n <= exp T before
integrating. If log n <= T-delta, its contribution is
2(n^(-1/2) - exp(-T/2) exp(s/2)); both moments reproduce its value at s=0.
If T-delta < log n <= T, write d = T-log n. That atom contributes only
for s <= d. Subtract its value at T and use both moments on the complementary
interval [d,delta]; the result is 2 exp(-T/2) F_delta(d).
All sums are finite. A lower touching atom has weight F_delta(delta)=0
and an included upper touching atom has weight F_delta(0)=0. The original
recording cutoff is unchanged. This argument deletes no vector from a Gram
energy. It also asserts no pointwise differentiability of W at the atoms.

The two principal arithmetic obligations are

\[
\text{P04: }\exists C_X,r\ge0\ \forall T\ge0:\quad
\mathcal X(T)\le C_X(1+T)^r,
\]

where X is the complete ordered off-diagonal response Gram, and

\[
\text{P05: }\exists a,b,C_{\rm def}\ge0\ \forall T\ge1:\quad
|R_{(1+T)^{-a}}(T)|\le C_{\rm def}(1+T)^b.
\]

The displayed exact finite source formula makes P05 a signed local Möbius
cancellation problem. The witnesses are not supplied. Replacing the width
by an exponentially small one changes the target and its inverse gain.

Conditional on P05, reconstruction and Cauchy--Schwarz give, for T >= 1,

\[
|W(T)|^2\le8(1+T)^a U_T+
2C_{\rm def}^2(1+T)^{2b},\qquad
U_T=\int_{\max(0,T-1)}^T|W(u)|^2\,du.
\]

For 0 <= T <= 1 the exact pickup is
2(1-exp(-T/2)) up to log 2 and 2(1-1/sqrt 2) thereafter; hence |W(T)|<1.
Thus P06 holds on the entire nonnegative half-line with
C_R = 8 + 2 C_def^2 and s = max(a,2b).

With P04, the sharp diagonal bound gives energy witnesses
C_E = C_X+2 and q = max(r,2). The direct matched estimate then gives

\[
|W(T)|\le C_W(1+T)^{p_W},\qquad
C_W=2\sqrt{C_E}+C_{\rm def},\quad
p_W=\max((a+q)/2,b).
\]

The same witnesses cover the compact range because C_E >= 2. Conversely,
a whole-pickup bound with C_W,p_W >= 0 gives P04 witnesses
C_X = C_W^2/(2p_W+1), r = 2p_W+1 by integrating the completed square and
using D >= 0. It gives P05 with a=0, b=p_W and C_def=3 C_W by the L1 kernel
bound at width one. Therefore P04 AND P05 is equivalent to whole-pickup
polynomial growth as an existential class. No converse from RH is asserted.

Energy-only RH returns use the separate
[polynomial energy criterion](../../../../GRWTSK/NumberTheory/Zeta/Riemann/PolynomialEnergyCriterion.lean).
They keep their explicit open growth hypothesis. The stronger pointwise
consumer for P_A(t)=W(t)-W(2 log A) also keeps its own source identities:
for A >= 1 and 2 log A <= t <= 2A a whole-pickup bound gives
|P_A(t)| <= 2 C_W 3^p_W A^p_W. Pickup-response energy, original source-vector
Gram, signed reset pickup and nonnegative Storage remain separate objects.

The [problem registry](pickup-problem-registry.json) records literal targets,
dependencies, current evidence boundaries and remaining witnesses. Written
proofs, finite diagnostics, source inspection and formal acceptance retain
separate grades. Fresh source and consumer replay is still required for the
current relocated library.
