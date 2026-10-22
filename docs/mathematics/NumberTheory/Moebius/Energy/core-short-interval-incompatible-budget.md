# Deterministic payment interface for incompatible dyadic start blocks

Issue: #572. Parent block-length witness: #569 / draft PR #570.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / COMPATIBLE_DYADIC_SHORT_INTERVAL_SUPPLIER_OPEN**.

## Pointwise deterministic bounds

For every start point `x` and interval length `n`,

```text
|sum_(k<n) μ(x+k)| <= n.
```

A standard dyadic start block `[2^r,2^(r+1))` has exactly `2^r` starts, hence

```text
dyadicStartBlockShortIntervalL1(r,n)
  <= 2^r * n.
```

For the low-scale incompatible part `2^r<n`, the source defines the pure budget

```lean
incompatibleDyadicStartBlockTrivialBudget
```

and proves the actual incompatible L1 first moment is bounded by it.

The explicit two-start endpoint correction is separately bounded by `2n`.

## Packet-level lifting

The exact terminal first-difference and interior second-difference coefficients are preserved.

The source defines pure deterministic packet budgets

```lean
coreLongIncompatibleTrivialBudgetPacket
coreLongEndpointTrivialBudgetPacket
```

and proves

```text
coreLongIncompatibleDyadicL1Packet
  <= coreLongIncompatibleTrivialBudgetPacket

coreLongEndpointCorrectionL1Packet
  <= coreLongEndpointTrivialBudgetPacket.
```

Thus all Möbius cancellation has been removed from the incompatible and endpoint pieces.

## Remaining split

The source defines two propositions:

```lean
SubpolynomialCompatibleDyadicShortIntervalPacket
SubpolynomialIncompatibleAndEndpointTrivialBudget
```

and proves that together they imply the complete dyadic-block supplier.

The first is the remaining analytic short-interval source. The second is now purely deterministic and should be analyzed separately before importing literature.

## Nonclaims

This increment does not prove the deterministic packet budgets are subpolynomial. It does not apply a short-interval theorem and does not prove RH.
