# Individual dyadic block criterion by exact geometric summation

Owners: #357, #354, #350, #347, #343, #335, and #334 / RH-E02.  
Canonical target: #15.  
Stacked parent: draft PR #356 at
`e47b0cc1eba23e98f994aef381ce49cbcbe7a7ba`, tree
`c72de41f0bca6a7b09429596e83f5b35ab565317`.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ARITHMETIC_SUPPLIER_OPEN.**

This note records the reduction implemented in
`GRWTSK/NumberTheory/Moebius/DyadicBlockWeightedMertensSquare.lean`.
It closes the deliberate nonconverse left by #354. The result is a criterion:
it does not establish the dyadic arithmetic estimate.

## 1. Unchanged source

Retain the actual repository density

\[
b_n
 =
\frac{M_n^2}{n(n+1)},
\]

with the repository's real-power conventions and actual zero term. The
half-open dyadic block is

\[
B_j
 =
\sum_{2^j\le n<2^{j+1}} b_n,
\]

and its completed prefix is

\[
P(J)
 =
\sum_{0\le j<J} B_j.
\]

PR #356 already supplies the exact identities

\[
B_j=A(2^{j+1})-A(2^j)
\]

and

\[
P(J)=A(2^J),
\]

where \(A(N)=\sum_{n<N}b_n\). It also proves that completed-prefix control
implies individual-block control.

The open direction was the finite geometric summation from the blocks back to
the prefix.

## 2. Two propositions

The individual-block proposition is

\[
\mathsf{BlockSubpoly}:
\quad
\forall\delta>0\ \exists D_\delta\ge0\ \forall j,
\qquad
B_j\le D_\delta(2^j)^\delta.
\]

The completed-prefix proposition is

\[
\mathsf{PrefixSubpoly}:
\quad
\forall\delta>0\ \exists C_\delta\ge0\ \forall J,
\qquad
P(J)\le C_\delta(2^J)^\delta.
\]

The new source proves

\[
\boxed{
\mathsf{BlockSubpoly}
\iff
\mathsf{PrefixSubpoly}.
}
\]

Together with #354 and #350, this also gives exact equivalences with the
all-horizon cumulative condition and the all-positive weighted
Mertens-square family.

## 3. Exact geometric constant

Fix \(\delta>0\) and put

\[
r=2^\delta.
\]

Because the base is \(2>1\) and the exponent is positive,

\[
r>1.
\]

Suppose the individual blocks satisfy

\[
B_j\le D r^j.
\]

The source chooses

\[
\boxed{
C=\frac{D}{r-1}.
}
\]

The denominator is positive. In particular, \(C\ge0\) whenever \(D\ge0\).

The exact algebraic payment is

\[
\boxed{
C+D=Cr.
}
\]

Indeed,

\[
\frac{D}{r-1}+D
 =
\frac{D+D(r-1)}{r-1}
 =
\frac{Dr}{r-1}
 =
\frac{D}{r-1}r.
\]

This identity is retained as a named theorem. The implementation does not use
a totalized infinite geometric series as evidence for the finite estimate.

## 4. Inductive finite-prefix proof

The source proves

\[
P(J)\le C(2^J)^\delta
\]

by induction on \(J\).

At \(J=0\),

\[
P(0)=0
\]

and the right side is \(C\), so nonnegativity of \(C\) pays the base case.

For the successor step, use the exact recurrences

\[
P(J+1)=P(J)+B_J
\]

and

\[
(2^{J+1})^\delta
 =
2^\delta(2^J)^\delta
 =
r(2^J)^\delta.
\]

Then

\[
\begin{aligned}
P(J+1)
&=P(J)+B_J\\
&\le C(2^J)^\delta+D(2^J)^\delta\\
&=(C+D)(2^J)^\delta\\
&=Cr(2^J)^\delta\\
&=C(2^{J+1})^\delta.
\end{aligned}
\]

Every term is finite, and the proof uses the actual prefix and endpoint
recurrences from #354.

## 5. Why the positive exponent is essential

At \(\delta=0\),

\[
r=2^0=1
\]

and the proposed constant has denominator \(r-1=0\). This is not a removable
formal nuisance: a uniform bound \(B_j\le D\) allows the prefix to grow like
\(JD\). It does not imply a uniform prefix bound.

Thus the universal quantifier remains

\[
\forall\delta>0,
\]

not \(\delta\ge0\).

## 6. Final finite-scale arithmetic criterion

Combining this increment with the preceding reductions gives the source-level
equivalence

\[
\boxed{
\forall\delta>0\ \exists D_\delta\ge0\ \forall j,
\qquad
\sum_{2^j\le n<2^{j+1}}
\frac{M_n^2}{n(n+1)}
\le
D_\delta 2^{\delta j}
}
\]

with each of the following:

1. subpolynomial growth of completed dyadic prefixes;
2. subpolynomial growth of the all-horizon cumulative mass;
3. the all-positive weighted Mertens-square family.

Consequently the new module exposes the conditional endpoint

\[
\mathsf{BlockSubpoly}
\Longrightarrow
\mathrm{RH}.
\]

The implication travels through the existing RH-E02 chain. No converse from RH
is claimed.

## 7. Interpretation

The remaining arithmetic target is blockwise and finite-scale. It asks for

\[
B_j=2^{o(j)}.
\]

This is an averaged square condition. It is weaker in form than a pointwise
Mertens estimate such as

\[
|M_n|\ll_\varepsilon n^{1/2+\varepsilon}.
\]

The block contains all actual Mertens prefixes in one dyadic interval, with
positive weight \(1/[n(n+1)]\). The criterion does not manufacture signed
cancellation after squaring, and it does not permit one exceptional block to
be omitted.

This is the interface intended for later Type-II, bilinear, large-sieve,
random-matrix, or spectral estimates: such a supplier must prove the universal
block family above for the actual \(M_n\).

## 8. Hostile boundaries retained

The implementation rejects the following substitutions:

- allowing \(\delta=0\);
- omitting the denominator \(2^\delta-1\);
- bounding only finitely many blocks;
- replacing half-open dyadic cells by overlapping closed cells;
- substituting another arithmetic sequence for the actual Mertens prefix;
- treating finite diagnostics as an infinite estimate;
- claiming a converse from RH.

The prefix-to-block theorem is inherited from #354. The block-to-prefix
theorem in this increment uses the same source definitions, so the equivalence
does not pass through an untracked comparison model.

## 9. Verification boundary

The added Lean file is a source draft. Its declarations and proof scripts have
not been parsed or elaborated by Lean in this increment. No kernel proof term,
generated-declaration inventory, transitive axiom audit, native/unsafe review,
repository build, or independent mathematical review is represented.

Finite rational diagnostics test the geometric payment and the induction over
millions of bounded block streams. Those checks are useful hostile controls,
but they are not evidence for the missing arithmetic estimate and are not Lean
acceptance.

The decisive open statement remains the universal individual-block bound.
Keep #357, #354, #350, #347, #343, #335, #334, and #15 open.
