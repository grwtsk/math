# Exact coefficient-weighted short-interval L1 core packet

Issue: #557. Parent: #554 / draft PR #556.

Evidence: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / CORE_WEIGHTED_SHORT_INTERVAL_L1_SUPPLIER_OPEN.

The genuine core long remainder is rewritten at each depth as a terminal cumulative term plus the retained long interior second-Abel terms. Every retained cumulative length is at least j+2.

Define the induced first moment
```text
harmonicShortIntervalL1(j,t,n)
  = sum_(a<t+1) |harmonicShortMobiusSum(j,t,n,a)|.
```

Using the exact Fubini/triangle theorem from #523 and nonnegativity of the reciprocal first/second-difference coefficients, the source authors a nonnegative majorant for each core depth and then the packet
```lean
coreLongShortIntervalL1Packet.
```

The key sufficient estimate is
```text
|coreLongDeepRemainderPacket(j)|
  <= coreLongShortIntervalL1Packet(j).
```

The remaining source-facing proposition is
```lean
SubpolynomialCoreLongShortIntervalL1Packet.
```
It implies the existing core supplier and the conditional RH endpoint. No inhabitant is constructed.

This triangle majorant is sufficient, not equivalent. No current short-interval theorem is asserted sufficient here.