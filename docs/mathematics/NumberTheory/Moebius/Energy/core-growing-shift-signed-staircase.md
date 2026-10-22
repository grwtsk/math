# Signed growing-shift staircase

Issue: #824. Parent scale witness: #816 / draft PR #820 at exact head `fe225f62f5c46a2ad7fc65c8c1498c5ba3c41140`.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / SIGNED_STAIRCASE_DISPERSION_ESTIMATE_OPEN**.

## Reason for the return to the signed packet

The positive active staircase from #793 is conditionally cubic-scale under the explicit random-scale premises typed in #816. This increment therefore returns to the exact signed packet before either Cauchy--Schwarz inequality from #699.

No conclusion of #816 is used as an arithmetic premise. The branch uses only exact finite declarations already present in the stack.

## Source coordinates

The inherited signed packet is

```text
coreGrowingShiftFirstDifferencePacket(j)
 = 2 * sum_(t in coreLongDeepDepths j)
       sum_(k < harmonicShiftCount j t)
         M_2(harmonicShiftLower(j,t)+k,t+1)
         * coreGrowingShiftFirstDifferenceWeight(j,t,k).
```

One source cell has coordinates `(t,k)`.

## Injective staircase coordinates

Map

```text
(t,k) |-> (N,h)
N = t+1
h = harmonicShiftLower(j,t)+k.
```

The map is injective:

- `N` determines `t`;
- after `t` is known, `h` determines `k`.

It is also onto the exact finite staircase below.

Write

```text
X = 2^j,
Y = 2^(j+1),
H = logarithmicShiftThreshold j.
```

The prefix coordinate is

```text
H+1 <= N < Y-H.
```

For each such prefix, the ordinary shift coordinate is

```text
max 1 (X-N) <= h < Y-N.
```

The source defines:

```lean
coreGrowingShiftSignedStaircasePrefixSet
coreGrowingShiftSignedStaircaseLower
coreGrowingShiftSignedStaircaseUpper
coreGrowingShiftSignedStaircaseShiftSet
coreGrowingShiftSignedStaircaseIndices
```

and proves membership, injectivity, and surjectivity for the coordinate map.

## Explicit clamped coefficient

The low logarithmic anchor repeats the first-difference coefficient at the final anchor shift. The literal tail uses the current ordinary shift.

Define

```text
r_j(N,h)
 = max h (max 1 (X-N) + H - 1).
```

The exact staircase coefficient is

```text
1/(N+r_j(N,h)) - 1/(N+r_j(N,h)+1).
```

On the exact support, the source proves this is equal to the inherited piecewise coefficient

```lean
coreGrowingShiftFirstDifferenceWeight
  j (N-1) (h-max 1 (X-N)).
```

The clamp is not an estimate. It is a closed form for the existing logarithmic anchor plus literal first-difference tail.

## Exact signed staircase packet

The source defines

```lean
coreGrowingShiftSignedStaircasePacket
```

as

```text
sum_(H+1<=N<Y-H)
  sum_(max 1 (X-N)<=h<Y-N)
    M_2(h,N)
    * (1/(N+r_j(N,h)) - 1/(N+r_j(N,h)+1)).
```

Finite injective reindexing gives

```text
coreGrowingShiftFirstDifferencePacket(j)
 = 2 * coreGrowingShiftSignedStaircasePacket(j).
```

No multiplicity appears: the prefix coordinate remembers the original depth exactly.

No absolute value, square, Cauchy--Schwarz inequality, support enlargement, or analytic estimate occurs in the identity.

## Source-facing condition

The new condition is

```lean
SubpolynomialCoreGrowingShiftSignedStaircasePacket
```

and retains the outer factor two so its normalization is literally the RH-facing packet.

The source authors the exact equivalence

```text
SubpolynomialCoreGrowingShiftSignedStaircasePacket
  <->
SubpolynomialCoreGrowingShiftFirstDifferencePacket.
```

Hence the conditional endpoint remains available through

```lean
riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedStaircasePacket.
```

No inhabitant of the source is constructed.

## Analytic boundary

Two proof-producing interfaces are typed:

```lean
SignedGrowingShiftStaircaseSource
ToCoreGrowingShiftSignedStaircasePacket
```

and

```lean
SignedGrowingShiftStaircaseDispersionSource
ToCoreGrowingShiftSignedStaircasePacketFromDispersion.
```

A Fourier, bilinear, or dispersion theorem must preserve:

- the exact prefix/shift staircase;
- the logarithmic-anchor clamp;
- the reciprocal first-difference orientation;
- cancellation across shifts;
- cancellation across prefixes;
- one all-scale normalization;
- finite small scales.

A fixed-shift theorem, positive prefix-square theorem, or termwise absolute-value bound does not inhabit either interface automatically.

## Information-loss witness

The source records a finite witness where two signed cells cancel exactly while their termwise absolute mass is positive. This prevents silently returning to the conditionally obstructed positive staircase.

## Dependency path

```text
signed staircase dispersion estimate
        <->
SubpolynomialCoreGrowingShiftFirstDifferencePacket
        <->
SubpolynomialCoreLongDeepRemainderPacket
        ->
conditional RH endpoint.
```

## Nonclaims

No signed dispersion estimate, Chowla theorem, corrected-Elliott theorem, Fourier theorem, Lean/Lake execution, elaboration, kernel acceptance, trust audit, external replay, merge, RH proof, or RH disproof is claimed.

## Next obstruction

Prove a source-faithful all-scale estimate for the exact signed staircase packet, or derive an exact finite transform that preserves its support and clamped reciprocal coefficient.