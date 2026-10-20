# Finite actual-zeta value and derivative enclosures

Human mathematical direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.

Parent: `715c73098a6139d11aaea89c1534a4b6def15501` (#319).
Status: **SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED**. No Lean compilation,
code-generation check, kernel audit, external replay, or successful zero packet
is represented. All inherited scripts retain their verification obligations.

## 1. Exact finite source, with all terminal terms

Write L=N+1, with exactly N included positive integers 1,...,N. Reuse the
maintained positive-axis power `logPower t z = exp(z log t)` and define

\[
 H_N(s)=\frac{L}{s-1}+\frac12+\frac{s}{12L},\qquad
 J_N(s)=-\frac{L}{(s-1)^2}+\frac1{12L},
\]
\[
 F_N(s)=\sum_{k=1}^{N}k^{-s}+L^{-s}H_N(s).
\]

This formula is finite; it is not a truncated Dirichlet series asserted to
converge in the critical strip. It keeps all three Euler--Maclaurin terminal
corrections. Its exact complex derivative is

\[
 F'_N(s)=-\sum_{k=1}^{N}\log(k)k^{-s}
       +L^{-s}\bigl[J_N(s)-\log(L)H_N(s)\bigr].
\]

The logarithm signs, derivative of the pole term, and terminal derivative all
remain. The implementation differentiates the finite expression, not the
infinite source series outside its Dirichlet half-plane.

Let R(s) be the existing complete normalized cubic cell remainder and P_N(s)
its existing N-cell prefix. From the inherited finite telescope and the
already derived actual-source identity, the new source drafts obtain

\[
 \zeta(s)-F_N(s)=A_N(s),\qquad
 A_N(s)=-s(s+1)(s+2)\,[R(s)-P_N(s)],
 \quad \Re s>-2,\ s\ne1.
\]

The remainder on the right is specified independently by integrals and a
complete convergent cell sum. It is not defined by subtracting a desired zeta
value. This is the classical Euler--Maclaurin representation; compare NIST
DLMF 25.2.10, https://dlmf.nist.gov/25.2.E10 . The finite identity is derived
from the repository's own maintained normalization, not imported as an axiom.

## 2. Complete value tail with a rational cutoff factor

On Re(s)>=0, use the inherited half-plane tail at sigma_0=0:

\[
 |R(s)-P_N(s)|\le\frac{1}{96L^2}.
\]

The factor 96 is 48 times the integral exponent margin 2. The first omitted
cell begins at L=N+1, including when N=0. Therefore

\[
 |A_N(s)|\le\frac{|s|\,|s+1|\,|s+2|}{96L^2}.
\]

For a complex center c and a nonnegative parameter radius r, set

\[
 B_N(c,r)=
 \frac{(\|c\|_1+r)(\|c+1\|_1+r)(\|c+2\|_1+r)}{96L^2},
 \qquad \|z\|_1=|\Re z|+|\Im z|.
\]

If r<=Re(c), the entire closed disk |s-c|<=r lies in Re(s)>=0. The triangle
inequality gives |A_N(s)|<=B_N(c,r) at EVERY point of that disk. At the center,
the sharper r=0 version is available. B_N is exact rational algebra for a
rational complex center and rational r; `diskBudgetQ` supplies that identity.

## 3. Derivative tail from an analytic function, not a differentiated inequality

Each finite cell prefix is entire in s. The full remainder is holomorphic on
Re(s)>-2. Thus A_N is holomorphic on that half-plane, including s=1. This last
fact concerns the analytic tail ONLY; neither raw zeta nor F_N becomes regular
at its pole by totalized division.

For 0<r<=Re(c), Cauchy's first-derivative estimate on the radius-r circle gives

\[
 |A'_N(c)|\le\frac{B_N(c,r)}r.
\]

The source separately differentiates the local equality zeta-F_N=A_N near
c!=1. It follows that

\[
 |\zeta(c)-F_N(c)|\le B_N(c,0),\qquad
 |\zeta'(c)-F'_N(c)|\le B_N(c,r)/r.
\]

The Cauchy disk may contain s=1 because Cauchy is applied to A_N, whose
analytic extension is independently established. The evaluation center still
must satisfy c!=1. A zero Cauchy radius is rejected. A pointwise value error
cannot replace the all-disk estimate: A(0)=0 with A(z)=z still has A'(0)=1.

The Cauchy radius is independent of the Newton certification radius, the
Dirichlet cutoff N, the chart index, and the power evaluator's precision
parameters. Taking r arbitrarily small inflates the slope budget through 1/r;
no optimal-radius or target-attainment algorithm is claimed.

## 4. Existing endpoint powers supply the finite value and slope

A finite `PowerPacket N c` contains exactly N rounded power inputs for
k^(-c), k=1,...,N, and one terminal input for L^(-c). Their dependent types
fix each base and the SAME exponent -c. No actual-zeta enclosure is a field.
The inputs reuse the inherited log, Taylor, scaling and directed-rounding
proofs. The earlier rational `toSpec` adapter can produce these inputs after
its raw finite guards pass; this increment does not implement a new raw joint
zeta-output checker or automatic schedule construction.

For each power, let V approximate P=t^(-c) with complete bound e, and let
lambda,eta be its internally derived logarithm center/error. Define

\[
 W=-\lambda V,\qquad
 g=(|\lambda|+\eta)e+\|V\|_1\eta.
\]

Then |-log(t)P-W|<=g. This includes logarithm uncertainty in the derivative;
reusing the power error e alone would be invalid. Write V_L,e_L,W_L,g_L for
the terminal input. The finite outputs and budgets are

\[
 \widehat F=\sum V_k+H_N(c)V_L,
 \quad E_F=\sum e_k+\|H_N(c)\|_1e_L,
\]
\[
 \widehat D=\sum W_k+J_N(c)V_L+H_N(c)W_L,
 \quad E_D=\sum g_k+\|J_N(c)\|_1e_L+\|H_N(c)\|_1g_L.
\]

Both finite enclosures are derived from the primitive power inputs. The
complete source budgets are B_N(c,0)+E_F and B_N(c,r)/r+E_D. Final rounding or
serialization of the two finite outputs must be charged separately, by
allowances e_v and e_d. Exact coefficient and finite-sum arithmetic can use
zero such allowances only after proving the corresponding equalities.

## 5. The Newton consumer

`centerEnclosures_of_power_packet` supplies the unchanged CenterEnclosures
for RationalNewtonWitness.Data from the above finite packet, exact center,
positive half-plane disk radius, two finite rounding enclosures, and allocated
budget inequalities. `exists_zero_of_power_packet` then invokes #319's
unchanged rational contraction test and obtains an actual canonical zero in
the proposed Newton disk with nonzero derivative.

No actual-zeta value/slope, local-zero, or curvature hypothesis is supplied
by this new adapter. However, no concrete packet satisfying all inputs is
constructed here. A narrow tail is not sufficient if included-power errors
are large. Local certification also does not supply the independent complete
multiplicity count at the common height cutoff or a global prime margin.
All head completeness, source identity, multiplicity, correction, scaled
omitted-zero tail and strict prime-criterion obligations remain unchanged.

## 6. Verification boundary

The new and inherited Lean scripts are uncompiled proof drafts. The files
contain no claimed execution receipt. Exact finite algebra checks, symbolic
finite differentiation, and ordinary high-precision zeta comparisons are
separate diagnostics, not a kernel audit. Numerical comparisons are not
certified interval computations and do not certify a zero or a count.

Immediate remaining implementation work is raw rational recomputation and
verification of the combined finite value/slope packet, including coefficient,
log-product and accumulation identities, and useful concrete schedules.
A sufficiently tight complete zero count remains an independent analytic
supplier. Compilation, exact-type/generated-member reconciliation, the full
transitive import/axiom/native audit, resource-bounded decoding, provenance
and all-interval strict margins remain required.
