# Signed Type I / absolute Type II frontier for the centered Möbius-log aggregate

## Source identity

This packet is stacked directly on the squarefree common-divisor packet. It
does not rename the previous supplier. It proves a non-equivalent structural
split and an obstruction to one tempting but invalid proof strategy.

## Exact split

For every positive shift `h`, the preceding source expresses the centered
Möbius-log pair block as a signed sum over squarefree common divisors `g | h`.
The new packet introduces a cutoff `Y` and partitions that support into

\[
g\le Y
\qquad\text{and}\qquad
Y<g.
\]

At the seven-eighths boundary the concrete choice is

\[
Y=\lfloor\sqrt X\rfloor.
\]

The resulting Fejér-weighted aggregate satisfies the exact identity

\[
\mathcal A_X
=
\mathcal A_X^{\mathrm I}
+
\mathcal A_X^{\mathrm {II}}.
\]

No estimate is used in this identity.

## Complete centered channels remain in Type I

The centering anchor is represented by the augmented index `none` and has
attached modulus one. Therefore any pair with at least one anchor index has
common gcd one.

For every cutoff `Y >= 1`, all of the following remain together in the signed
Type I block:

- anchor/anchor;
- anchor/genuine;
- genuine/anchor;
- genuine/genuine pairs with small common gcd.

Every pair in Type II is genuine/genuine. This is a proved support theorem,
not an informal classification.

## Proved obstruction to absolute Type I

Let \(\mathcal M_X^{\mathrm I,abs}\) be the termwise absolute majorant of the
low-common-gcd block. The anchor/anchor pair lies in the `g = 1` class and its
absolute coefficient equals one. Since the Fejér weights are nonnegative,

\[
\sum_{h,n} w(n)w(n+h)
\le
\mathcal M_X^{\mathrm I,abs}.
\]

The left side is the complete Fejér anchor autocorrelation. Consequently, a
target-scale theorem for the absolute low-g majorant already contains, as a
strict sub-obligation, the target-scale anchor autocorrelation estimate.

This is the precise obstruction: replacing signed Type I by termwise absolute
Type I removes the centered cancellation before any Möbius analysis begins.
The low-g theorem must remain signed unless the anchor autocorrelation is
proved separately.

## Valid asymmetric bridge

The packet states the two exact remaining analytic inputs:

```text
SevenEighthsBoundaryMinimalSignedLowGCDTypeIBound
SevenEighthsBoundaryMinimalAbsoluteHighGCDTypeIIBound
```

The first preserves every centered channel. The second is allowed to use
absolute values because the high-g support is genuine/genuine only.

The source proves

```text
signed low-g Type I
+ absolute high-g Type II
-> SevenEighthsBoundaryMinimalMobiusLogSquarefreeGCDBound
-> SevenEighthsPrimePartialDiscrepancy.
```

This bridge has exact hypotheses and introduces no hidden power-slack removal.

## Relation to primary methods

Heath-Brown's generalized Vaughan identity is a primary source for decomposing
von Mangoldt sums into Type I and Type II forms. The
Barban-Davenport-Halberstam line is a primary source for mean-square
distribution over arithmetic progressions. These sources motivate the shape
of the two required estimates, but neither source is asserted to prove the
specific finite Fejér-weighted, centered, squarefree-gcd-stratified theorem in
this repository.

No external paper theorem is imported as an unverified declaration or treated
as an already-matched supplier.

## Sibling-line coordination

The signed-kernel and centered-winding branches were inspected only for proved
identities. No proved identity was found that identifies either sibling object
with the present centered Möbius-log aggregate. Therefore this packet imports
neither line and claims no cross-line transfer.

## Precise unresolved estimates

The next substantive obligations are:

1. **Signed Type I**

   \[
   \mathcal A_X^{\mathrm I}
   \ll
   X^{3/2}(\log X)^4,
   \qquad
   g\le\sqrt X,
   \]

   uniformly in the boundary-minimal Fejér cutoff and prefix endpoint, while
   retaining the complete anchor/mixed/genuine signed sum.

2. **Absolute Type II**

   \[
   \mathcal M_X^{\mathrm {II},abs}
   \ll
   X^{3/2}(\log X)^4,
   \qquad
   g>\sqrt X,
   \]

   over genuine/genuine pairs with squarefree primitive coprime reduced
   moduli.

The signed Type I estimate is the sharper obstruction because its termwise
absolute replacement forces the additional anchor-autocorrelation theorem.

## Evidence status

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
SIGNED_TYPE_I_ABSOLUTE_TYPE_II_SPLIT_SOURCE_PROVED
HIGH_GCD_ANCHOR_EXCLUSION_SOURCE_PROVED
ABSOLUTE_TYPE_I_ANCHOR_AUTOCORRELATION_BARRIER_SOURCE_PROVED
SEVEN_EIGHTHS_TYPE_I_TYPE_II_ESTIMATES_OPEN
```

No Lean replay, kernel audit, Type I estimate, Type II estimate, threshold
descent, zero-free theorem at one half, or Riemann Hypothesis result is claimed.
