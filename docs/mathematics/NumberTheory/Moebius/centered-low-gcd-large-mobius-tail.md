# Large Möbius-index tail in the centered low-gcd Fejér packet

**Status:** `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / NOT_AXIOM_AUDITED`.

This increment advances the exact square-root-cutoff signed bilinear from PR
#973. It does not alter the six replay-owned `CenteredLowGCD*` modules and
does not assume the desired signed estimate.

## Exact incidence reduction

For `r > 1`, the modulus-one centering anchor cannot occur in

```lean
centeredDivisibilityTail X w r
```

because every attached modulus is divisible by `r`. An exact contributing
pair `(n,d)` satisfies

```text
2X < n <= 4X,
r | d,
d | n.
```

The quotient map

```text
(n,d) |-> (n/r,d/r)
```

is injective and lands in the ordinary positive-divisor incidence set up to

```text
K = floor(4X/r).
```

Therefore, for an octave weight in `[0,1]`,

```text
|centeredDivisibilityTail X w r|
 <= D(K) * log(4X)
 <= K * (1 + log K) * log(4X),
```

where `D(K)=sum_{a<=K} tau(a)` and the second inequality is the separately
owned finite divisor-summatory theorem.

## Large-index coprime square

The exact signed coprime expansion is partitioned at `floor(sqrt X)`:

```text
coprimeMobiusSquareExpansion
  = lowCoprimeMobiusSquareExpansion
    + highCoprimeMobiusSquareExpansion.
```

The low term retains all Möbius signs. The high term is anchor-free and may
be bounded absolutely.

For `r > floor(sqrt X)`, the tail bound above gives

```text
|tail_r|^2
 <= floor(4X/r)^2 * (1 + log(4X))^2 * log(4X)^2.
```

The finite reciprocal-square estimate

```text
sum_{r>floor(sqrt X)} 1/r^2
 <= 2/(floor(sqrt X)+1)
 <= 2/sqrt X
```

then yields

```text
absoluteHighCoprimeMobiusSquareMajorant
 <= 1152 * X * sqrt(X) * log(X)^4
```

for `X >= 4`. The constant `1152` is explicit and non-optimized.

## Actual historical Fejér weight

At `nonAliasingFejerPrefixWeight X N m`, the packet defines the exact residual

```text
small signed coprime Mobius square
+ all positive common-gcd classes
```

and proves

```text
signed low-gcd bilinear
  = residual + high signed coprime tail.
```

Consequently,

```text
|residual| <= C*T
  -> |signed bilinear| <= (C+1152)*T
  -> |positive shift| <= (C+1452)/2*T,
```

where

```text
T = X * sqrt(X) * log(X)^4.
```

The additional `300` is the separately source-authored complete centered
diagonal constant.

## Exact unresolved estimate

The remaining theorem is

```text
| lowCoprimeMobiusSquareExpansion X w
  + centeredNonCoprimeLowGCDBilinear X floor(sqrt X) w |
  <= C * X * sqrt(X) * log(X)^4
```

for the actual period-`4X` Fejér weight and its concrete cutoff schedule.

This retains the complete signed modulus-one anchor correction, both mixed
anchor/genuine channels, the genuine/genuine channel, all small Möbius indices,
and every positive common-gcd class. No termwise absolute coprime-energy
estimate is used; that route remains circular.

No threshold descent, zero-free theorem, Chowla theorem, Goldbach theorem, or
Riemann Hypothesis result is claimed.
