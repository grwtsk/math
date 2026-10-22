# Nonunit square-modulus residue obstruction to a pure Dirichlet-character route

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / PURE_DIRICHLET_CHARACTER_REDUCTION_REFUTED_AT_SCOPE`

Owner: #592. Direct parent: #586 / PR #588. L-function review axis: #500.

This increment tests whether ordinary multiplicative Dirichlet characters can represent every residue selector appearing in the exact square-modulus Möbius fibres.

They cannot, because active fibres can live on nonunit residue classes.

## Exact source binding

```text
parent revision:
  8c511882f632af8382cde73b8832859f30e61e94

candidate branch:
  research/rh-dirichlet-nonunit-obstruction-592-20261021

source commit:
  86d7cec91d4bf7d984d7c8c5063ccff03cddd52d

source tree:
  7a3f3a0138d0cf1d09fd38b26f8f2964ea036e34

source:
  GRWTSK/NumberTheory/Moebius/
    DirichletNonunitResidueObstruction.lean

source blob:
  8550083484ee9639a5fb96d9428b118b38c7d4da
```

## Actual Möbius witness

Take
[
b=6,qquad n=4,qquad h=b-n=2,qquad d=2,qquad a=1.
]

Then
[
x=a+1=2,qquad x+h=4.
]

The source proves
```lean
actualNonunitCongruenceBase_mem
```
so `a=1` belongs to
```text
mertensEndpointCrossCongruenceBaseSet 6 4 2.
```

Thus the actual square-modulus condition is
[
4mid x+h,
]
while the residue of (x) modulo (4) is (2).

## Nonunit residue

The source proves
```lean
two_not_isUnit_zmod_four
```
with
[
(2:mathbf Z/4mathbf Z)
]
not a unit.

Equivalently,
[
gcd(2,4)=2.
]

This is important because the required residue class is not contained in the unit group modulo four.

## Nonzero arithmetic term

The source computes
[
mu(6)=1
]
and proves
```lean
actualNonunitEndpointProduct_eq_neg_one
```
with
[
mu(2)mu(6)=-1.
]

So the nonunit residue class contains a genuinely active nonzero term of the repository's signed Möbius correlation. It is not merely an empty or automatically vanishing class.

## Dirichlet characters vanish there

Mathlib's Dirichlet characters are multiplicative characters on the unit group, extended by zero on nonunits.

The source proves
```lean
dirichletCharacter_mod_four_two_eq_zero
```
for every
```text
χ : DirichletCharacter ℂ 4.
```

Hence
[
chi(2)=0
]
for every ordinary Dirichlet character modulo four.

## Linear-combination obstruction

The source defines
```lean
dirichletCharacterLinearCombinationModFour
```
for an arbitrary finite linear combination
[
sum_chi c_chichi(x).
]

It proves every such combination vanishes at (x=2):
```lean
dirichletCharacterLinearCombinationModFour_two_eq_zero.
```

By contrast, the exact residue-two indicator
```lean
residueTwoIndicatorModFour
```
takes value one at (2).

Therefore the source proves
```lean
not_pureDirichletCharacterResidueTwoRepresentation.
```

## Scope disposition

The named disposition is
```lean
PureDirichletCharacterReductionRefutedAtScope.
```

It refutes only:

```text
every exact square-modulus residue selector can be represented by
a pure linear combination of ordinary multiplicative Dirichlet characters
at the same modulus.
```

It does not refute:

```text
Dirichlet L-function usefulness after gcd stratification
additive-character expansions
hybrid additive/multiplicative decompositions
Result 003
Result 007
DyadicNaturalScaleSquareModulusCongruenceL1
RH.
```

## Required repair

A complete L-function-facing route now needs one of:

1. **gcd stratification**  
   Split a residue class according to the common divisor with (d^2), reduce the unit part to a smaller modulus, and preserve the transformed Möbius arguments exactly.

2. **additive characters**  
   Use complete finite Fourier orthogonality on (mathbf Z/d^2mathbf Z), which represents every residue class, then determine which additive twists can be controlled using available analytic inputs.

3. **hybrid decomposition**  
   Use additive characters for the residue selector and multiplicative/Dirichlet-L information for the Möbius coefficient or coprime strata.

The source introduces
```lean
NonunitResidueRepairAdapter
```
only as a proof-relevant placeholder. No value is constructed.

## Evidence

Established:
```text
SOURCE_DRAFT
PURE_DIRICHLET_CHARACTER_REDUCTION_REFUTED_AT_SCOPE
```

Not established:
```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
GCD_STRATIFIED_L_FUNCTION_ADAPTER
ADDITIVE_CHARACTER_ADAPTER
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
```

No Lean/Lake execution, proof-term acceptance, analytic estimate, merge, or RH claim occurred.
