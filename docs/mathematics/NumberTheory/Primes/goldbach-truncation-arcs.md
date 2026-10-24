# Goldbach finite truncations and exact arc partition

Status: **SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED**

This increment stacks on the exact prime-modulus local factors and continuous
Goldbach coefficient. It introduces two finite or purely measure-theoretic
layers:

1. a finite local-product truncation through a prime cutoff;
2. an exact decomposition of the unit-circle coefficient into declared major
   and complementary minor contributions.

Neither layer supplies a prime-distribution estimate.

## Finite local truncation

For a cutoff \(Q\), let

\[
P_Q=\{p\le Q:p\text{ prime}\},\qquad
P_Q^{\mathrm{odd}}=P_Q\setminus\{2\}.
\]

The source defines

\[
\mathfrak S_Q(N)
 =\sigma_2(N)\prod_{p\in P_Q^{\mathrm{odd}}}\sigma_p(N),
\]

where the factors \(\sigma_p(N)\) are the exact rational local-density ratios
from the parent increment.

For \(Q\ge2\), this is exactly the product over every prime at most \(Q\).
It retains

\[
\sigma_2(N)=
\begin{cases}
2,&N\text{ even},\\
0,&N\text{ odd}.
\end{cases}
\]

The odd-prime product factors exactly as

\[
\prod_{p\in P_Q^{\mathrm{odd}}}
\left(1-\frac1{(p-1)^2}\right)
\prod_{\substack{p\in P_Q^{\mathrm{odd}}\\p\mid N}}
\frac{p-1}{p-2}.
\]

Every product is finite. No infinite Euler product, convergence theorem,
nonzero limit, quantitative tail, or cutoff-uniform lower bound is inferred.

## Exact frequency partition

For a measurable set \(A\subseteq\mathbb R\), define

\[
\mathfrak M=A\cap(0,1],\qquad
\mathfrak m=(0,1]\setminus A.
\]

With the exact prime-log Goldbach integrand \(F_N\), the source defines

\[
I_{\mathfrak M}(N)=\int_{\mathfrak M}F_N(\alpha)\,d\alpha,
\qquad
I_{\mathfrak m}(N)=\int_{\mathfrak m}F_N(\alpha)\,d\alpha.
\]

The two regions are measurable, disjoint, and have union \((0,1]\). Therefore

\[
I_{\mathfrak M}(N)+I_{\mathfrak m}(N)
  =\int_0^1F_N(\alpha)\,d\alpha
  =G(N),
\]

where \(G(N)\) is the inherited logarithmically weighted Goldbach mass.

The declared set \(A\) is intentionally abstract. A later analytic supplier
must define the actual rational arcs and prove their approximation theorem.
The exact decomposition does not assume that any proposed major arcs are
disjoint before clipping, useful, or quantitatively dominant.

## Strict signed consumer

The source proves the conditional implication

\[
M\le\operatorname{Re}I_{\mathfrak M}(N),\qquad
\lVert I_{\mathfrak m}(N)\rVert\le E,\qquad
E<M
\]

implies

\[
G(N)>0
\]

and hence the existing exact Goldbach count is positive.

A second consumer permits a proposed finite local main scale

\[
\mathfrak S_Q(N)V
\]

only with a separately supplied local approximation error \(E_{\rm loc}\), a
complete minor error \(E_{\rm min}\), and the strict budget

\[
E_{\rm loc}+E_{\rm min}
  < \mathfrak S_Q(N)V.
\]

The theorem constructs none of \(V\), the approximation, or the error bounds.

## Hostile boundaries

The controls retain:

- the factor at two;
- an odd target whose truncation is zero;
- the even target \(2\), whose finite local product is positive while its exact
  Goldbach count is zero;
- empty-major and full-major partitions;
- rejection of zero strict margin;
- the distinction between a finite local product and an actual prime witness.

## Remaining obligations

The next analytic supplier must provide:

1. a concrete measurable rational-arc family;
2. a major-arc approximation for the exact prime-log exponential sum;
3. construction and quantitative control of any infinite singular series used;
4. a complete signed minor-arc norm bound;
5. a strict every-even margin beyond one fixed cutoff;
6. complete finite coverage below that cutoff;
7. exact-head Lean elaboration, declaration-type reconciliation, transitive
   trust audit, hostile replay, and external acceptance.

No strong Goldbach result, infinite product, arc estimate, finite-exception
coverage, build, merge, or execution authority is claimed.
