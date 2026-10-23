# Exceptional kernel character and the mod-four Mertens split

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / EXCEPTIONAL_CHARACTER_IDENTIFICATION_SOURCE_DRAFT / CHI_FOUR_TWISTED_MERTENS_ENERGY_OPEN`

Owner: #691. Direct parent: #681 / draft PR #684.

## Exact source binding

```text
parent revision:
  4fa5525141e96deec298c39c0ee68c0fde625e9f

parent tree:
  258463e8f05e273d260afb3a7d994d6aea10f11e

candidate branch:
  research/rh-exceptional-character-chi4-691-20261022

source commit:
  db22183c2f09ab3fb7fe2e83b56cbebfd753c68e

source tree:
  4257bfa8bce07c4b61fddba71c9448ecb73e6af3

source:
  GRWTSK/NumberTheory/Moebius/
    ExceptionalKernelCharacterChiFour.lean

source blob:
  8f346435e49801dd7f0a23e16375768f66f21381
```

## Order-two character identification

For a positive two-nonunit square-modulus parameter `d`, set

\[
N=d^2,
\qquad
H=N/2\pmod N,
\qquad
\eta_d(m)=e_N(Hm).
\]

The parent source proves

\[
H\ne0
\]

and

\[
\eta_d(m)^2=1.
\]

The new source scripts

```lean
twoKernelShiftCharacter_one_ne_one
```

by using injectivity of Mathlib's `ZMod.stdAddChar`: if `eta_d(1)=1`, then
`stdAddChar(H)=stdAddChar(0)`, hence `H=0`, contradicting the parent theorem.

It then scripts

```lean
twoKernelShiftCharacter_one_eq_neg_one
```

from the exact ring identity

\[
z^2=1\iff z=1\text{ or }z=-1.
\]

Finally,

```lean
twoKernelShiftCharacter_eq_neg_one_pow
```

proves by finite induction that

\[
\boxed{\eta_d(m)=(-1)^m}
\]

for every natural `m`.

This is an exact character theorem. No zero-free region or analytic estimate is used.

## Explicit alternating exceptional prefix

The source scripts

```lean
exceptionalKernelTwistedMertensPrefix_eq_neg_one_twist
```

with

\[
T_r(b,d)
=
\sum_{\substack{1\le u\le b\\u\equiv r\pmod2}}
\mu(u)(-1)^{\lfloor u/2\rfloor}.
\]

The dependence on the square modulus has disappeared from the arithmetic prefix after the character is identified.

## Even parity: odd ordinary Mertens at half scale

For `r=0`, write `u=2m`. The source first scripts the exact finite reindex

```lean
exceptionalKernelTwistedMertensPrefix_even_eq_halfSum
```

and then uses the repository theorem

```lean
moebiusReal_two_mul_eq_parity
```

which retains both cases

\[
\mu(2m)=
\begin{cases}
-\mu(m),&m\text{ odd},\\
0,&m\text{ even}.
\end{cases}
\]

On odd `m`, the additional factor is `(-1)^m=-1`; on even `m`, the Möbius term vanishes. Therefore

```lean
exceptionalKernelTwistedMertensPrefix_even_eq_odd_half
```

scripts

\[
\boxed{
T_0(b,d)
=
\sum_{\substack{1\le m\le\lfloor b/2\rfloor\\m\text{ odd}}}
\mu(m)
}
\]

or, in repository notation,

\[
T_0(b,d)=M_{\mathrm{odd}}(\lfloor b/2\rfloor).
\]

The invalid unconditional formula `mu(2m)=-mu(m)` is not used.

## Odd parity: the standard mod-four character

The source defines

```lean
chiFourTwistedMertensPrefix b
```

using Mathlib's existing character

```lean
ZMod.χ₄ : MulChar (ZMod 4) ℤ.
```

Thus

\[
M_{\chi_4}(b)
=
\sum_{1\le n\le b}
\mu(n)\chi_4(n).
\]

Mathlib supplies

```lean
ZMod.χ₄_eq_neg_one_pow
```

for odd `n`, namely

\[
\chi_4(n)=(-1)^{\lfloor n/2\rfloor}.
\]

The source separately uses Mathlib's explicit character formula to prove that even arguments contribute zero. It then scripts

```lean
exceptionalKernelTwistedMertensPrefix_odd_eq_chiFour
```

with

\[
\boxed{T_1(b,d)=M_{\chi_4}(b).}
\]

No competing mod-four character is introduced.

## Exact analytic split

The source defines

```lean
DyadicHalfScaleOddMertensSquareRootEnergy

