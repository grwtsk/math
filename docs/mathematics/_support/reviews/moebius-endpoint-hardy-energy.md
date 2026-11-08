# Endpoint Hardy-prefix energy reduction and square-variation obstruction

**Disposition:** exact source-bound reduction of the current complete Möbius endpoint problem to a positive weighted Hardy-prefix energy, with an unconditional absolute comparison loss; rigorous obstruction to completing the estimate from increment square variation alone. The complete endpoint estimate, uniform causal energy, and the Riemann Hypothesis remain unproved.

**Prepared against `grwtsk/math/main`:** `a92798f1ee34dc27a3cca84a6d25bd10bcab5e4e`, tree `24516f7fd332f1deec93850a4be61a644116c765`.

**Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.

**Lean source candidate:**  
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointHardyEnergy.lean`.

**Verification:** source inspection and mathematical derivation only. Compilation, exact expected-type checking, fresh-kernel replay, native execution, and transitive axiom auditing are all `NOT_RUN`.

## 1. Exact unchanged source

Retain the repository's literal Möbius response

\[
r_n(u)=
\begin{cases}
2(n^{-1/2}-e^{-u/2}),&\log n\le u,\\
0,&u<\log n,
\end{cases}
\]

the closed-prefix pickup

\[
F(u)=\sum_{n\le e^u}\mu(n)r_n(u),
\]

and its physical-time energy

\[
H(T)=\int_0^T F(u)^2\,du.
\]

The endpoint consumer remains `PickupEndpointQuadrature.endpointSum`, with

\[
|\operatorname{endpointSum}(T)-\operatorname{pickupCross}(T)|\le\frac14
\]

and

\[
H(T)=\operatorname{pickupDiagonal}(T)+\operatorname{pickupCross}(T),
\qquad
0\le\operatorname{pickupDiagonal}(T)\le2T^2.
\]

No coefficient, support, birth convention, or diagonal term is changed.

## 2. Rank-one birth increment of the five-moment polynomial

Write

\[
M_N=\sum_{n\le N}\mu(n),\qquad
A_N=\sum_{n\le N}\frac{\mu(n)}{\sqrt n},
\]

and

\[
D_{N,j}=\sum_{n\le N}\mu(n)^2n^{-j/2}
\quad(j=0,1,2).
\]

The exact cross-density polynomial on the \(N\)-th birth cell is

\[
p_N(x)=4(A_N^2-D_{N,2})
-8(A_NM_N-D_{N,1})x
+4(M_N^2-D_{N,0})x^2.
\]

When the coefficient \(\mu(N+1)\) is inserted, its self-square cancels against the diagonal subtraction. Direct expansion gives

\[
\boxed{
p_{N+1}(x)-p_N(x)
=
8\mu(N+1)
\left((N+1)^{-1/2}-x\right)
\left(A_N-M_Nx\right).
}
\tag{2.1}
\]

The new Lean source supplies a proof term for this identity as `polynomial_step`. It is a source identity, not a cancellation estimate.

## 3. Stieltjes increments and exact birth samples

Define

\[
g_n=\frac1{\sqrt n}-\frac1{\sqrt{n+1}},
\qquad
x_n=M_ng_n,
\]

and

\[
Q_n=\sum_{1\le k<n}x_k.
\]

Finite Abel summation gives

\[
\boxed{
Q_{N+1}=A_N-\frac{M_N}{\sqrt{N+1}}.
}
\tag{3.1}
\]

Equivalently,

\[
Q_n=A_n-\frac{M_n}{\sqrt n}
=A_{n-1}-\frac{M_{n-1}}{\sqrt n}.
\tag{3.2}
\]

At the exact birth time \(u=\log n\), the newly born response is zero. Therefore

\[
\boxed{
F(\log n)=2Q_n.
}
\tag{3.3}
\]

The source definitions `stieltjesGap`, `stieltjesIncrement`, and `stieltjesPrefix` preserve these exact quantities. Equations (3.1) and (3.3) remain named formalization targets pending Lean replay of the finite `Ico` summation, casts, floor/exponential normalization, and closed-birth endpoint.

## 4. A positive Hardy-prefix energy

For an integer horizon \(K\ge1\), let

\[
\ell_n=\log\frac{n+1}{n}
\qquad(1\le n<K),
\]

and define

\[
\boxed{
P_K=
\sum_{1\le n<K}
\ell_n\left(Q_n^2+Q_{n+1}^2\right).
}
\tag{4.1}
\]

Also define the weighted increment variation

\[
\boxed{
V_K=
\sum_{1\le n<K}\ell_nx_n^2.
}
\tag{4.2}
\]

On the cell \([\log n,\log(n+1)]\), the half-waveform \(F(u)/2\) is affine in \(e^{-u/2}\) and joins the endpoint values \(Q_n\) and \(Q_{n+1}\). For any point \(y\) on the real segment from \(a\) to \(b\),

\[
y^2\le a^2+b^2,
\]

and

\[
a^2+b^2\le4y^2+4(b-a)^2.
\]

Applying these inequalities with \(a=Q_n\), \(b=Q_{n+1}\), and \(b-a=x_n\), then integrating over the complete cell, gives

\[
\boxed{
P_K-4V_K
\le
H(\log K)
\le
4P_K.
}
\tag{4.3}
\]

All cross terms remain inside the exact waveform until after the affine-cell inequality is applied.

## 5. The variation term is unconditionally bounded

The coefficient magnitude bound gives

\[
|M_n|\le n.
\]

Rationalizing the adjacent inverse-square-root gap,

\[
g_n=
\frac1{\sqrt n\sqrt{n+1}(\sqrt n+\sqrt{n+1})}
\le\frac1{2n^{3/2}}.
\]

Hence

\[
x_n^2\le\frac1{4n}.
\]

The elementary logarithm bound

\[
\ell_n=\log(1+1/n)\le\frac1n
\]

then yields

\[
\ell_nx_n^2\le\frac1{4n^2}
\le\frac1{2n(n+1)}.
\]

The last majorant telescopes, so for every \(K\),

\[
\boxed{
0\le V_K\le\frac12.
}
\tag{5.1}
\]

Combining (4.3) and (5.1),

\[
\boxed{
P_K-2
\le
H(\log K)
\le
4P_K.
}
\tag{5.2}
\]

This comparison is unconditional and requires no prime number theorem, zero-free region, Chowla estimate, or finite computation.

## 6. Exact completion equivalence

Define the dyadic Hardy supplier by

\[
\forall\varepsilon>0\;\exists C_\varepsilon\ge0\;\forall j\ge0,
\qquad
P_{2^j}
\le
C_\varepsilon
\exp(\varepsilon j\log2).
\tag{6.1}
\]

Equation (5.2), monotonicity of the nonnegative energy, and the fixed dyadic mesh imply global all-positive-rate pickup-energy control.

Conversely, the endpoint estimate, the \(1/4\) quadrature error, and the polynomial diagonal bound imply all-positive-rate energy control; the left side of (5.2) then implies (6.1), after absorbing the additive constant.

Thus, at the mathematical source level,

\[
\boxed{
\text{dyadic Hardy supplier}
\Longleftrightarrow
\text{complete endpoint estimate}.
}
\tag{6.2}
\]

This is an exact reduction, not a proof of either side. It identifies a positive arithmetic quantity with no remaining geometric or quadrature ambiguity.

## 7. Relation to the earlier square-variation package

The historical square-variation research package defined the same increments \(x_n=M_ng_n\), their prefixes \(Q_n\), and a dyadic signed coherence block. It combined an external explicit Mertens theorem and a finite computation to obtain a written bound

\[
\sum_{n\ge1}x_n^2<\frac{14}{125}.
\]

That historical evidence was not a current Lean theorem and was stored with inactive candidates. The present result does not depend on it: the weighted variation needed in (4.3) has the elementary unconditional bound (5.1).

The old quartic endpoint Stieltjes source also contained a generic finite weighted square-increment telescope. The present contribution is narrower and source-specific: it binds the current literal pickup birth polynomial, exact `wholePickup`, and exact terminal endpoint consumer to the positive quantity \(P_K\).

No general summation-by-parts or Hardy-theory novelty is claimed.

## 8. Why square variation alone cannot finish the estimate

A bound on

\[
\sum_n x_n^2
\]

does not control the weighted prefix-square mass

\[
\sum_n\frac1n
\left(\sum_{k\le n}x_k\right)^2.
\]

For each \(L\ge1\), take the finite normalized flat packet

\[
t_k=L^{-1/2}
\qquad(1\le k\le L).
\]

Then

\[
\sum_{k=1}^L t_k^2=1,
\]

but

\[
\sum_{n=1}^L
\frac1n
\left(\sum_{k=1}^nt_k\right)^2
=
\frac1L\sum_{n=1}^L n
=
\boxed{\frac{L+1}{2}}.
\tag{8.1}
\]

Therefore the finite-section Hardy operator from increment square mass to endpoint prefix-square mass has unbounded norm. A proof using only the square-variation bound and Cauchy--Schwarz can return an \(e^T\)-scale allowance and cannot establish every-positive-rate control.

This is a method obstruction, not a Möbius counterexample. The actual increments have additional arithmetic structure; exploiting that structure is precisely the missing task.

## 9. First failed inequality and next bounded step

The first unavailable inequality is now explicit:

\[
\boxed{
P_{2^j}
\stackrel{?}{\le}
C_\varepsilon2^{\varepsilon j}
\quad
\text{for every }\varepsilon>0.
}
\tag{9.1}
\]

Neither the unconditional weighted variation bound, the stronger historical unweighted variation bound, fixed-shift correlations, nor a finite-prime norm inversion supplies (9.1).

A bounded next step is to expand one dyadic increment

\[
P_{2^{j+1}}-P_{2^j}
\]

as a complete signed collision form in the actual increments \(x_n=M_ng_n\), retain old--new and within-block interactions, and test a Type-II or long-shift estimate before taking outer absolute values. Any candidate must yield one constant per positive exponent and preserve the exact endpoint return.

## 10. Verification and nonclaims

The new source proves the polynomial birth increment and the scalar prefix-square update. The Abel identity, birth sample identity, cellwise energy comparison, variation bound, Hardy/endpoint equivalence, and flat finite Hardy fixture remain explicitly named propositions, not axioms or accepted theorems.

Current status:

- source inspection: `DONE`;
- mathematical derivation: `WRITTEN`;
- compilation: `NOT_RUN`;
- exact expected types: `NOT_RUN`;
- fresh-kernel replay: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- native execution: `NOT_RUN`;
- complete endpoint estimate: `UNPROVED`;
- uniform pickup energy: `UNPROVED`;
- Riemann Hypothesis: `UNPROVED`.

Publication does not establish Lean acceptance or the missing arithmetic estimate.
