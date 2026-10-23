# Exact Mathlib ZMod DFT normalization bridge

Issue: #757  
Direct stacked parent: draft PR #756 at `e7851e000b9f292d16eeeff14f68a1e4a33b9c6e`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
MATHLIB_ZMOD_DFT_NORMALIZATION_BRIDGE_SOURCE_DRAFT
UNNORMALIZED_DFT_PARSEVAL_OPEN
```

## Scope

The previous regular branch exposed the exact repository transform

```text
F(k) = sum_s C(s) * ZMod.stdAddChar(k*s).
```

Mathlib's `ZMod.dft` uses the same standard additive character with the sign
convention

```text
dft(C)(k)
  = sum_s ZMod.stdAddChar(-(s*k)) * C(s).
```

This increment proves only the exact normalization bridge between those two
transforms.

## Pointwise identity

The source scripts

```lean
stdAddCharResidueFourier_eq_mathlibDft_neg
```

with

```text
F_repo(k) = dft(C)(-k).
```

The proof uses only commutativity in `ZMod (d*d)` and the literal Mathlib
definition `ZMod.dft_apply`.

No Fourier estimate is used.

## Full-frequency energy equality

Negation is a permutation of `ZMod (d*d)`, so the source scripts

```lean
sum_norm_sq_stdAddCharResidueFourier_eq_mathlibDft.
```

Thus

```text
sum_k |F_repo(k)|^2
=
sum_k |dft(C)(k)|^2.
```

There is no scale loss, no discarded frequency, and no change of norm
convention.

## Exact Parseval equivalence

The source defines

```lean
UnnormalizedZModDFTParseval
```

with required content

```text
sum_k |dft(C)(k)|^2
=
d^2 * sum_s |C(s)|^2.
```

It then scripts the exact equivalence

```lean
stdAddCharSquareModulusParseval_iff_mathlibDft.
```

Hence the repository Parseval proposition from PR #756 and the unnormalized
Mathlib-DFT Parseval proposition are the same theorem up to the frequency
negation permutation.

The proof-relevant adapters are

```lean
mathlibDftParsevalToStdAddCharAdapter
stdAddCharParsevalToMathlibDftAdapter.
```

## Remaining theorem boundary

Mathlib currently supplies the DFT definition, inversion, and finite-character
orthogonality infrastructure inspected for this increment. This source does
not claim that Mathlib already exports the exact unnormalized squared-norm
identity required here.

The remaining proposition is therefore exactly

```lean
UnnormalizedZModDFTParseval.
```

A future proof or imported theorem must match:

- Mathlib's literal `ZMod.dft`;
- counting-measure / unnormalized scaling;
- no inserted unitary factor;
- full frequency and residue groups;
- real norm squares;
- the exact factor `d^2`.

These requirements are recorded in

```lean
UnnormalizedZModDFTParsevalSourceData
UnnormalizedZModDFTParsevalSource
UnnormalizedZModDFTParsevalSourceAdapter.
```

## Remaining obligations

Analytic / harmonic:

```text
UNNORMALIZED_ZMOD_DFT_PARSEVAL
REGULAR_SIGNED_RESIDUE_ENERGY
POINTWISE_ORDINARY_MERTENS_ENVELOPE
POINTWISE_CHI_FOUR_MERTENS_ENVELOPE
TWO_UNIT_ANALYTIC_SUPPLIER
```

Verification:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake/native execution, proof-term acceptance, DFT Parseval theorem,
signed residue-energy estimate, large-sieve estimate, merge, root admission,
GRH theorem, or RH theorem is represented by this note.
