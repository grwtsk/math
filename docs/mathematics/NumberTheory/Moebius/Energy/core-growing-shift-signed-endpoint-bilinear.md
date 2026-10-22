# Signed endpoint-bilinear coordinates for the growing-shift packet

Issue: #831  
Parent issue: #824  
Parent draft PR: #826  
Pinned parent revision: `4725f7d9d987621cb8c98496a5e4e6170dbee368`  
Pinned repository `main` during the audit: `5abfeefa6ee8dd9b02077cc77239d17f32f1fd6c`

Evidence state:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
SIGNED_ENDPOINT_BILINEAR_ESTIMATE_OPEN
```

No Lean or Lake command was run for this increment. No elaboration, kernel
acceptance, trust audit, external replay, analytic estimate, merge, RH proof,
or RH disproof is represented here.

## 1. Terminal consumer

The exact RH-facing declaration inherited from the active stack is

```lean
riemannHypothesis_of_subpolynomialCoreGrowingShiftFirstDifferencePacket
```

in namespace

```lean
GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
```

Its unresolved arithmetic premise is

```lean
SubpolynomialCoreGrowingShiftFirstDifferencePacket
```

which requires, for every `delta>0`, one nonnegative constant controlling the
signed first-difference packet by `(2^j)^delta` at every scale.

This is a conditional RH-implying interface. The analytic premise remains
open. The theorem is not represented as an unconditional proof of RH.

## 2. Selected missing premise

PR #826 rewrote the first-difference packet as twice the exact signed
prefix/shift staircase

```text
sum_(N,h in the active staircase)
  M_2(h,N) Delta_j(N,h).
```

The next missing deterministic supplier was an exact bilinear expansion that
preserves all signs and proves that the shifted endpoint never wraps around
the ambient dyadic interval.

The selected result is the strict endpoint representation

```text
sum_N sum_(1 <= n <= N) sum_m
  mu(n) mu(m) K_j(N,n,m),
```

on the exact support

```text
H+1 <= N < Y-H,
1 <= n <= N,
n < m < Y,
max 1 (X-N) <= m-n < Y-N,
```

where

```text
X = 2^j,
Y = 2^(j+1),
H = logarithmicShiftThreshold j,
K_j(N,n,m) = Delta_j(N,m-n).
```

## 3. Candidate-supplier comparison

| Candidate | Terminal relevance | Speculative distance | Disposition |
| --- | --- | --- | --- |
| Strict endpoint-bilinear reindexing | Directly represents the surviving signed RH packet | Zero; finite expansion and bijection only | Selected |
| Full finite Fourier transform on a cyclic dyadic group | Potentially exposes dispersion across endpoints | Requires zero-padding, no-wrap, transform conventions, inversion, and a later estimate | Deferred to the next increment |
| Positive square or absolute-mass control | Gives a sufficient norm after information loss | The parent scale witness shows the positive staircase is conditionally cubic-scale | Rejected as the live route |

The selected theorem changes coordinates only. It does not claim arithmetic
cancellation.

## 4. Exact finite objects

### Source cells

A source cell is

```text
(N,h,a)
```

with `(N,h)` in the signed staircase and `a<N`. Its value is

```text
mu(a+1) mu(a+1+h) Delta_j(N,h).
```

The source finset is

```lean
coreGrowingShiftSignedEndpointSourceCells
```

and its total is

```lean
coreGrowingShiftSignedEndpointSourceEnergy.
```

### Endpoint cells

The endpoint map is

```text
n = a+1,
m = a+1+h.
```

The endpoint support is encoded by

```lean
coreGrowingShiftSignedEndpointPairSet
coreGrowingShiftSignedEndpointIndices.
```

The inverse map is

```text
a = n-1,
h = m-n.
```

The map is proved injective and surjective on the two exact finite supports.
No multiplicity is introduced.

### No-wrap theorem

For every source cell,

```text
a+1+h < 2^(j+1).
```

This follows from

```text
a < N,
h < 2^(j+1)-N.
```

It is recorded before any cyclic or Fourier interface is typed. Therefore a
future zero-padding theorem has a precise nonaliasing premise rather than an
implicit assumption.

## 5. Mathematical statement

The canonical endpoint kernel is

```lean
coreGrowingShiftSignedEndpointKernel j N n m
```

and equals

```text
Delta_j(N,m-n).
```

It is consumed only on strict support `n<m`, so natural-number subtraction
loses no information.

The endpoint packet is

```lean
coreGrowingShiftSignedEndpointBilinearPacket.
```

The source drafts the exact equalities

```lean
coreGrowingShiftSignedStaircasePacket_eq_endpointSourceEnergy

