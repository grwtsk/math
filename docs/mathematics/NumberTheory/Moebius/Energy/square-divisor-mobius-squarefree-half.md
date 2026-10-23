# Squarefree half of the divisor-square Möbius identity

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / SQUAREFREE_CASE_DISCHARGED_SOURCE_LEVEL / NONSQUAREFREE_CANCELLATION_OPEN`

Owner: #543. Direct parent: #537 / PR #539.

The parent adapter left the classical identity
[
mathbf 1_{mathrm{Squarefree}(m)}
=
sum_{d^2mid m}mu(d)
]
behind the proof-relevant type
`SquarefreeDivisorSquareMobiusIdentity`.

This increment proves the entire squarefree case and isolates the only remaining arithmetic work.

## Exact source binding

```text
parent revision:
  e0579210da1ffa0185a33fe4556b51cdd19d2b23

candidate branch:
  research/rh-square-divisor-squarefree-half-543-20261021

source commit:
  a7cb255bc3b6073d4adcfa10ee2f6e9b4d5d2017

source tree:
  f657636f08e17be245e924cd9118bffa35c79952

source:
  GRWTSK/NumberTheory/Moebius/
    SquareDivisorMobiusSquarefreeHalf.lean

source blob:
  421f9da30ce2092bda1c459525c32c68575c4dce
```

## Squarefree case

For positive squarefree (m), suppose (d^2mid m).

By the definition of `Squarefree`,
[
d^2mid m Longrightarrow operatorname{IsUnit}(d).
]

For natural numbers,
[
operatorname{IsUnit}(d)Longrightarrow d=1.
]

Therefore every term in
[
operatorname{squareDivisorMobiusSum}(m)
=
sum_{dmid m}
egin{cases}
mu(d),&d^2mid m,\
0,&	ext{otherwise}
end{cases}
]
vanishes except (d=1).

Since (mu(1)=1),
[
operatorname{squareDivisorMobiusSum}(m)=1.
]

The source theorem is
```lean
squareDivisorMobiusSum_eq_one_of_squarefree.
```

The direct indicator equality is
```lean
squarefreeIndicatorReal_eq_squareDivisorMobiusSum_of_squarefree.
```

No prime factorization, asymptotic density, or analytic estimate is used.

## Remaining obligation

The only remaining arithmetic statement is now:

```lean
structure NonSquarefreeSquareDivisorMobiusCancellation : Type where
  cancellation :
    ∀ m : ℕ, 0 < m → ¬ Squarefree m →
      squareDivisorMobiusSum m = 0
```

No value is constructed.

This is strictly narrower than the parent certificate because the squarefree branch has been removed from the open obligation.

## Reconstruction of the parent identity

The source proves
```lean
squarefreeDivisorSquareMobiusIdentity_of_nonsquarefreeCancellation
```
which performs the exact case split:

- squarefree (m): use the new repository theorem;
- nonsquarefree (m): use the explicit cancellation certificate.

Thus
[
	ext{NonSquarefree cancellation}
Longrightarrow
	ext{SquarefreeDivisorSquareMobiusIdentity}.
]

The source also records the corresponding `Nonempty` transport.

## Next obstruction

The remaining elementary theorem is:

[
m>0,quad 
egmathrm{Squarefree}(m)
quadLongrightarrowquad
sum_{d^2mid m}mu(d)=0.
]

A natural next proof is finite inclusion–exclusion using one prime (p) with (p^2mid m), pairing squarefree divisors by toggling (p). That construction is not claimed here.

## Evidence

Established:
```text
SOURCE_DRAFT
SQUAREFREE_CASE_DISCHARGED_SOURCE_LEVEL
```

Not established:
```text
NONSQUAREFREE_CANCELLATION_CERTIFICATE
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
```

No Lean/Lake execution, kernel audit, analytic estimate, merge, or RH claim occurred.
