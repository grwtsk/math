# Kernel-weighted Chowla packet for the signed Abel route

Issue: #507. Parent kernel source: #503 / draft PR #504.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / WEIGHTED_CHOWLA_SUPPLIER_OPEN**.

## Exact weighted average

For dyadic scale `j`, depth `t`, and the subprobability kernel `K(j,t,h)`, define

```text
WeightedChowlaAverage(j,t)
  = sum_(1<=h<2^(j+1))
      K(j,t,h) * C_h(t+1).
```

The source proves the exact identity

```text
DepthSlice(j,t)
  = (2/2^(j+1)) * WeightedChowlaAverage(j,t).
```

This is only finite algebra/Fubini. No estimate is introduced.

## Subprobability transfer

On the actual depth range, `K>=0` and `sum_h K<=1`.

Therefore a uniform one-sided bound

```text
C_h(t+1) <= U
```

for every admissible shift transfers to

```text
WeightedChowlaAverage(j,t) <= U
```

when `U>=0`.

A separate stronger theorem shows that

```text
|C_h(t+1)| <= U
```

implies

```text
|WeightedChowlaAverage(j,t)| <= U.
```

The absolute-value theorem is sufficient only; it is not an equivalence.

## Complete packet

Define

```text
WeightedChowlaPacket(j)
  = sum_(t<2^(j+1))
      (2/2^(j+1)) * WeightedChowlaAverage(j,t).
```

The source proves

```text
WeightedChowlaPacket(j)
  = SignedAbelDepthPacket(j).
```

Hence the all-scale proposition

```lean
SubpolynomialDyadicWeightedMertensChowlaPacket
```

is exactly equivalent to the inherited signed-depth supplier and therefore conditionally sufficient for RH.

## Mathematical significance

This is the minimal direct junction to a growing-shift weighted Chowla statement. The Abel kernel selects a nonnegative subprobability mixture of ordinary two-point Möbius prefixes.

A future arithmetic theorem may target this weighted average directly. It does not need to first control an arbitrary test family or an oversized positive square norm.

## Hostile boundaries

- Fixed-shift cancellation does not supply the weighted growing-shift packet.
- An unweighted shift average is a different observable.
- Kernel mass is at most one, not necessarily one.
- The exact packet remains signed.
- Absolute-value control is stronger than necessary.
- No external Chowla or Elliott result is imported.
- The exact weighted identity is not a cancellation theorem.

## Next obstruction

Prove the all-scale subpolynomial bound for the kernel-weighted two-point prefix packet, or identify a current theorem whose exact quantifiers and normalization map into it.
