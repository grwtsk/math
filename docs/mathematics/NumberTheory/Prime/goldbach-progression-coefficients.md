# Goldbach progression coefficients and the prime local-factor bridge

Status: source-only mathematical increment.

Exact parent: draft PR #379 at commit
`62ca45a9a4a34a8941742d71c009cd1253ab01b2`.

This note records the next finite algebraic layer in the Goldbach track. It
does not represent Lean elaboration, kernel acceptance, a prime-distribution
estimate, or a proof of Goldbach's conjecture.

## 1. Inherited source

The parent stack supplies:

- the exact prime-only logarithmic Goldbach mass;
- its positivity bridge to the literal `goldbachCount`;
- the exact continuous circle coefficient;
- prime-modulus local density factors;
- finite local products;
- a concrete finite reduced-rational arc family;
- a sufficient pairwise-disjointness scale;
- exact finite expansion of the rational major contribution;
- exact residue-class reconstruction of the prime-log exponential sum;
- the canonical reduced-residue progression model;
- exact progression discrepancies;
- transfer of supplied residue bounds to integrated per-arc errors;
- strict terminal consumers retaining the complete signed minor contribution.

All analytic estimates remain external premises.

## 2. Exact arithmetic/singular-kernel separation

Write

\[
V_N(\beta)=\sum_{0\le n\le N} e(n\beta)
\]

for the complete finite integer exponential kernel, and

\[
A_q(a)=\frac{1}{\varphi(q)}
 \sum_{\substack{0\le r<q\\(r,q)=1}} e(ar/q)
\]

for the normalized finite coprime phase coefficient already defined by the
parent source.

The canonical progression exponential model is

\[
S^{\mathrm{model}}_{N;a,q}(\beta)
 = A_q(a)V_N(\beta).
\]

The exact negative target phase is retained. Therefore the canonical circle
model is

\[
\begin{aligned}
F^{\mathrm{model}}_{N;a,q}(\beta)
 &=
 A_q(a)^2 e(-Na/q)
 \;V_N(\beta)^2e(-N\beta).
\end{aligned}
\]

The new source names the two factors:

\[
B_{N;q}(a)=A_q(a)^2e(-Na/q)
\]

and

\[
K_N(\beta)=V_N(\beta)^2e(-N\beta).
\]

It then proves only the exact identity

\[
F^{\mathrm{model}}_{N;a,q}(\beta)
 =B_{N;q}(a)K_N(\beta).
\]

No approximation occurs.

## 3. Individual clipped-arc factorization

For the inherited clipped arc
\(\mathfrak A_{Q,N}(a,q)\), define

\[
J_{Q,N}(a,q)
 =
 \int_{\mathfrak A_{Q,N}(a,q)}
 K_N\!\left(x-\frac aq\right)\,dx.
\]

The corresponding canonical model contribution factors exactly:

\[
I^{\mathrm{model}}_{Q,N}(a,q)
 =
 B_{N;q}(a)J_{Q,N}(a,q).
\]

Consequently the complete finite progression-model major sum is exactly

\[
\sum_{(a,q)\in\mathcal I_Q}
 B_{N;q}(a)J_{Q,N}(a,q).
\]

The source deliberately keeps \(J_{Q,N}(a,q)\) dependent on the numerator.
Endpoint clipping and the three period lifts have not yet been replaced by a
common translated interval integral.

Two elementary budgets are also retained:

\[
|B_{N;q}(a)|\le 1
\]

for indexed reduced rationals, and

\[
|K_N(\beta)|\le (N+1)^2.
\]

Using the inherited six-radius measure budget gives

\[
|J_{Q,N}(a,q)|
 \le (N+1)^2\frac{6Q}{q(N+1)}.
\]

This is a coarse upper bound, not a main-term evaluation.

## 4. Complete and reduced finite character sums

For an integer frequency \(m\), define

\[
T_q(m)=\sum_{0\le a<q}e(ma/q)
\]

and

\[
T_q^\times(m)
 =\sum_{\substack{0\le a<q\\(a,q)=1}}e(ma/q).
\]

The source connects the real representatives used by the rational arcs to
Mathlib's canonical standard additive character on `ZMod q`.

Finite additive-character orthogonality gives

\[
T_q(m)=
\begin{cases}
q,&m=0\pmod q,\\
0,&m\ne0\pmod q.
\end{cases}
\]

For prime \(p\), the reduced representatives are the complete representatives
with zero removed. Hence

\[
T_p^\times(m)=
\begin{cases}
p-1,&m=0\pmod p,\\
-1,&m\ne0\pmod p.
\end{cases}
\]

This calculation is finite. It invokes no prime distribution.

## 5. Prime normalized Ramanujan coefficient

When \(p\) is prime and \((a,p)=1\),

\[
\sum_{\substack{0\le r<p\\(r,p)=1}}e(ar/p)=-1.
\]

Since \(\varphi(p)=p-1\), the parent coefficient becomes

\[
A_p(a)=-\frac{1}{p-1}.
\]

The square in the Goldbach circle model removes this sign:

\[
A_p(a)^2=\frac{1}{(p-1)^2}.
\]

## 6. Denominator coefficient

Define the total arithmetic coefficient at one denominator by

\[
C_q(N)=
\sum_{\substack{0\le a<q\\(a,q)=1}}
A_q(a)^2e(-Na/q).
\]

