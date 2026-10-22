# Growing-shift first-difference telescope

Issue: #688. Parent signed Mertens-cell packet: #682 / draft PR #686 at exact head `38de323c5d09c8b808f77074b8dde2fc8daf7a76`.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / GROWING_SHIFT_FIRST_DIFFERENCE_SUPPLIER_OPEN**.

## Terminal consumer

The inherited terminal consumer is the repository declaration

```lean
riemannHypothesis_of_subpolynomialCoreLongDeepRemainderPacket
```

for the Riemann zeta function. Its unresolved arithmetic input is the subpolynomial core long-depth remainder packet. This increment changes the exact representation of that packet; it does not prove the analytic premise.

## Finite Abel telescope

For cumulative sums

```text
A(n) = sum_(r<n) c(r)
```

and a coordinate sequence `q`, the source authors the exact finite identity

```text
A(N)*(q(N-1)-q(N))
+ sum_(H<=n<N) A(n)*((q(n-1)-q(n))-(q(n)-q(n+1)))
=
A(H)*(q(H-1)-q(H))
+ sum_(H<=k<N) c(k)*(q(k)-q(k+1)).
```

This is exact finite algebra. It uses no positivity, limit, asymptotic estimate, or external certificate.

## Arithmetic specialization

At one genuine core depth, the source specializes

```text
c(k) = mertensTwoPointPrefix(harmonicShiftLower(j,t)+k, t+1),
q(k) = harmonicShiftReciprocal(j,t,k),
H    = logarithmicShiftThreshold(j),
N    = harmonicShiftCount(j,t).
```

It defines:

```lean
coreGrowingShiftAnchor
coreGrowingShiftFirstDifferenceTail
coreGrowingShiftFirstDifferenceDepth
```

and authors

```text
logarithmicLongDepthRemainder(j,t)
 = coreGrowingShiftFirstDifferenceDepth(j,t).
```

The tail is a signed family of ordinary binary Möbius correlations with a shift that grows throughout the exact active range. The reciprocal first-difference weight remains exact.

## Packet identity and reunification

The packet-level observable is

```lean
coreGrowingShiftFirstDifferencePacket
```

with exact identity

```text
coreLongDeepRemainderPacket(j)
 = coreGrowingShiftFirstDifferencePacket(j).
```

The earlier hybrid split also reunifies exactly:

```text
coreBoundarySignedPacket(j)
+ coreNonboundarySignedMertensCellPacket(j)
= coreGrowingShiftFirstDifferencePacket(j).
```

Thus the Weak-Mertens boundary route and the signed non-boundary cell route are one sufficient decomposition of a single first-difference growing-shift packet; they are not declared necessary.

## Source-facing supplier

The source defines

```lean
SubpolynomialCoreGrowingShiftFirstDifferencePacket
```

and authors its exact equivalence with

```lean
SubpolynomialCoreLongDeepRemainderPacket.
```

It therefore retains the existing conditional RH endpoint without adding an arithmetic estimate.

## Adapter boundary

The source types

```lean
GrowingShiftBinaryMobiusSource
ToCoreGrowingShiftFirstDifferencePacketAdapter
```

with explicit obligations for:

- the logarithmic anchor term;
- the full growing-shift range;
- the exact first-difference weights;
- uniformity across core depths;
- finite small-scale control.

No fixed-shift Chowla theorem, corrected Elliott theorem, dispersion theorem, or other literature result is asserted to inhabit the adapter.

## Proof classification

- `finite_cumulative_second_to_first_tail`: exact finite algebra;
- one-depth specialization: exact finite reindexing and unfolding;
- packet identity: exact finite summation;
- supplier equivalence: formal wrapper;
- RH consequence: conditional reduction through an inherited repository declaration.

## Positivity classification

None is proved or assumed by the selected theorem layer. The packet is signed. No termwise absolute value, positive kernel, positive measure, or positive-semidefinite form is introduced.

## Failure and information-loss boundary

A theorem controlling only fixed shifts, only logarithmic averages in another variable, or only a positive termwise majorant does not automatically control this packet. Any valid adapter must preserve the anchor, growing shift range, reciprocal first-difference weights, and depth uniformity.

## RH consequence

This increment supplies a reusable exact arithmetic interface and a conditional RH endpoint. It does not discharge the growing-shift supplier and does not prove RH.

## Next obstruction

Construct one source-bound quantitative adapter from a theorem with uniform binary Möbius-correlation control over the exact growing shift/depth range and the reciprocal first-difference weights, or prove that a proposed theorem loses one of those invariants.
