# Signed Mertens-increment cells for the non-boundary packet

Issue: #682. Parent signed retained-length packet: #678 / draft PR #679.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / SIGNED_MERTENS_CELL_SUPPLIER_OPEN**.

## Exact Mertens increment

For every depth `t`, retained length `n`, and base point `a`, the induced short Möbius sum is authored as the ordinary Mertens prefix difference

```text
harmonicShortMobiusSum(j,t,n,a)
 = M(a + harmonicShiftLower(j,t) + n)
   - M(a + harmonicShiftLower(j,t)).
```

Thus no new arithmetic object is introduced by the harmonic short-interval notation.

## Signed arithmetic cell

The source defines

```lean
coreNonboundarySignedMertensCell
```

as

```text
2 * mu(a+1)
  * (M(start+n)-M(start))
  * (terminalSelector + interiorSelector).
```

The Möbius base sign, Mertens increment, and exact Abel selector remain multiplied before any absolute value.

## Fixed-length expansion

At each retained length, the source authors

```text
coreNonboundarySignedLengthSlice(j,n)
 = sum_(t in core depths)
     sum_(a<t+1)
       coreNonboundarySignedMertensCell(j,n,t,a).
```

## Start-point-major packet

Finite Fubini yields

```text
coreNonboundarySignedLengthPacket(j)
 = coreNonboundarySignedMertensCellPacket(j),
```

where the right-hand side sums in depth/base-point/retained-length order. Absolute value remains outside the complete packet.

The source defines

```lean
SubpolynomialCoreNonboundarySignedMertensCellPacket
```

and authors its exact equivalence with the existing signed retained-length supplier.

## Conditional endpoint

The source records

```text
ClassicalWeakMertensStepSource
+ SubpolynomialCoreNonboundarySignedMertensCellPacket
-> conditional RH endpoint.
```

The first premise pays the exceptional maximal-length boundary. The second is the remaining signed non-boundary arithmetic source.

## Information-loss boundary

A finite hostile witness shows that signed cancellation between two cells may be exact while the corresponding termwise absolute mass is positive. Therefore future Chowla, Elliott, dispersion, or short-interval adapters must preserve cancellation across depth, retained length, and starting point.

## Next obstruction

Construct an analytic supplier for the complete signed Mertens-cell packet, or telescope the retained-length selector inside each cell to expose exact growing-shift two-point weights.

## Nonclaims

No signed analytic estimate, short-interval theorem, Lean/Lake execution, elaboration, kernel acceptance, trust audit, external replay, merge, Weak Mertens proof, or RH proof is claimed.
