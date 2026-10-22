# Quartic endpoint-prefix recombination

Issue: #765. Parent explicit-multiplicity layer: #755 / draft PR #761 at exact head `3d02ae82b871bc27d6afd60036686d0f30396de8`.

Evidence state: **SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / SIGNED_ENDPOINT_PREFIX_COMPENSATION_OPEN**.

## Terminal consumer

The terminal repository consumer remains

```lean
riemannHypothesis_of_subpolynomialCoreGrowingShiftFirstDifferencePacket
```

through the exact chain

```text
SubpolynomialCoreGrowingShiftQuarticEndpointPrefixCompensation
        ↔
SubpolynomialCoreGrowingShiftQuarticOffDiagonalCompensation
        ↔
SubpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy
        ↓
SubpolynomialCoreGrowingShiftFirstDifferencePacket
        ↓
conditional RH endpoint.
```

This is an RH-implying conditional route. The arithmetic source introduced here is not constructed.

## Selected missing premise

The prior active stack separated the quartic upper triangle into:

1. a repeated-middle collision line, represented as a centered squarefree binary correlation;
2. a collision-free affine parallelogram box with an explicit interval multiplicity.

Those are valid exact coordinates, but they are not intrinsic analytic obligations. Their sum is one simpler signed endpoint-prefix packet.

## Exact endpoint-prefix identity

For a fixed shift `h` and prefix length `N`, define

```text
EndpointPair(h,b) = mu(b+1) * mu(b+1+h)

EndpointPrefix(h,N)
  = sum_(0<=b<N) M_2(h,b) * EndpointPair(h,b).
```

For each endpoint `b`, exact finite factorization gives

```text
sum_(0<=a<b)
  mu(a+1)mu(a+1+h)mu(b+1)mu(b+1+h)
=
M_2(h,b) * mu(b+1)mu(b+1+h).
```

Therefore

```text
mertensTwoPointQuarticUpperTriangle(h,N)
=
EndpointPrefix(h,N),
```

and by upper/lower symmetry,

```text
mertensTwoPointQuarticOffDiagonal(h,N)
=
2 * EndpointPrefix(h,N).
```

No limit, approximation, positivity hypothesis, or external theorem is used.

## Active packet

The source defines

```lean
coreGrowingShiftQuarticEndpointPrefixEnergy
```

by summing the fixed-shift endpoint-prefix packet over every genuine core depth and every active growing shift.

It proves

```text
coreGrowingShiftQuarticOffDiagonalEnergy(j)
=
2 * coreGrowingShiftQuarticEndpointPrefixEnergy(j).
```

Consequently,

```text
coreGrowingShiftBinaryPrefixSquareEnergy(j)
=
coreGrowingShiftQuarticDiagonalEnergy(j)
+
2 * coreGrowingShiftQuarticEndpointPrefixEnergy(j).
```

The positive diagonal and the signed endpoint-prefix contribution remain distinct.

## Recombination of the prior split

The inherited exact identities give

```text
coreGrowingShiftQuarticCollisionFreeEnergy
=
coreGrowingShiftQuarticParallelogramEnergy
=
coreGrowingShiftQuarticMultiplicityWeightedBoxEnergy
=
coreGrowingShiftQuarticExplicitIntervalWeightedBoxEnergy.
```

Combining these with the collision/free partition of the upper triangle yields

```text
coreGrowingShiftQuarticCollisionEnergy(j)
+
coreGrowingShiftQuarticExplicitIntervalWeightedBoxEnergy(j)
=
coreGrowingShiftQuarticEndpointPrefixEnergy(j).
```

Thus the two conjectural branches from #733 and #755 may be replaced by one signed source. Separate collision and collision-free estimates remain sufficient, but they are no longer the canonical obstruction.

## Canonical source

The source defines

```lean
SubpolynomialCoreGrowingShiftQuarticEndpointPrefixCompensation
```

as the requirement that for every `delta>0`, one constant `C_delta>=0` satisfies

```text
2 * coreGrowingShiftQuarticEndpointPrefixEnergy(j)
<=
(C_delta * 2^j * (2^j)^delta)^2
-
coreGrowingShiftQuarticDiagonalEnergy(j)
```

for every scale `j`.

This is a one-sided signed compensation statement. It is neither nonnegativity nor an absolute-value bound.

