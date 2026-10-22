# Goldbach composite denominator coefficients and the finite primorial tail

Status: source draft only. The Lean sources described here are committed
without a Lean/Lake execution receipt and remain `NOT_KERNEL_AUDITED`.

## Purpose

The earlier Goldbach progression stack reached a finite denominator model

\[
\mathcal M_{Q,N}
  = \sum_{1\le q\le Q} C_q(N)J_{Q,N}(q),
\]

where:

- \(C_q(N)\) is the complete arithmetic coefficient at denominator \(q\);
- \(J_{Q,N}(q)\) is the common finite Fejér-window integral;
- the prime case of \(C_q(N)\) was already evaluated;
- the Fejér window was already shown to be real, nonnegative, and to carry a
  uniform central mass.

The missing arithmetic step was the treatment of composite denominators.
Without it, the finite denominator sum could not be compared exactly with the
finite Euler product of the prime local factors.

This packet supplies that finite arithmetic bridge.

## 1. Integer Ramanujan source

For a fixed target \(N\), define the arithmetic function

\[
w_N(d)=
\begin{cases}
d,&d\mid N,\\
0,&d\nmid N.
\end{cases}
\]

The integer Ramanujan source is the Dirichlet convolution

\[
c_\bullet(N)=\mu * w_N.
\]

At modulus \(q>0\),

\[
c_q(N)
  = \sum_{d\mid q}
      \mu(q/d)\,d\,1_{d\mid N}
  = \sum_{d\mid \gcd(q,N)}
      d\,\mu(q/d).
\]

The implementation identifies this integer with the existing finite
reduced-residue character sum

\[
\sum_{\substack{0\le a<q\\(a,q)=1}}
  e\!\left(\frac{Na}{q}\right).
\]

The negative target frequency gives the same integer because the reduced
Ramanujan sum is real and even in the frequency.

Two important specializations are retained:

\[
(q,N)=1 \Longrightarrow c_q(N)=\mu(q),
\]

and, for prime \(p\),

\[
c_p(N)=
\begin{cases}
p-1,&p\mid N,\\
-1,&p\nmid N.
\end{cases}
\]

For fixed \(N\), the function \(q\mapsto c_q(N)\) is multiplicative.

## 2. General denominator coefficient

For a reduced numerator \(a\), the normalized coefficient from the progression
model is

\[
A_q(a)=\frac{c_q(a)}{\varphi(q)}
      =\frac{\mu(q)}{\varphi(q)}.
\]

The complete denominator coefficient is

\[
C_q(N)
  =
  \sum_{\substack{0\le a<q\\(a,q)=1}}
    A_q(a)^2 e\!\left(-\frac{Na}{q}\right).
\]

Substituting the reduced-numerator value and the target Ramanujan sum gives

\[
\boxed{
C_q(N)
  = \frac{\mu(q)^2\,c_q(N)}{\varphi(q)^2}.
}
\]

Consequences:

1. \(C_q(N)\) is real.
2. \(C_1(N)=1\).
3. If \(q\) is not squarefree, then \(C_q(N)=0\).
4. If \((q,r)=1\), then
   \[
   C_{qr}(N)=C_q(N)C_r(N).
   \]
5. If \(q\) is squarefree, then
   \[
   C_q(N)=\prod_{p\mid q}C_p(N).
   \]

The prime formula is recovered exactly:

\[
C_p(N)=
\begin{cases}
\dfrac1{p-1},&p\mid N,\\[1ex]
-\dfrac1{(p-1)^2},&p\nmid N.
\end{cases}
\]

The negative sign in the nondivisor case is not discarded.

## 3. Finite Euler product as a primorial divisor sum

Let

\[
P_Q=\prod_{p\le Q}p
\]

be the primorial. Since \(P_Q\) is squarefree and \(C_\bullet(N)\) is
multiplicative,

\[
\prod_{p\le Q}\bigl(1+C_p(N)\bigr)
  =
  \sum_{d\mid P_Q} C_d(N).
\]

The left side is exactly the finite coefficient Euler product already linked
to the finite product of prime local factors.

The rational-arc model, however, uses only denominators \(1\le d\le Q\).
Split the divisor sum as

\[
\sum_{d\mid P_Q}C_d(N)
 =
 \sum_{\substack{d\mid P_Q\\d\le Q}}C_d(N)
 +
 \sum_{\substack{d\mid P_Q\\d>Q}}C_d(N).
\]

Every squarefree \(d\le Q\) divides \(P_Q\), and every nonsquarefree
coefficient is zero. Therefore

\[
\sum_{\substack{d\mid P_Q\\d\le Q}}C_d(N)
 =
 \sum_{1\le d\le Q}C_d(N).
\]

Define the exact finite tail

\[
T_Q(N)
 =
 \sum_{\substack{d\mid P_Q\\d>Q}}C_d(N)
\]

and its absolute budget

\[
E_Q^{\mathrm{tail}}(N)
 =
 \sum_{\substack{d\mid P_Q\\d>Q}}|C_d(N)|.
\]