DyadicChiFourTwistedMertensSquareRootEnergy.
```

The first controls

\[
M_{\mathrm{odd}}(\lfloor b/2\rfloor)^2
\]

at the ambient scale `X=2^j`; the second controls

\[
|M_{\chi_4}(b)|^2.
\]

It scripts

```lean
halfScaleOddMertensEnergy_of_parity
```

so the existing parity-Mertens square-root-energy supplier controls the half-scale odd prefix without changing the ambient dyadic normalization.

It also scripts

```lean
twoKernelTwistedMertensEnergy_of_halfOdd_and_chiFour
```

and

```lean
twoKernelTwistedMertensEnergy_of_pointwise_and_chiFour.
```

Hence

```text
pointwise ordinary-Mertens square-root envelope
+ chi_4-twisted Mertens square-root energy
-> exceptional kernel twisted-Mertens energy.
```

The `chi_4` premise remains open.

## Downstream conditional path

The source scripts

```lean
naturalScaleCongruenceL1_of_pointwise_chiFour_twoUnit_regular.
```

Therefore

```text
pointwise ordinary-Mertens envelope
+ chi_4-twisted Mertens energy
+ two-unit supplier
+ regular-orbit supplier
-> natural-scale square-modulus congruence-L1.
```

No premise is inhabited.

## Analytic boundary

The source defines

```lean
ToChiFourTwistedMertensSquareRootEnergyAdapter
ChiFourTwistedMertensSourceData
ChiFourTwistedMertensSource
ChiFourTwistedMertensAdapter.
```

A future theorem must match:

- Mathlib's exact `ZMod.χ₄` normalization;
- the ordinary endpoint convention `1 <= n <= b`;
- square-root-plus-epsilon scale;
- one constant over each complete dyadic family;
- finite initial ranges.

No GRH, Dirichlet-L, or zero-free theorem is assigned an adapter value.

In particular, the recently reported `Re(s)>7/8` zero-free region does not imply the square-root energy required here.

## Evidence

Established only at source-script level:

```text
SOURCE_DRAFT
ORDER_TWO_CHARACTER_NONTRIVIALITY_SCRIPTED
ORDER_TWO_CHARACTER_EQUALS_NEG_ONE_POW_SCRIPTED
EVEN_PREFIX_TO_ODD_MERTENS_SCRIPTED
ODD_PREFIX_TO_CHI_FOUR_MERTENS_SCRIPTED
HALF_SCALE_ODD_ENERGY_TRANSPORT_SCRIPTED
CONDITIONAL_EXCEPTIONAL_ENERGY_SPLIT_SCRIPTED
CONDITIONAL_DOWNSTREAM_TRANSPORT_SCRIPTED
```

Not established:

```text
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
POINTWISE_ORDINARY_MERTENS_ENVELOPE
CHI_FOUR_TWISTED_MERTENS_SQUARE_ROOT_ENERGY
TWO_UNIT_ANALYTIC_SUPPLIER
REGULAR_ORBIT_ESTIMATE
NATURAL_SCALE_ENDPOINT_L1_SUPPLIER
RIEMANN_HYPOTHESIS
```

No Lean/Lake execution, proof-term acceptance, analytic estimate, merge, or RH claim occurred.
