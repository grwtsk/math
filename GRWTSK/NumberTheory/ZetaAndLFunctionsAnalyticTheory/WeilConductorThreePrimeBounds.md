# A signed prime-hinge enclosure from the actual conductor-three source

Local attribution: grwtsk contributors.

Maintained source: [WeilConductorThreePrimeBounds.lean](WeilConductorThreePrimeBounds.lean).
Starting revision:
[`6395f161d50488d54df5cd19f57f89e25ceed3a5`](https://github.com/grwtsk/math/commit/6395f161d50488d54df5cd19f57f89e25ceed3a5).
The mathematical consumer is the two-cell source enclosure at gamma cutoff
eight and displacement four. This module concerns the actual signed
`primeHinges` term and does not replace the native character or cutoff.

## Exact source and finite support

The maintained radius-four source defines

\[
P(t)=\sum_{n\in\operatorname{activePrimePowers}(4)}
 \frac{\Lambda(n)}{\sqrt n}\,
 \operatorname{Re}(\overline{\chi_3(n)})
 \max(|t|-\log n,0).
\]

Here `chi_3` is the existing `modThreeQuadratic` quadratic Dirichlet
character, with residue values `0,1,-1`. The factor one half in the
original hinge cancels exactly the factor two in `twistedPrime`; the
already proved `primeHinges_eq_sum` supplies this identity.

At `t=4`, terms with `log n >= 4` vanish. The smaller inventory
`activePrimePowers 2` is a subset of `activePrimePowers 4`, since
`exp 4 < exp 8`. Conversely, a term of the larger inventory outside the
smaller one has `n >= exp 4`; positivity of `n` and monotonicity of the
logarithm give `log n >= 4`. Thus the original sum equals its restriction
to the smaller inventory, with a proof that every omitted hinge is zero.

The existing `RadiusTwoPrimeNorm.activePrimePowers_two` identifies this
smaller inventory exactly with `Finset.Icc 2 54`. For each retained index,
`n < exp 4`, hence `log n < 4`, and the maximum equals `4-log n`.
No prime-only approximation is made: all 53 integers remain, with zero
von Mangoldt weights at non-prime-powers and zero character weights at
multiples of three.

The new `characterCoefficient` is rational and takes values `0,1,-1`
according to `n % 3`. `characterCoefficient_eq` proves that its real cast
is exactly `Re(conj(modThreeQuadratic n))`, using the natural-number
cast into `ZMod 3` and the three residue cases. It is an exact coefficient
identity, not a phase approximation.

Together these facts give `PrimeBounds.primeHinges_four_eq`:

\[
P(4)=\sum_{n=2}^{54}c_3(n)\frac{\Lambda(n)}{\sqrt n}(4-\log n).
\]

## Rational interval construction

The scalar observation functions from
[WeilRadiusTwoPrimeObservations.lean](WeilRadiusTwoPrimeObservations.lean)
already provide source-level enclosures for `log n` and `primeWeight n`
on exactly this integer range. Their logarithm formula uses finite
convergent series with the full remainder allowance; their square-root
formula uses exact integer square comparisons. The prime-weight identity
retains the actual von Mangoldt prime-power condition.

For each integer, `termBounds` computes the interval operations

\[
\operatorname{round}_{16}\left(
 c_3(n)\,[\Lambda(n)/\sqrt n]\,[4-\log n]\right).
\]

Every bracket is an outward rational interval. Multiplication uses all
four endpoint products, so negative character values reverse endpoints
correctly. Outward rounding is performed after the complete signed
product and retains both endpoints. `termBounds_sound` derives its
enclosure from the existing scalar observation theorems and
`RationalRealBounds` soundness theorems.

`primeHingesBounds` sums these 53 intervals. The finite rational comparison
`primeHingesBounds_coarse` is evaluated with `decide +kernel`, and its
combination with the source identity yields the public consumer theorem

\[
\boxed{-\frac{171}{100}\le P(4)\le-\frac{17}{10}.}
\]

This interval is deliberately wider than the scalar observation errors.
The final comparison is exact rational arithmetic; floating calculations
used to choose the target do not enter any theorem premise or acceptance
comparison. The source check is for the literal prime-hinge sum, not for a
generic matrix or a substituted unsigned prime mass.

## Declaration and source correspondence

The outer namespace remains
`GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen`.

| Declaration | Role |
| --- | --- |
| `PrimeBounds.characterCoefficient` | Rational residue values of the actual character. |
| `PrimeBounds.characterCoefficient_eq` | Exact return to the native complex character. |
| `PrimeBounds.primeHinges_four_eq` | Restrict the original inventory by proving all omitted hinges zero. |
| `PrimeBounds.termBounds`, `PrimeBounds.termBounds_sound` | Signed outward interval for each retained integer. |
| `PrimeBounds.primeHingesBounds`, `PrimeBounds.primeHingesBounds_sound` | Sum the complete finite source enclosure. |
| `PrimeBounds.primeHingesBounds_coarse` | Executable exact rational endpoint comparison. |
| `primeHinges_four_bounds` | The coarse interval returned to the actual source term. |

The native kernel, cutoff, and character are in
[WeilConductorThreeKernel.lean](WeilConductorThreeKernel.lean),
[WeilLowSchurEnclosure.lean](WeilLowSchurEnclosure.lean), and
[DirichletModThreeCharacter.lean](DirichletModThreeCharacter.lean).
The interval algebra is
[RationalRealBounds.lean](../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalRealBounds.lean).
The exact smaller inventory is proved in
[WeilRadiusTwoPrimeNorm.lean](WeilRadiusTwoPrimeNorm.lean).
These are local source consequences under the unchanged Lean `4.34.1`
and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` pins, not a claim of
a new paper theorem or a separate formalization of an external paper.

## Mathematical checks and limitations

The cutoff argument has two required directions: membership in the smaller
inventory ensures a positive hinge, while nonmembership within the original
inventory ensures a zero hinge. An inequality about the cutoff alone would
not justify discarding weighted terms.

The character coefficient at residue two is negative. Replacing these
coefficients by their absolute values changes the source sum and loses the
signed cancellation used by this enclosure. Keeping all integers also
prevents loss of higher prime powers. Neither sign handling nor the
inventory identity depends on a numerical list of selected primes.

This is one displacement of one arithmetic term. The archimedean constant,
finite gamma sum, reduced-matrix return, and rational matrix certificate
require their own exact bridges. The joint all-precision producer from
[WeilConductorThreeConstrainedCertificates.lean](WeilConductorThreeConstrainedCertificates.lean)
remains a separate obligation. No all-grid positivity or RH/GRH conclusion
is supplied by the scalar enclosure.

The support restriction and interval multiplication are the primary
analytical argument. An independently enumerated prime-power sum would
be a useful hostile check but would share the same numerical source
identities; it is not supplied here as an independent proof.

## Verification evidence

This source and its maintained imports are included in the successful
exact-target build of
`GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeTwoCellCertificate`.
The final source SHA-256 is
`abe5d710f41ec00e054168f7d552bfe111e90cd957c6ed34750533880f3ac2fa`.
Lean `4.34.1` and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612` remain unchanged.

The aggregate build passed in 187.713 seconds, and
the separate transitive axiom audit passed in 127.056
seconds. All public declarations of this module were included. Their axiom
sets are subsets of `propext`, `Classical.choice`, and `Quot.sound`.
The [enclosing certificate record](WeilConductorThreeTwoCellCertificate.md)
lists the exact three-source inventory, successful checks, and every earlier
failed, interrupted, or timed-out attempt at its actual scope.

Fresh proof-term replay of the full dependency closure, independent external
mathematical review, and an independently implemented checker are **NOT_RUN**.
This is a local consequence and executable observation of maintained sources,
not a claim to formalize a new paper result or establish novelty.
