# ICARM record #4239 — finite-source localization at 32 root characters

**Source status:** `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`. The Lean
module `Record4239FiniteSourceLocalization.lean` is committed on `main`;
its proof candidates have not been elaborated by Lean in this runtime.
Do not place it in the public `GRWTSK.lean` umbrella without replay.

## Exact theorem supplier

Original curve and 32 rational points: **Noam Elkies, Zev Klagsbrun,
Samuel Li** (ICARM leaderboard #4239, October 15, 2026),
https://elliptic-rank.icarm.cloud/curve/4239.
Finite quadratic-character descent method: Cremona and Brumer.
General Lean localization / quotient / quadratic-character lemmas:
Mathlib contributors (pinned Mathlib revision
`db584cd6d46c92f209a44c0f1c829460d327499d`, Lean 4.33.0).

Let `f(T) = T³ + shortA*T + shortB` and `R = AdjoinRoot f`.
The earlier `Record4239IntegralOrderReduction.lean` constructs, **for
each actual source-labelled** `(p_j,θ_j)`, a ring homomorphism
`ρ_j : R →+* ZMod p_j` using the exact source root `f(θ_j)=0 (mod p_j)`.

Set `a_{j,i}` equal to `shortXInt i - T` unless its residue is zero,
in which case set it equal to the **actual derivative**
`f'(T)=3*T²+shortA`, as in `sourceOrderLocalElement`.
The previously source-checked simple-root hypothesis guarantees
`ρ_j(a_{j,i}) ≠ 0` for every of the 32×32 entries.

The new file constructs
`s_j = ∏_{i:Fin 32} a_{j,i}`,
`R_j = Localization.Away s_j`, and the genuine extension
`ρ'_j : R_j →+* ZMod p_j`, using
`IsLocalization.Away.lift`. Since `ρ_j(s_j) ≠ 0`, the image is a unit
in the **field** `ZMod p_j`, so the lift is justified.

Because `a_{j,i} ∣ s_j`, each `a_{j,i}` becomes a genuine unit in
`R_j` by `IsLocalization.Away.isUnit_of_dvd`.
The source units are compared by exact reduction to
`sourceLocalInteger j i`. Consequently, the canonical local
square-class character gives the SAME local finite quadratic bit as
`sourceQuadraticBit j i`, *conditional on Lean elaboration of the
proof terms*. A separate implication from `SourceBitsMatch` to the
point-first binary matrix is kept conditional; that proposition is
currently an **unproved named obligation**.

## Independent finite replay (not kernel evidence)

Exact standard-library Python replay executed:
`/mnt/data/record4239_away_product_replay.py`
(SHA-256
`48feae59bd3542457073334d54d569eaaa22f0885f57ce0bd7d5b27830dc6c3a`).
It consumes the source-labelled 32 rational points and 32 (prime,root,
mask) columns from `rank32_finite_certificate.json`, and performs
integer/rational arithmetic, not numerical approximations.

All **32** products reduce nonzero; all **1,024** factors reduce nonzero,
including **17** exceptional derivative branches; all **1,024**
quadratic bits match the source matrix. Under the hostile but *wrong*
zero-as-zero convention, **12** character labels produce an invalid
zero product and **12** exceptional bit results differ. The following
list is indexed by source character j (0-based), giving
`(p_j, θ_j, ρ_j(s_j), exceptionalCount_j)`:

```text
j  p    theta  productResidue  exceptional
0  29   0      8               2
1  29   4      18              3
2  47   37     14              2
3  61   15     45              0
4  61   21     19              0
5  67   5      28              0
6  67   8      18              1
7  71   15     46              1
8  71   27     10              0
9  83   78     75              1
10 97   49     82              0
11 101  49     64              0
12 107  62     42              1
13 109  53     72              1
14 113  1      30              1
15 113  37     32              0
16 127  113    4               0
17 137  13     98              0
18 137  42     115             0
19 149  147    95              2
20 151  47     84              0
21 151  114    81              0
22 157  154    57              1
23 167  45     67              0
24 173  107    36              0
25 179  1      105             1
26 181  17     164             0
27 181  36     119             0
28 191  2      22              0
29 193  10     182             0
30 197  31     74              0
31 199  98     130             0
```

## What the theorem does **not** prove

**Finite-data dependent localization:** `s_j` is a product selected
from the published 32 points, hence the construction is not a
universal canonical local ring at the prime ideal and does not
show every rational elliptic point's x−T squareclass admits this
particular localized representative.

**Missing global bridge:** constructing
`μ : Multiplicative E(ℚ) →* C` for the genuine étale algebra,
establishing valuation parity and a source-faithful extension to
localized square classes for *all* elliptic points, and proving the
exceptional derivative branch represents the genuine descent class
remain separate, unproved obligations. The Stoll development under
Lean 4.35 is not silently imported into this Lean 4.33 repository.

**Missing computational bridge:** `SourceBitsMatch` is an explicit
unproved proposition. The independent Python replay does not
supply a Lean proof.

**Missing terminal bridge:** no unconditional
`rank E(ℚ) ≥ 32`, equality of algebraic and analytic rank,
BSD, GRH, RH, or signed-Weil comparison follows from this increment.

## Verification and admission conditions

* Rebuild all dependencies on a clean checkout at the *exact main
  commit* using Lean 4.33 / pinned Mathlib.
* Verify proof elaboration of
  `Record4239FiniteSourceLocalization.lean`, and run
  `lake build --wfail`, an independent `--trust=0` check
  and `#print axioms` of the terminal declarations.
* Test branch-zero vs derivative, simple-root failure,
  duplicated character columns and an invalid non-root prime/root.
* Keep this source-only module out of `GRWTSK.lean` until verified.
