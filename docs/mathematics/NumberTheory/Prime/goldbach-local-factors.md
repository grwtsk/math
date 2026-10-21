# Goldbach prime-modulus local factors

Status: **SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED**.

This note records the exact finite arithmetic implemented in
`GRWTSK.NumberTheory.Primes.GoldbachLocalFactors`. It does not claim a
singular-series convergence theorem, a major/minor-arc estimate, or Goldbach.

## Residue count

Fix a prime \(p\) and target \(N\). In one complete residue block, a first
prime residue \(a\) must avoid

\[
a \equiv 0 \pmod p,\qquad a \equiv N \pmod p.
\]

The source represents the canonical residues \(0,\ldots,p-1\) by

\[
R_p(N)=\{0,\ldots,p-1\}\setminus\{0,N\bmod p\}.
\]

If \(p\mid N\), the two exclusions coincide and

\[
|R_p(N)|=p-1.
\]

If \(p\nmid N\), they are distinct and

\[
|R_p(N)|=p-2.
\]

This is a local congruence count. It does not assert that either coordinate is
a prime integer.

## Normalized factor

The exact rational density ratio is

\[
\sigma_p(N)
 = \frac{p\,|R_p(N)|}{(p-1)^2}.
\]

For a prime \(p\),

\[
\sigma_p(N)=
\begin{cases}
\dfrac{p}{p-1}, & p\mid N,\\[1ex]
1-\dfrac{1}{(p-1)^2}, & p\nmid N.
\end{cases}
\]

At \(p=2\),

\[
\sigma_2(N)=
\begin{cases}
2,&N\text{ even},\\
0,&N\text{ odd}.
\end{cases}
\]

Thus the modulus-two factor is the exact parity obstruction. A product that
omits \(p=2\) can remain positive for an odd target and therefore cannot be
treated as the full local admissibility test.

For an odd prime, define

\[
u_p=1-\frac{1}{(p-1)^2},\qquad
c_p(N)=
\begin{cases}
\dfrac{p-1}{p-2},&p\mid N,\\
1,&p\nmid N.
\end{cases}
\]

Then the finite identity

\[
\sigma_p(N)=u_p\,c_p(N)
\]

recovers the classical universal odd-prime factor and target-dependent divisor
correction without asserting convergence of their infinite products.

## Finite products only

For a finite set \(P\) of primes, the source defines

\[
\mathfrak S_P(N)=\prod_{p\in P}\sigma_p(N).
\]

It proves:

- \(\mathfrak S_P(N)>0\) for even \(N\);
- if \(2\in P\), then \(\mathfrak S_P(N)=0\) for odd \(N\);
- for a finite set of odd primes, the product factors into the product of the
  universal terms and the product of the divisor corrections.

No limit over growing prime sets is constructed. In particular, this source
does not prove convergence, a uniform lower bound, or compatibility with a
major-arc integral.

## Relation to the Goldbach stack

The inherited stack provides:

1. the exact `Nat.Prime` Goldbach count;
2. a prime-log weighted mass with equivalent positivity;
3. a finite additive-character projector;
4. the continuous unit-interval coefficient identity.

The local-factor module adds only exact finite congruence arithmetic. The next
separate obligations are:

1. construct a source-bound major-arc approximation for the same exponential
   sum and normalization;
2. identify its finite local products with the relevant truncated main term;
3. prove convergence and quantitative truncation control for any infinite
   singular-series object actually used;
4. define the complementary minor arcs without losing the oscillatory sign;
5. establish a residual bound strictly smaller than the positive main term for
   every sufficiently large admissible even input;
6. verify every smaller even input independently.

A positive local product, even with all finite factors correct, is not an
actual prime representation.
