# Unnormalized ZMod DFT Parseval

Issue: #764  
Direct stacked parent: draft PR #760 at `395f9ad19fc917835855081fc2e77b64dc05bb09`.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
UNNORMALIZED_ZMOD_DFT_PARSEVAL_SOURCE_DRAFT
REGULAR_SIGNED_RESIDUE_ENERGY_OPEN
```

## Scope

The previous increment identified the repository transform exactly with Mathlib's `ZMod.dft` at negated frequency.

This increment source-scripts the unnormalized finite Parseval identity itself using the same primitive-character orthogonality already used by Mathlib in its DFT inversion proof.

No signed residue-energy estimate is added.

## Character orthogonality

The source scripts

```lean
sum_stdAddChar_mul_eq_ite
sum_stdAddChar_sub_mul.
```

For square modulus `N=d*d`,

```text
sum_k stdAddChar(t*k)
=
N  if t=0,
0  otherwise.
```

Equivalently,

```text
sum_k stdAddChar((s-t)*k)
=
N  if s=t,
0  otherwise.
```

This is the finite orthogonality relation already implicit in Mathlib's `ZMod.dft_dft` proof.

## Complex quadratic identity

The source expands the complete DFT energy before taking real parts:

```lean
sum_conj_dft_mul_dft.
```

Schematically,

```text
sum_k conj(dft C k) * dft C k
=
sum_(s,t) conj(C s) C t
  * sum_k stdAddChar((s-t)k).
```

Orthogonality kills all off-diagonal terms and leaves

```text
d^2 * sum_s conj(C s) C s.
```

No estimate enters this calculation.

## Real norm-square Parseval

Using the exact complex norm-square identity, the source scripts

```lean
unnormalizedZModDFTParseval_sq
```

with

```text
sum_k ||ZMod.dft C k||^2
=
d^2 * sum_s ||C s||^2.
```

It then source-constructs

```lean
unnormalizedZModDFTParseval
```

as an inhabitant of the proposition typed in PR #760.

Transport through the exact normalization bridge gives

```lean
stdAddCharSquareModulusParseval.
```

Thus the repository transform now has the source-scripted identity

```text
sum_k ||sum_s C(s) stdAddChar(k*s)||^2
=
d^2 * sum_s ||C(s)||^2.
```

## Proof-relevant status

The source constructs

```lean
finiteOrthogonalityToStdAddCharParsevalAdapter
```

from `True` to the repository Parseval interface. This is a source-level statement that the finite harmonic identity has been scripted rather than left as an analytic premise.

It is not yet an elaboration or kernel-acceptance claim.

## Remaining analytic frontier

The next regular obstruction is no longer Fourier normalization or Parseval. It is the actual signed residue-space energy of the four refined buckets:

```text
(r,q) in {0,1} x {even,odd}.
```

The next bounded reduction should apply the Parseval identity to those four buckets and expose the exact endpoint residue-energy surface with all `d` factors canceled transparently.

## Remaining obligations

Analytic:

```text
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

No Lean/Lake/native execution, proof-term acceptance, signed residue-energy estimate, large-sieve theorem, merge, root admission, GRH theorem, or RH theorem is represented by this note.
