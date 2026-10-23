# Centered winding mean inflation

Issue: #855  
Parent: draft PR #854 at `4863a57ddda62bf6944ee840e8e1f2a724916586`.

The parent decomposition writes the zero-mode correction as

```text
4*P^2*(1/d^2 - 1/(b+1)) - 4*V.
```

On the effective square-modulus support the repository has the strict condition

```text
d^2 < b.
```

Hence

```text
1/d^2 - 1/(b+1) >= 0,
```

so the deterministic mean-inflation term is nonnegative.

Dropping the subtractive reciprocal gives

```text
meanInflation(b,d,r,H) <= 4*P(b,r,H)^2/d^2.
```

Define the four-family pair-mass square

```text
Q(b)
 = P(0,even)^2 + P(0,odd)^2
 + P(1,even)^2 + P(1,odd)^2.
```

Then at one modulus

```text
fourFamilyMeanInflation(b,d) <= 4*Q(b)/d^2.
```

The existing elementary reciprocal-square theorem

```lean
effectiveSquareModulusReciprocalSquareMass_le_two
```

therefore yields

```text
sum_(effective d) fourFamilyMeanInflation(b,d) <= 8*Q(b).
```

The load-bearing theorem is

```lean
regularCenteredWindingMeanInflationEndpoint_le_eight_mul_pairMassSquare.
```

Thus the deterministic mean-inflation layer creates no logarithmic modulus loss. Its remaining arithmetic input is only control of the four total signed pair masses.

Status remains:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
CENTERED_WINDING_MEAN_INFLATION_SOURCE_DRAFT
CENTERED_WINDING_PAIR_MASS_SQUARE_ESTIMATE_OPEN
CENTERED_WINDING_NONZERO_FREQUENCY_ESTIMATE_OPEN
CENTERED_WINDING_INTEGER_CENTER_VARIANCE_ESTIMATE_OPEN
```

No pair-mass cancellation estimate, elaboration, kernel acceptance, GRH theorem, or RH theorem is claimed.