Then

\[
\prod_{p\le Q}(1+C_p(N))
 =
 \sum_{1\le d\le Q}C_d(N)+T_Q(N),
\qquad
|T_Q(N)|\le E_Q^{\mathrm{tail}}(N).
\]

This is a finite combinatorial cutoff error, not an infinite-product tail.

## 4. Sign-aware Fejér lower source

The common Fejér core mass is

\[
M_N=\frac{N+1}{12}.
\]

For each denominator, the exact window satisfies

\[
M_N\le J_{Q,N}(q)\le U_{Q,N}(q),
\]

where

\[
U_{Q,N}(q)
  =(N+1)^2\,2\rho_{Q,N}(q).
\]

Because \(C_q(N)\) can be negative, the valid denominator lower term is

\[
\ell_q=
\begin{cases}
C_q(N)M_N,&C_q(N)\ge0,\\
C_q(N)U_{Q,N}(q),&C_q(N)<0.
\end{cases}
\]

Define the negative-coefficient penalty

\[
\Pi_{Q,N}
 =
 \sum_{\substack{1\le q\le Q\\C_q(N)<0}}
   \bigl(-C_q(N)\bigr)
   \bigl(U_{Q,N}(q)-M_N\bigr).
\]

Then the complete sign-aware lower sum has the exact form

\[
L_{Q,N}
 =
 M_N\sum_{1\le q\le Q}C_q(N)-\Pi_{Q,N}.
\]

The upper window is essential on the negative branch. Multiplying a lower
window bound by a negative coefficient would reverse the inequality.

## 5. Explicit comparison with the finite Euler product

Substitute the primorial decomposition:

\[
\sum_{1\le q\le Q}C_q(N)
 =
 \prod_{p\le Q}(1+C_p(N))-T_Q(N).
\]

Using \(|\operatorname{Re}T_Q(N)|\le E_Q^{\mathrm{tail}}(N)\),

\[
M_N\operatorname{Re}
  \prod_{p\le Q}(1+C_p(N))
 -
 \left(
   M_N E_Q^{\mathrm{tail}}(N)+\Pi_{Q,N}
 \right)
 \le L_{Q,N}.
\]

The packet names the total finite comparison error

\[
E_{Q,N}^{\mathrm{Euler}}
 =
 M_NE_Q^{\mathrm{tail}}(N)+\Pi_{Q,N}.
\]

In repository notation,

\[
\operatorname{CoefficientTruncatedMainScale}(Q,N,M_N)
 -
 E_{Q,N}^{\mathrm{Euler}}
 \le
 \operatorname{FejerDenominatorLowerSum}(Q,N).
\]

This discharges the formerly abstract finite-local-main comparison premise
with a concrete finite expression.

## 6. Terminal certificate

The new terminal consumer still requires:

1. the geometric scale
   \[
   2Q^2<N+1;
   \]
2. uniform bounds for every finite prime-log progression discrepancy on every
   clipped arc;
3. a complete signed minor-arc norm bound;
4. the strict margin
   \[
   E_{Q,N}^{\mathrm{Euler}}
   +E_{Q,N}^{\mathrm{progression}}
   +E_{Q,N}^{\mathrm{minor}}
   <
   \operatorname{CoefficientTruncatedMainScale}(Q,N,M_N).
   \]

Every error is explicit and charged once.

The packet does not supply the progression or minor-arc estimates, does not
establish a uniform strict margin, and does not cover the finite exceptional
range.

## 7. Hostile cases

### Nonsquarefree support

At \(q=4\),

\[
\mu(4)=0,
\qquad
C_4(N)=0.
\]

A composite modulus is not automatically a new Euler factor.

### Negative squarefree composite

At \(q=6\) and \(N=10\),

\[
C_2(10)=1,\qquad
C_3(10)=-\frac14,
\qquad
C_6(10)=-\frac14.
\]

Composite multiplicativity preserves the negative sign.

### Cutoff three

For \(Q=3\), the primorial is \(6\). The divisors are

\[
1,2,3,6.
\]

The rational denominator range contains \(1,2,3\), while the finite
primorial tail contains \(6\). At \(N=10\),

\[
\prod_{p\le3}(1+C_p(10))=\frac32,
\]

\[
\sum_{1\le q\le3}C_q(10)=\frac74,
\qquad
T_3(10)=-\frac14.
\]

Thus the cutoff mismatch is visible and signed.

### Local arithmetic is not Goldbach

The exact composite formula, multiplicativity, and Euler-tail identity can all
hold at a target with zero exact Goldbach count. They organize the model but
do not replace the missing distribution estimates.

## 8. Remaining obligations

- Exact-head Lean elaboration and source repair.
- Exact declaration-type and transitive trust audit.
- External hostile replay against the committed manifest.
- Uniform prime-log progression discrepancy estimates.
- A complete signed minor-arc estimate.
- A strict every-even margin beyond a fixed cutoff.
- Complete finite verification below that cutoff.
- No infinite singular-series theorem is claimed or needed for the finite
  identity in this packet.
