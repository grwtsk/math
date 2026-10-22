# Dyadic exhaustion of the cumulative weighted Mertens-square budget

Owners: #354, #350, #347, #343, #335, and #334 / RH-E02. Canonical target: #15.
Stacked parent: draft PR #352 at
`60b47f7380354b29f961641dad623e1a9661dec2`, tree
`bff40ebf9dba0a1704a9d36a0e95295bc181339b`.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / ARITHMETIC_SUPPLIER_OPEN.**

This note records the reduction implemented in
`GRWTSK/NumberTheory/Moebius/DyadicWeightedMertensSquare.lean`, source blob
`5be4e03ba89872c7ce1cd3bdafaeaf7b3c2168c5`.
It turns the all-horizon cumulative criterion from #350 into an equivalent
criterion on completed dyadic blocks. No dyadic estimate is established.

## 1. The unchanged positive source

Retain the repository's actual Mertens prefix

\[
M_n=\sum_{k\le n}\mu(k)
\]

and the positive density introduced in #350,

\[
b_n=rac{M_n^2}{n(n+1)},
\qquad
A(N)=\sum_{0\le n<N}b_n.
\]

The Lean source uses the existing real-power form

```text
weightedMertensBaseTerm n
  = M_n^2 * n^(-1) * (n+1)^(-1).
```

The term at `n=0` is retained. It vanishes because the actual source prefix
vanishes there. The implementation proves this source identity before using
the dyadic telescope; it does not silently redefine the series to begin at
one.

The previously established arithmetic criterion is

\[
\mathsf{CumSubpoly}:
\quad
\forall\delta>0\ \exists C_\delta\ge0\ \forall N\ge1,
\qquad
A(N)\le C_\delta N^\delta.
\tag{1}
\]

By PR #352, this condition is equivalent to the all-positive weighted
Mertens-square family and is sufficient for the existing RH-E02 endpoint.

## 2. Literal half-open dyadic cells

Define

\[
B_j=
\sum_{2^j\le n<2^{j+1}}b_n
\tag{2}
\]

and

\[
P(J)=\sum_{0\le j<J}B_j.
\tag{3}
\]

The intervals are half-open. Thus adjacent blocks share no term and every
positive integer belongs to exactly one block. Replacing them by closed
intervals double-counts the power-of-two endpoints; the finite hostile
controls reject that mutation.

The module proves nonnegativity of both `B_j` and `P(J)`, followed by the exact
endpoint identity

\[
\boxed{
B_j=A(2^{j+1})-A(2^j).
}
\tag{4}
\]

This is a finite sum identity, not an asymptotic approximation.

Summing (4) gives the complete telescope

\[
\boxed{
P(J)=A(2^J).
}
\tag{5}
\]

For `J=0`, the left side is the empty block prefix and the right side is
`A(1)=b_0=0`. This is why the source proof of the zero term is part of the
formal boundary.

## 3. Dyadic-prefix criterion

Define

\[
\mathsf{DyadicPrefixSubpoly}:
\quad
\forall\delta>0\ \exists C_\delta\ge0\ \forall J\ge0,
\qquad
P(J)\le C_\delta(2^J)^\delta.
\tag{6}
\]

The implemented theorem is

\[
\boxed{
\mathsf{DyadicPrefixSubpoly}
\iff
\mathsf{CumSubpoly}.
}
\tag{7}
\]

### Cumulative to dyadic

This direction is immediate from (5): apply (1) at the positive horizon
`N=2^J`. It loses no exponent and introduces no new constant.

### Dyadic to cumulative

Fix a target exponent \(\delta>0\) and spend

\[
\eta=\frac{\delta}{2}.
\]

For a positive horizon \(N\), the source selects

\[
J=\lfloor\log_2 N\rfloor+1.
\tag{8}
\]

Mathlib's natural-logarithm theorems provide the exact cover

\[
N<2^J
\tag{9}
\]

and

\[
2^J\le2N.
\tag{10}
\]

The choice in (8) deliberately uses the next dyadic endpoint even when `N` is
itself a power of two. This keeps the cover strict and still pays at most the
single factor in (10).

Monotonicity of the nonnegative cumulative mass and (5) give

\[
A(N)
 \le A(2^J)
 =P(J)
 \le C_\eta(2^J)^\eta
 \le C_\eta(2N)^\eta.
\]

Because \(N\ge1\) and \(\eta\le\delta\),

