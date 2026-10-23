# Parseval reduction of nonzero square-modulus Fourier modes

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / PARSEVAL_RESIDUE_REDUCTION_SOURCE_DRAFT / RESIDUE_L2_SUPPLIER_OPEN / SQUAREFREE_DIAGONAL_FREQUENCY_SUPPLIER_OPEN`

Owner: #619. Direct parent: #617 / PR #618. Zero/nonzero split: #611 / PR #612. Parity/Fourier factorization: #607 / PR #608.

This increment advances only the independent `k != 0` branch. The zero mode remains owned by the pointwise ordinary-Mertens square-root-plus-epsilon premise.

## Exact source binding

```text
parent revision:
  0f98cd9101bd57fb193ea4b6655a52c6461e44c0

parent tree:
  24d71a9ba7f5ba7037606518313c08e9a405ff96

candidate branch:
  research/rh-nonzero-parseval-residue-619-20261021

source commit:
  3894d0c906aeba68e45794167ab0d5dac2e74d83

source:
  GRWTSK/NumberTheory/Moebius/
    NonzeroFourierParsevalResidueEnergy.lean

source blob:
  0e13fa5daeb44d590cd37d68673ded3364d4b821
```

## Generic finite Parseval theorem

For positive `N`, define

```lean
positiveZModFourier
```

by

\[
\widehat\Phi_+(k)
=
\sum_{a\bmod N} e_N(ka)\Phi(a).
\]

The source scripts the complex orthogonality identity

```lean
positiveZModFourier_parseval_conj
```

and then the real norm-square identity

```lean
positiveZModFourier_parseval.
```

Mathematically,

\[
\boxed{
\sum_{k\bmod N}|\widehat\Phi_+(k)|^2
=
N\sum_{a\bmod N}|\Phi(a)|^2
}.
\]

The proof uses only finite sums, the primitivity of `ZMod.stdAddChar`, and `AddChar.sum_mulShift`.

No analytic estimate enters.

## Exact residue-class objects

For `q=d^2`, parity `r`, and `a : ZMod q`, the source defines

```lean
parityMobiusResidueSum b d r a
```

with mathematical content

\[
A_\mu(b,d,r,a)
=
\sum_{\substack{1\le u\le b\\
u\equiv r\pmod2\\
\lfloor u/2\rfloor\equiv a\pmod{d^2}}}
\mu(u).
\]

It also defines

```lean
paritySquarefreeResidueSum b d r a
```

for the corresponding squarefree mass

\[
A_{\mu^2}(b,d,r,a)
=
\sum_{\text{same residue fibre}}\mu(u)^2.
\]

The natural floor map `u/2` is preserved before reduction modulo `d^2`.

## Fourier representation

The source scripts

```lean
parityOnePointMobiusFourierSum_eq_positiveFourier_residues.
```

Thus the one-point Möbius sum from PR #608 is exactly

\[
S_r(b,d,k)
=
\sum_{a\bmod d^2}e_{d^2}(ka)A_\mu(b,d,r,a).
\]

The explicit diagonal is separately represented by

```lean
parityOnePointMobiusFourierDiagonal_eq_positiveFourier_residues
```

at doubled frequency:

\[
D_r(b,d,k)
=
\sum_{a\bmod d^2}e_{d^2}(2ka)A_{\mu^2}(b,d,r,a).
\]

This doubled-frequency feature is retained rather than silently treated as a bijective frequency change when the square modulus is even.

## Exact parity Möbius Parseval

The load-bearing exact identity is

```lean
parityMobiusFourier_parseval.
```

It scripts

\[
\boxed{
\sum_{k\bmod d^2}|S_r(b,d,k)|^2
=
d^2
\sum_{a\bmod d^2}|A_\mu(b,d,r,a)|^2
}.
\]

The corresponding residue energy is

```lean
parityMobiusResidueL2Energy.
```

This is now the exact large-sieve/dispersion-facing observable for the Möbius part of the nonzero Fourier branch.

## Squarefree diagonal remains separate

The source defines

```lean
paritySquarefreeDiagonalNonzeroFrequencyL1.
```

This is the normalized nonzero-frequency mass

\[
\frac1{d^2}
\sum_{\substack{k\bmod d^2\\k\ne0}}
|D_r(b,d,k)|.
\]

It is not replaced by a termwise or uniform `O(b)` estimate. Such a replacement, summed over all effective moduli, would lose the natural endpoint scale.

The source also records

```lean
paritySquarefreeResidueL2Energy
```

for a future Cauchy/Parseval diagonal layer, but proves no comparison or estimate from it here.

## Nonzero endpoint comparison

The source scripts the pointwise inequality

```lean
norm_square_sub_diagonal_le
```

with

\[
|S^2-D|
\le
|S|^2+|D|.
\]

Using Parseval for the `|S|^2` term while retaining the exact diagonal mass, it proves

```lean
normalized_nonzero_parity_majorant_le_residueL2_add_diagonalL1.
```

Summing the two parities and every effective square modulus gives

```lean
parityFourierNonzeroFrequencyEndpointMajorant_le_residueL2DiagonalL1.
```

The resulting endpoint observable is

```lean
parityResidueL2DiagonalL1EndpointMajorant.
```

Mathematically it is the sum over `d^2<b` of

\[
\frac12
\left(
E_{\mu,0}+E_{\mu,1}
+L_{\mu^2,0}+L_{\mu^2,1}
\right),
\]

where the `E` terms are exact Möbius residue-class `L2` energies and the `L` terms are the retained normalized squarefree-diagonal frequency masses.

## New all-scale supplier

The source defines

```lean
DyadicNaturalScaleResidueL2DiagonalL1Budget.
```

It asks that, for every `delta>0`, the endpoint majorant above be bounded by

\[
C_\delta X X^\delta
\]

for every `X=2^j <= b < 2X`.

The source scripts

```lean
nonzeroParityFourierBudget_of_residueL2DiagonalL1.
```

Therefore

\[
\boxed{
\text{residue }L^2
+\text{ diagonal frequency }L^1
\Longrightarrow
\text{nonzero parity-Fourier budget}
}.
\]

Combining with the still-open pointwise Mertens premise gives

```lean
naturalScaleCongruenceL1_of_pointwiseMertens_and_residueL2DiagonalL1.
```

## Relation to neighboring analytic programs

The Möbius residue `L2` energy is now directly aligned with:

- square-modulus large-sieve inequalities;
- dispersion/Bombieri--Vinogradov methods;
- averaged local-Fourier or Gowers estimates;
- conductor-uniform L-function input only after an explicit mean-square transport.

The squarefree diagonal remains a distinct problem because its doubled-frequency map is not uniformly invertible modulo even square moduli.

No named large-sieve, dispersion, local-Gowers, or L-function theorem is imported or promoted to the new supplier.

## Evidence

Established at source-script level:

```text
SOURCE_DRAFT
GENERIC_FINITE_PARSEVAL_SOURCE_DRAFT
PARITY_MOBIUS_RESIDUE_PARSEVAL_SOURCE_DRAFT
NONZERO_ENDPOINT_COMPARISON_SOURCE_DRAFT
```

Not established:

```text
RESIDUE_L2_BUDGET
SQUAREFREE_DIAGONAL_FREQUENCY_L1_BUDGET
POINTWISE_MERTENS_ENVELOPE
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
RIEMANN_HYPOTHESIS
```

No Lean/Lake execution, proof-term acceptance, analytic estimate, merge, or RH claim occurred.