The source proves exact equivalence with both:

```lean
SubpolynomialCoreGrowingShiftQuarticOffDiagonalCompensation
SubpolynomialCoreGrowingShiftBinaryPrefixSquareEnergy.
```

## Proof classification

- `mertensTwoPointQuarticUpperTriangle_eq_endpointPrefix`: exact finite algebra and finite factorization.
- `coreGrowingShiftQuarticOffDiagonalEnergy_eq_two_mul_endpointPrefix`: exact finite summation.
- collision plus explicit-box recombination: exact reuse of repository-proved coordinate identities.
- source equivalences: formal rewriting of identical finite observables.
- RH consequence: conditional reduction only.

## Positivity and sign classification

The endpoint-prefix packet is signed:

```text
M_2(h,b) * mu(b+1) * mu(b+1+h).
```

The endpoint pair may change sign, and different endpoints may cancel. Positivity is not assumed or reconstructed here.

The quartic diagonal remains nonnegative and visible. The source asks the signed endpoint-prefix term to compensate the diagonal at the exact scale required by the active square energy.

## Finite witness and hostile case

All identities are finite sums over explicit `Finset` ranges. No external certificate is required.

The theorem

```lean
endpointPrefixCancellation_hostileWitness
```

records that signed endpoint-prefix terms may cancel exactly while their termwise absolute mass is positive. Therefore a triangle inequality before the endpoint sum would strengthen the premise and erase the target mechanism.

## Candidate-supplier comparison

| Candidate | Exact conclusion needed | Distance | Failure value |
| --- | --- | ---: | --- |
| Direct endpoint-prefix estimate | The canonical compensation proposition | Lowest | Identifies the exact arithmetic shortfall |
| Summation-by-parts or Carleson energy | A sign-preserving bound on the same packet | Medium | Exposes whether the energy transport loses the endpoint sign |
| Separate collision plus four-point box bounds | Two sufficient inputs whose sum supplies the packet | Higher | Remains a valid fallback, but may over-separate cancellation |

The direct endpoint-prefix source is selected because it is exactly equivalent to the inherited RH-facing square energy and has lower structural complexity than the split quartic sources.

## Typed external boundaries

The source adds

```lean
SignedEndpointPrefixMobiusSource
ToCoreGrowingShiftQuarticEndpointPrefixCompensation
```

for a theorem already stated on the exact signed packet.

It also adds

```lean
EndpointPrefixCarlesonSource
ToCoreGrowingShiftQuarticEndpointPrefixCompensationFromCarleson
```

for a summation-by-parts, Carleson-energy, martingale, or related argument. Such an adapter must separately prove:

```text
summation-by-parts identity
prefix-energy control
endpoint-increment control
active depth/shift multiplicity transport
sign preservation
all-scale uniformity
finite small-scale control.
```

Names or thematic similarity do not construct an adapter.

## Failure cases

The following implications are not asserted:

- a bound on the absolute endpoint-prefix mass implies the canonical source at the same strength;
- collision-line control alone bounds the endpoint-prefix packet;
- collision-free four-point control alone bounds the endpoint-prefix packet;
- a positive prefix-square estimate reconstructs endpoint-level cancellation;
- a fixed-shift theorem supplies the growing-shift, all-prefix, all-depth packet without a uniform adapter.

## RH consequence

The increment supplies a reusable exact analytic interface and a conditional reduction. It does not discharge the arithmetic premise and does not prove RH.

## Next obstruction

Prove one exact theorem controlling

```text
sum_(t in core depths)
sum_(k < active shift count)
sum_(b < t+1)
  M_2(h_(j,t,k), b)
  * mu(b+1)
  * mu(b+1+h_(j,t,k))
```

at the compensation scale, while preserving cancellation across endpoints, growing shifts, and depth multiplicity.

A promising next deterministic increment is to transpose this packet to its explicit two-variable `(h,b)` interval multiplicity and then test summation-by-parts or Carleson-energy transports against that exact weight.

## Nonclaims

No endpoint-prefix estimate, Carleson estimate, martingale theorem, Chowla theorem, corrected-Elliott theorem, Lean/Lake execution, elaboration, kernel acceptance, trust audit, external replay, merge, or RH proof is claimed.