This is an arithmetic sum only. It is not the complete denominator block in
the major integral unless the clipped singular integral is known to be common
across all reduced numerators.

At a prime denominator,

\[
C_p(N)
 =
 \frac{1}{(p-1)^2}
 \sum_{a=1}^{p-1}e(-Na/p).
\]

Therefore

\[
C_p(N)=
\begin{cases}
\dfrac{1}{p-1},&p\mid N,\\[1ex]
-\dfrac{1}{(p-1)^2},&p\nmid N.
\end{cases}
\]

The sign in the nondivisor case is essential.

## 7. Recovery of the existing local factor

The prime-modulus local density factor already present in the repository is

\[
\sigma_p(N)=
\begin{cases}
\dfrac{p}{p-1},&p\mid N,\\[1ex]
1-\dfrac{1}{(p-1)^2},&p\nmid N.
\end{cases}
\]

The new finite character calculation proves

\[
1+C_p(N)=\sigma_p(N).
\]

At \(p=2\),

\[
C_2(N)=
\begin{cases}
1,&N\text{ even},\\
-1,&N\text{ odd},
\end{cases}
\]

so the factor \(1+C_2(N)\) is exactly two for even targets and zero for odd
targets. The parity obstruction is not omitted.

## 8. Finite coefficient Euler products

For a finite prime set \(P\), define

\[
\mathcal E_P(N)
 =
 \prod_{p\in P}\bigl(1+C_p(N)\bigr).
\]

The exact prime bridge yields

\[
\mathcal E_P(N)
 =
 \prod_{p\in P}\sigma_p(N).
\]

Thus, for the inherited prime cutoff \(P_Q\) and \(Q\ge2\),

\[
\mathcal E_{P_Q}(N)
 =
 \mathfrak S_Q(N),
\]

where \(\mathfrak S_Q(N)\) is the existing finite truncated Goldbach local
product.

Every product remains finite. This does not construct an infinite singular
series, prove convergence, provide a tail estimate, or establish a
cutoff-uniform lower bound.

## 9. Common-window boundary

For one fixed denominator \(q\), the actual coefficient-weighted block is

\[
\sum_{\substack{0\le a<q\\(a,q)=1}}
B_{N;q}(a)J_{Q,N}(a,q).
\]

It may be rewritten as

\[
C_q(N)J
\]

only after supplying the explicit premise

\[
J_{Q,N}(a,q)=J
\quad
\text{for every reduced }a.
\]

The new source includes this conditional algebraic theorem and does not
supply the premise.

A later change-of-variables increment must account for:

- the three period lifts;
- clipping to `(0,1]`;
- possible endpoint identifications;
- the strict separation scale;
- equality of the translated integration domains;
- periodicity of the finite singular kernel;
- preservation of signed orientation and measure.

Without that work, the denominator coefficient cannot be pulled out of the
actual finite major sum.

## 10. Terminal consumer

The inherited progression-residue terminal theorem is restated using the exact
factorized major sum

\[
\sum_{(a,q)\in\mathcal I_Q}
B_{N;q}(a)J_{Q,N}(a,q).
\]

The finite local scale is also restated through the finite coefficient Euler
product. Under \(Q_{\mathrm{local}}\ge2\), this scale is definitionally
connected by theorem to the existing truncated local product.

A count conclusion still requires:

1. the inherited rational-arc separation condition;
2. a lower bound for the real part of the complete factorized model sum;
3. uniform bounds for every finite progression discrepancy on every clipped
   arc;
4. the complete signed minor-arc norm bound;
5. a model-to-local-main error;
6. one strict combined margin.

Each error is charged once.

## 11. Hostile controls

The source controls retain the following exact cases.

- \(C_2(10)=1\).
- \(C_2(9)=-1\).
- \(C_3(12)=1/2\).
- \(C_3(10)=-1/4\).
- The coefficient is not the local factor: \(C_3(12)=1/2\), while
  \(\sigma_3(12)=3/2\).
- Through cutoff five at target ten,
  \[
  2\cdot\frac34\cdot\frac54=\frac{15}{8}.
  \]
- Every odd target makes the cutoff product vanish when the factor at two is
  retained.
- A positive finite coefficient Euler product can coexist with
  `goldbachCount 2 = 0`.
- Exact factorization of the model major sum can coexist with zero exact
  Goldbach count.
- Equality of the total error budget and proposed main lower bound does not
  pass the strict terminal criterion.

## 12. Verification boundary

The new source is committed as proof draft only.

It has not been:

- elaborated by Lean;
- executed by Lake;
- checked by the Lean kernel;
- audited for its complete transitive axiom or native-code closure;
- replayed by an independent hostile checker;
- accepted by an external reviewer.

Finite diagnostics check the arithmetic formulas, prime signs, parity factor,
and finite-product identities. They do not parse Lean or prove any analytic
estimate.

## 13. Remaining obligations

The next exact work is:

1. elaborate and repair the complete stacked source;
2. prove a periodized change-of-variables theorem making the clipped singular
   integral common across reduced numerators when the declared scale permits;
3. evaluate the resulting finite singular integral;
4. compare the finite denominator sum with the truncated local main scale,
   with explicit finite-tail accounting;
5. supply uniform prime-log progression discrepancy estimates on every
   declared arc;
6. supply a complete signed minor-arc norm bound;
7. prove one strict every-even margin beyond a fixed cutoff;
8. verify every remaining finite target below that cutoff.

No strong Goldbach proof is claimed.
