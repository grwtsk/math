# Additive Fourier repair for square-modulus congruence fibres

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / ADDITIVE_CHARACTER_RESIDUE_REPAIR_SOURCE_DRAFT / ADDITIVE_TWIST_ESTIMATE_OPEN`

Owner: #598. Direct parent: #592 / PR #594.

## Exact source binding

```text
parent revision:
  82a0a5fff2690e80647b3b15d5e52ec13eb33e93

candidate branch:
  research/rh-additive-character-repair-598-20261021

source commit:
  0ca7f22fb78cd6668c08814fe3c8540b489e8f60

source tree:
  7f211ca927cd6589a8e49e6b2cfe7004e285e5fe

source:
  GRWTSK/NumberTheory/Moebius/
    AdditiveCharacterSquareModulusRepair.lean

source blob:
  6e0a81df2fe6da3b3b91ce130b159a8f16cc29af
```

## Full-ring additive selector

For positive `N`, define
```lean
additiveZeroResidueSelector N x
```
by
[
rac1Nsum_{kinmathbf Z/Nmathbf Z} e_N(kx),
]
where `e_N` is Mathlib's `ZMod.stdAddChar`.

Using `AddChar.sum_mulShift` and `ZMod.isPrimitive_stdAddChar`, the source scripts
[
rac1Nsum_k e_N(kx)
=
egin{cases}
1,&x=0,\
0,&x
e0.
end{cases}
]

No unit hypothesis on (x) occurs.

## Square-divisor selector

Specializing (N=d^2), the source defines
```lean
additiveSquareDivisorSelector d m
```
and scripts
[
operatorname{Selector}_{d^2}(m)
=
mathbf 1_{d^2mid m}.
]

Thus the exact square-divisibility predicate is represented on the whole finite ring, including nonunit residues.

## Twisted Möbius fibres

The source defines
```lean
additiveTwistedEndpointCrossCorrelation b d k
```
with exact content
[
sum_{1le n<b}
sum_{ain	ext{exact base support}}
e_{d^2}!left(k,m_{b,n,a}ight)
mu(x)mu(x+2h),
]
where (m_{b,n,a}=x+h).

No absolute values are inserted.

It then defines
```lean
additiveFourierEndpointCrossCongruenceFibre b d
```
as
[
rac1{d^2}
sum_{kmod d^2}
operatorname{Twist}(b,d,k).
]

The source scripts the exact identity
[
oxed{
(mathcal C(b,d):mathbf C)
=
rac1{d^2}
sum_{kmod d^2}
operatorname{Twist}(b,d,k)
}
]
for every positive (d).

## Constructed repair object

The proof-relevant type
```lean
AdditiveCharacterResidueRepair
```
has one substantive field: the all-endpoint/all-positive-modulus exact Fourier expansion above.

The source defines
```lean
additiveCharacterResidueRepair
```
as a candidate value.

## Relation to the L-function study

This repairs the representation failure from PR #594 but does not yet turn Result 003 into the needed estimate.

The remaining analytic object is an additive twist of a two-point Möbius correlation:
[
e_{d^2}(k(x+h)),mu(x)mu(x+2h).
]

Possible next bridges include:
- Gauss-sum conversion of primitive multiplicative characters and additive twists;
- gcd stratification plus Dirichlet-character control on unit strata;
- direct additive-twist correlation estimates;
- a hybrid use of Result 007's two-point machinery with conductor-uniform Result 003 inputs.

No such estimate is claimed here.

## Evidence

Established:
```text
SOURCE_DRAFT
ADDITIVE_CHARACTER_RESIDUE_REPAIR_SOURCE_DRAFT
```

Not established:
```text
ADDITIVE_TWIST_ESTIMATE
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
```

No Lean/Lake execution, proof-term acceptance, analytic estimate, merge, or RH claim occurred.
