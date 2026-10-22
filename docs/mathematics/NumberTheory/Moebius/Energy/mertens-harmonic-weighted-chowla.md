# Explicit harmonic-tail form of the weighted Chowla packet

Issue: #511. Parent weighted-Chowla packet: #507 / draft PR #508.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / HARMONIC_WEIGHTED_CHOWLA_ESTIMATE_OPEN**.

## Closed-form Abel drop

Let
```text
X = 2^j,
Y = 2^(j+1),
b = t+1+h.
```

Using the existing max-kernel identity for `dyadicMertensShiftWeight`, the source proves:

- if `b < X`, then the forward Abel drop is exactly zero, including `b=X-1`;
- if `X <= b`, then
  ```text
  Delta(j,h,t) = 1/b - 1/(b+1).
  ```

Therefore on the exact triangular support the normalized kernel is

```text
K(j,t,h)
  = Y * (1/b - 1/(b+1))
```

after the endpoint enters the right dyadic half, and zero before it.

No approximation by `1/b^2` is used.

## Exact mass formula

On the actual depth range,

```text
KernelMass(j,t)
  = Y * (1 / max(X,t+2) - 1/Y).
```

This is a literal finite reciprocal tail.

## Harmonic weighted Chowla average

The source defines the explicit harmonic form

```text
harmonicWeightedMertensTwoPointChowlaAverage(j,t)
```

and proves

```text
weightedMertensTwoPointChowlaAverage(j,t)
  = harmonicWeightedMertensTwoPointChowlaAverage(j,t).
```

Consequently each signed depth slice and the complete weighted packet admit an exact harmonic-tail presentation.

The all-scale proposition

```lean
SubpolynomialDyadicHarmonicWeightedMertensChowlaPacket
```

is proved exactly equivalent to the preceding weighted-Chowla packet supplier and therefore conditionally sufficient for RH.

## Mathematical significance

The remaining source is now an explicit finite harmonic-weighted family of ordinary two-point Möbius prefixes.

This is the first exact repository interface genuinely close to logarithmically weighted Chowla/Elliott statements. However, no external theorem is imported here and no identification with a literature logarithmic average is made.

The remaining mismatch must be checked theorem-by-theorem:
- finite versus asymptotic averaging;
- growing shift range;
- depth-dependent shift selection;
- ordinary prefix versus literature normalization;
- uniformity in scale/depth;
- exceptional sets;
- constants.

## Hostile boundaries

- There is no atom at the dyadic midpoint.
- The right endpoint remains strict.
- Reciprocal differences are exact; `1/b^2` is only a potential comparison theorem.
- Harmonic weighting does not itself imply logarithmic Chowla.
- Fixed-shift results remain insufficient for the growing family.
- Exact representation is not an arithmetic estimate.

## Next obstruction

Compare the explicit harmonic-tail packet against the strongest current logarithmically weighted two-point Chowla/Elliott theorem at exact quantifier and normalization scope. Either construct a valid adapter or record the first precise mismatch as an obstruction witness.
