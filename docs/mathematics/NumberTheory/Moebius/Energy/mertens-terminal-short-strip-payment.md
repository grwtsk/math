# Terminal-short active-count strip payment

Issue: #554. Parent deep reduction: #551 / draft PR #552.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / CORE_LONG_SHORT_INTERVAL_SUPPLIER_OPEN**.

## Endpoint defect corrected

The deep-long packet from #551 still contains terminal second-Abel terms with cumulative length

```text
n = harmonicShiftCount j t.
```

Near the right dyadic endpoint this active count can be smaller than the logarithmic threshold `j+2`, even when the depth itself is deep.

Therefore deep depth alone was not sufficient to guarantee that every retained cumulative length was long.

## Exact active-count split

Define

```text
terminalShortDeepDepths(j)
  = { t in deep range :
      harmonicShiftCount j t < j+2 }

coreLongDeepDepths(j)
  = { t in deep range :
      j+2 <= harmonicShiftCount j t }.
```

The source authors an exact partition of the deep long remainder into

```text
terminal-short strip + genuine core.
```

## Deterministic terminal-strip payment

The source proves that the terminal-short set has logarithmic cardinality:

[
#mathrm{terminalShortDeepDepths}(j)
le (j+2)+2.
]

The two extra depths cover small-scale and endpoint subtraction conventions.

It also records that the final inherited depth has empty triangular support.

For every terminal-strip depth,

[
|mathrm{LongDepthRemainder}|
le
2+mathrm{normalizedShortDepthBudget}.
]

Summing gives

[
|mathrm{TerminalShortDeepRemainderPacket}|
le
2(j+4)+mathrm{normalizedShortPacketBudget}.
]

Using #538's dyadic logarithmic absorption and its already-proved source-level short budget, the source authors a subpolynomial terminal-strip supplier.

## Genuine core

The remaining object is

```lean
coreLongDeepRemainderPacket
```

over depths satisfying

```text
D(j) <= t < 2^(j+1)
j+2 <= harmonicShiftCount j t.
```

Hence:
- every terminal second-Abel cumulative length is at least `j+2`;
- every retained interior long term already has cumulative length at least `j+2`;
- shallow and terminal-short endpoint strips have both been paid deterministically.

The final analytic proposition is

```lean
SubpolynomialCoreLongDeepRemainderPacket.
```

The source authors the reduction from this proposition to the previous deep supplier and to the existing conditional RH endpoint.

## Nonclaims

No quantitative short-interval theorem is applied. No Lean/Lake execution, kernel acceptance, merge, or RH proof is claimed.