coreGrowingShiftSignedEndpointSourceEnergy_eq_bilinear

coreGrowingShiftSignedStaircasePacket_eq_endpointBilinear

coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointBilinear.
```

Mathematically,

```text
signed staircase
 = expanded source-cell sum
 = strict endpoint bilinear form,
```

and hence

```text
first-difference packet
 = 2 * strict endpoint bilinear form.
```

## 6. Dependency path

```text
strict endpoint-bilinear estimate
        ↓
SubpolynomialCoreGrowingShiftSignedEndpointBilinearPacket
        ↕ exact finite identity
SubpolynomialCoreGrowingShiftSignedStaircasePacket
        ↕ exact finite identity
SubpolynomialCoreGrowingShiftFirstDifferencePacket
        ↓ inherited conditional theorem
RiemannHypothesis
```

The new source proposition is exactly equivalent to the parent signed
staircase proposition. It is not stronger or weaker.

## 7. Proof classification

The theorem layer is classified as:

```text
EXACT_FINITE_PREFIX_EXPANSION
EXACT_STRICT_ENDPOINT_BIJECTION
EXACT_NO_WRAP_SUPPORT_THEOREM
EXACT_SIGNED_BILINEAR_REINDEXING
CONDITIONAL_RH_ROUTING
```

No imported analytic estimate is used. No asymptotic, limiting, numerical, or
external-certificate argument occurs.

## 8. Positivity classification

No positivity conclusion is asserted.

The endpoint packet is a signed real bilinear form. The strict support removes
the endpoint diagonal `n=m`, but this is a support theorem, not a positivity
theorem. Arithmetic cancellation remains available across:

- left endpoints;
- right endpoints;
- shifts;
- prefix lengths.

The hostile witness

```lean
signedEndpointBilinearCancellation_hostileWitness
```

records that exact signed cancellation may coexist with positive termwise
absolute mass. Therefore a triangle inequality or positive norm is not an
equivalent replacement.

## 9. Finite witness

The independently checkable finite witness consists of:

1. the source finset `(N,h,a)`;
2. the endpoint finset `(N,n,m)`;
3. the forward map `(N,h,a) -> (N,a+1,a+1+h)`;
4. the inverse map `(N,n,m) -> (N,m-n,n-1)`;
5. the strict support and no-wrap inequalities;
6. equality of each source-cell value with its endpoint-cell value;
7. finite fiber-free summation by the bijection.

No external data file or numerical certificate is required.

## 10. Failure cases and information-loss boundaries

The representation fails if any of the following changes are made without a
new theorem:

- allowing `h=0`, which would reinsert the diagonal `n=m`;
- dropping `m<2^(j+1)`, which permits cyclic wrap-around;
- replacing `m-n` by a modular difference;
- removing the low-anchor clamp from `Delta_j`;
- enlarging the staircase to a rectangle;
- taking absolute values before the complete endpoint sum;
- squaring the endpoint packet before reconstructing the signed consumer;
- promoting fixed-form two-point constants to one growing-family constant.

A finite Fourier identity, if later proved, remains only a representation. It
will not supply the needed arithmetic estimate by itself.

## 11. Typed analytic boundaries

A theorem already stated on the exact endpoint packet may enter through

```lean
SignedEndpointBilinearSource
ToCoreGrowingShiftSignedEndpointBilinearPacket.
```

A finite Fourier or dispersion theorem may enter through

```lean
SignedEndpointBilinearFourierSource
ToCoreGrowingShiftSignedEndpointBilinearPacketFromFourier.
```

That interface separates:

```text
zero padding
right-endpoint no-wrap
exact finite transform
exact finite inversion
strict-support preservation
clamped-kernel preservation
signed frequency cancellation
cross-prefix cancellation
all-scale uniformity
finite small-scale control.
```

No named Chowla, corrected-Elliott, Gowers, large-sieve, or Fourier theorem is
instantiated as an adapter value.

## 12. RH consequence

This increment supplies a reusable signed analytic interface and preserves the
conditional RH route. It does not discharge the arithmetic premise.

The result therefore:

```text
supplies a reusable exact interface;
proves a conditional reduction only;
does not prove RH;
does not disprove RH.
```

## 13. Next obstruction

The next exact unresolved result is one of:

```text
an all-scale signed estimate on the strict endpoint-bilinear packet,
```

or

```text
an exact zero-padded finite Fourier transform and inversion theorem that
preserves the strict endpoint support and clamped reciprocal kernel.
```

The next increment should stop after the transform theorem. It should not also
claim the resulting Fourier estimate.
