# Actual field height and the binary input budget

Local source attribution: grwtsk contributors.

The [Lean module](AuxiliaryPrimeFieldHeight.lean) proves the input and numerical
field-height bounds used by
`GRWTSK.PrimeFieldFactoring.AnalyticExistence.uniform_large_branch_discovery`.
It measures the actual number-field degree and absolute discriminant. The
[complete analytic argument](AuxiliaryPrimeAnalyticExistence.md) explains their
cyclotomic and Kummer origin and the subsequent use in the smoothed estimate.

## Mathematical source and retained hypotheses

The source is OpenAI, *Deterministic Polynomial Factorization over Prime
Fields*, October 4, 2026, Proposition 11.3 (`analytic:auxiliary`), in particular
its cyclotomic degree bound, relative power-basis discriminant bound and
comparison with the input encoding. Exact revision:
`3344da59991ed94f9ba711217b29c1d760badfa6`; analytic-section blob:
`21081c288d68760167d2d94a34247ba61240dddf`.
[Primary argument](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/preprints/Deterministic-Polynomial-Factorization-over-Prime-Fields-October-4-2026/build/sections/10-analytic.tex)
· [Original input encoding](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/preprints/Deterministic-Polynomial-Factorization-over-Prime-Fields-October-4-2026/build/sections/00-introduction.tex).

These are local consequences, not imported Lean proofs. The source separately
bounds both field heights cubically in $B$. Keeping the coefficient $1/q$
and the product $q\log p\le nL\le B$ gives the stronger bound
$A_K+A_M/q\le72B$. The two discriminant inequalities and
$d_M=qd_K$, $d_K\le12q$ remain explicit algebraic premises; field names alone
do not establish them.

| Fully qualified declaration | Correspondence and scope |
| --- | --- |
| `GRWTSK.PrimeFieldFactoring.FieldHeight.inputSize` | Defines exactly $B=20+(n+1)(\operatorname{clog}_2p+1)$. |
| `GRWTSK.PrimeFieldFactoring.FieldHeight.height` | Defines $A_F=\log|\operatorname{disc}F|+[F:\mathbf Q]$ on actual number fields. |
| `GRWTSK.PrimeFieldFactoring.FieldHeight.inputSize_lower` | Proves $n+21\le B$. |
| `GRWTSK.PrimeFieldFactoring.FieldHeight.large_branch_bounds` | Derives $144\le p$ and $12q<p$ from $q\le n$ and $B^{200000}<p$. |
| `GRWTSK.PrimeFieldFactoring.FieldHeight.large_branch_conditions` | For prime $q$, derives $p\nmid12q$, $2\le\log p$, $\log q\le\log p$ and $2\log12\le\log p$. |
| `GRWTSK.PrimeFieldFactoring.FieldHeight.log_le_clog` | Uses $p\le2^L$ and $\log2\le1$ to prove $\log p\le L$ for $p>0$. |
| `GRWTSK.PrimeFieldFactoring.FieldHeight.input_log_budget` | Retains the input product to prove $q\log p\le B$. |
| `GRWTSK.PrimeFieldFactoring.FieldHeight.weighted_budget` | Derives the linear weighted bound from the two displayed discriminant inequalities by ordered-field arithmetic. |
| `GRWTSK.PrimeFieldFactoring.FieldHeight.weighted_height_le` | Instantiates the arithmetic with actual field discriminants and degrees. |
| `GRWTSK.PrimeFieldFactoring.FieldHeight.weighted_height_large_branch` | Automatically discharges every logarithmic and input-budget hypothesis using the source's branch condition. |

The logarithmic proof uses `Real.log_le_sub_one_of_pos`,
`Real.le_log_one_add_of_nonneg`, `Real.log_pow` and `Real.log_le_log`;
the integer encoding uses `Nat.le_pow_clog` at Mathlib revision
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
[Logarithm source](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Log/Basic.lean)
· [Binary-logarithm source](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Data/Nat/Log.lean).

The [checked obstruction](AuxiliaryPrimeObstruction.md) at $p=q=2$ prevents
extending the eventual existence theorem by simply deleting the branch and
unramified-input restrictions. None of these declarations proves an explicit
formula, a zero-free strip, or the actual Kummer degree theorem.

## Exact-source evidence

Source Git blob: `b6f4aa684c9fea5b28cd6a1a9bbb3f58dff5541e`.
Source SHA-256: `c832741313025a975c4d41ff9a3afae048c65e7dcd941b3926fb6a6aeaf7bc7d`.
Lean 4.34.1, build `5045d0056413266e57c625dcd7c365b10e377c52`, with the stated
Mathlib pin compiled these bytes with exit 0. Its sole diagnostic declined
numeric evaluation of the symbolic exponent $200000$; the proof compiled
without raising that evaluation threshold. All eight public theorems were
individually inspected by `#print axioms`, each reporting exactly
`propext`, `Classical.choice` and `Quot.sound`. The [source-bound group replay](AuxiliaryPrimeAnalyticExistence.md#exact-source-verification-2026-11-27)
passed for all 46 public declarations and 45,786 transitive constants using
exactly those three axioms. No `sorry` or added axiom occurs.