\[
(2N)^\eta
 =2^\eta N^\eta
 \le2^\eta N^\delta.
\]

Therefore

\[
A(N)\le
\left(C_\eta2^\eta\right)N^\delta.
\tag{11}
\]

The exponent-halving and the cover factor are visible in the source. Neither
is erased by a change of notation.

## 4. Necessary individual block estimate

The module also names the source-readable block condition

\[
\mathsf{DyadicBlockSubpoly}:
\quad
\forall\delta>0\ \exists D_\delta\ge0\ \forall j,
\qquad
B_j\le D_\delta(2^j)^\delta.
\tag{12}
\]

Since

\[
B_j\le P(j+1),
\]

the dyadic-prefix criterion implies (12). The implemented constant is

\[
D_\delta=C_\delta2^\delta,
\]

using

\[
(2^{j+1})^\delta
 =2^\delta(2^j)^\delta.
\]

The converse from (12) to (6) is **not** claimed in this increment. It requires
a complete geometric summation with constants and exponent choices retained.
The written mathematics is standard, but the repository does not mark it as a
Lean theorem until that proof is supplied and reviewed.

This distinction matters operationally:

```text
completed dyadic-prefix bounds  <-> cumulative criterion -> RH endpoint,
individual block bounds          <- necessary consequence only in this module.
```

## 5. Conditional RH return

Combining (7) with PR #352 gives the source chain

```text
subpolynomial completed dyadic prefixes
  -> subpolynomial cumulative weighted Mertens square
  -> all-positive weighted Mertens-square family
  -> reciprocal increment mean squares
  -> reciprocal compensated correlations
  -> pickup energy abscissa zero
  -> RiemannHypothesis.
```

The new terminal theorem is therefore

\[
\boxed{
\mathsf{DyadicPrefixSubpoly}
\Longrightarrow
\mathrm{RH}.
}
\tag{13}
\]

This is conditional. No witness for (6), (12), or (1) is constructed.

## 6. Arithmetic frontier

Equation (2) is the concrete block source:

\[
B_j=
\sum_{2^j\le n<2^{j+1}}
\frac{M_n^2}{n(n+1)}.
\tag{14}
\]

A direct arithmetic program may target completed prefixes

\[
\sum_{i<J}B_i\le 2^{o(J)},
\tag{15}
\]

which is now formally equivalent to RH-E02's cumulative supplier. Individual
block estimates of the form

\[
B_j\le2^{o(j)}
\tag{16}
\]

remain a natural stronger input, but their complete return through geometric
summation is intentionally not represented by a theorem in this increment.

The dyadic von Mangoldt/Green route RH-G01/G02 uses different coefficients,
endpoint moments, and a different energy. Common use of powers of two does not
identify that source with (14). A valid bridge must explicitly transform one
arithmetic source into the other and pay every residual.

Likewise, Type-II, large-sieve, or bilinear arguments may now be attached to
(14) or (15), but naming those methods does not provide the estimate.

## 7. Finite diagnostics

An external diagnostic script was run under normal and optimized Python. Both
modes produced byte-identical reports with SHA-256

```text
5d9dcb459b61b9e6af96f915ce0c4a13258aa75a796a697030d960ffff941828
```

and completed 590,008 explicit checks. The checks include:

- independently generated Möbius values and prefixes through 4,096;
- exact rational `B_j=A(2^(j+1))-A(2^j)` identities;
- exact completed-prefix telescopes;
- all logarithmic cover inequalities through horizon 4,096;
- 78,125 seven-term source-like streams across the first three blocks;
- 100,000 exponent-halving cover comparisons;
- 648 explicit rejections of closed-cell double counting.

These diagnostics are finite and external. They do not prove the universal
identities, the subpolynomial estimate, Lean elaboration, or kernel acceptance.

## 8. Verification boundary

The increment adds only one pure subject module, this note, and a passive
verification target. It does not alter existing source, public-root imports,
pins, workflows, held branches, or execution state.

No Lean/Lake/native evaluator, repository build, generated-declaration
extraction, proof-term check, transitive axiom/native review, or independent
mathematical review is represented. Exact-head qualification and immutable
external acceptance remain required.

Keep #354, #350, #347, #343, #335, #334, and #15 open. The decisive arithmetic
obligation is still the universal dyadic-prefix estimate (15), equivalently
the cumulative estimate from #350.
