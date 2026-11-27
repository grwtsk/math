# Bounding the actual exceptional prime-ideal contribution

Local source attribution: grwtsk contributors.

The [module](AuxiliaryPrimeNuisance.lean) supplies the previously assumed nuisance bound for [auxiliary-prime extraction](AuxiliaryPrimeIdealDifference.lean), tracked in [Math #1861](https://github.com/grwtsk/math/issues/1861). Its subject is the actual prime ideals of the ring of integers of a number field, their absolute norms, and the existing finite smoothed window. It supplies no zero-free strip or prime-counting estimate.

The mathematical correspondence is the exceptional-term paragraph of OpenAI, *Deterministic Polynomial Factorization over Prime Fields*, October 4, 2026, Proposition `analytic:auxiliary`, [analytic section at revision `3344da59991ed94f9ba711217b29c1d760badfa6`](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/preprints/Deterministic-Polynomial-Factorization-over-Prime-Fields-October-4-2026/build/sections/10-analytic.tex), source blob `21081c288d68760167d2d94a34247ba61240dddf`. The local argument below improves that paragraph's logarithmic bound; it is a local proof from Mathlib's algebraic facts, not an imported upstream Lean proof. The exact local declarations share the namespace `GRWTSK.PrimeFieldFactoring.IdealDifference`.

## Declarations and correspondence

| Declaration | Mathematical content and dependency |
| --- | --- |
| `rationalPrime`, `rationalPrime_prime` | Define the underlying rational prime as the absolute norm of the ideal contracted to the integers; prove primality for every nonzero prime ideal. |
| `rationalPrime_pow_inertia` | Express the actual ideal norm as the underlying rational prime raised to its inertia degree. |
| `primesOver_card_le_degree` | Bound the number of prime ideals over one rational prime using the actual identity summing ramification index times inertia degree. |
| `primeIdeal_card_le_degree` | Transfer that bound to any finite set of distinct prime ideals over that prime. |
| `ideal_fiber_weight_le` | Bound all included exponents attached to one ideal by one logarithmic window width. |
| `nuisanceBases`, `nuisanceBases_card` | Enumerate small rational bases together with the four exceptional values; bound their number by the integer square root plus four. |
| `nuisance_base_mem` | Prove that every nonordinary term has one of those rational bases. |
| `primeIdeal_card_le_of_rational_support` | Partition an actual finite ideal set by rational prime and sum the degree bounds. |
| `nuisance_ideal_card` | Apply that partition to the distinct ideals occurring in the existing nuisance sum. |
| `nuisance_le_nat_sqrt`, `nuisance_le_sqrt` | Obtain the complete nuisance estimate with the integer and real square roots, respectively. |
| `sqrt_log_le_three_quarters` (private), `nuisance_le_three_quarters` | Prove the numerical square-root/logarithm comparison and its three-quarter-power consequence. |
| `nuisance_le_input_bound` | Substitute the explicit degree bound $[F:\mathbf Q]\le12B$. |

## Complete counting argument

Write $d=[F:\mathbf Q]$, let $x\ge2$ be an integer, and assume $H\ge0$ and $\varphi(y)\le H$ for every real $y$. For a fixed ideal of norm $N\ge2$, every included exponent satisfies $1\le j\le\lfloor\log_N(2x)\rfloor$. Projection to $j$ is injective on this ideal's term fiber. Consequently its total weight is at most

$$
H\log N\,\lfloor\log_N(2x)\rfloor\le H\log(2x).
$$

This uses `Nat.pow_log_le_self` and monotonicity of the real logarithm, without an asymptotic estimate.

Let $r$ be the underlying rational prime and $f\ge1$ its inertia degree. The norm of a term is $r^{fj}$. If $fj\ge2$, its membership in the window forces $r^2\le2x$, hence $r\le\lfloor\sqrt{2x}\rfloor$. If $fj=1$, both $f$ and $j$ equal one. A nonordinary term must then lie over $2$, $3$, $p$ or $q$. Thus at most $\lfloor\sqrt{2x}\rfloor+4$ rational bases support nuisance ideals.

For each rational prime, the fundamental identity $\sum e_Pf_P=d$ and positivity of both factors imply at most $d$ prime ideals above it. Partitioning the nuisance ideals by rational base and then the terms by ideal proves

$$
\operatorname{nuisance}_F(p,q,x)
\le Hd(\sqrt{2x}+4)\log(2x)
\le20Hd\,x^{3/4}.
$$

The last inequality uses $\sqrt{2x}+4\le5\sqrt x$ and $\log(2x)\le4x^{1/4}$. Substituting $d\le12B$ gives $240HBx^{3/4}$.

## Source identities, scope and checks

The root pins are Lean **4.34.1** and Mathlib [`d13f23b723b8a846827a245b89c10fc7d3f11612`](https://github.com/leanprover-community/mathlib4/tree/d13f23b723b8a846827a245b89c10fc7d3f11612). The precise algebraic dependencies are `Nat.absNorm_under_prime` in `Mathlib/RingTheory/Ideal/Int.lean`; `Ideal.absNorm_pow_inertiaDeg` and `Ideal.inertiaDeg_pos` in `Mathlib/RingTheory/RamificationInertia/Inertia.lean`; `Ideal.ramificationIdx_pos` in `Mathlib/RingTheory/RamificationInertia/Ramification.lean`; `Ideal.sum_ramification_inertia_eq_finrank` in `Mathlib/RingTheory/RamificationInertia/Basic.lean`; and `NumberField.RingOfIntegers.rank` in `Mathlib/NumberTheory/NumberField/Basic.lean`.

The result permits arbitrary natural $p,q$: repeated exceptions only reduce the count. It does not require the weight to be nonnegative or smooth, because this is an upper bound on a finite sum. The separate splitting-cancellation theorem still requires nonnegative weights. Without a common upper bound $H$, rescaling the weight invalidates a fixed bound; counting only residue degree one would omit higher-degree nuisance ideals. These checks explain the retained hypotheses and partition.

Source Git blob `a82d9d4b14b2ce498df4e3c03ca4938d8f5ba5e3`, SHA-256 `6211eb2ddf0da25d6a144ff6148980b51db9e97dec7d7e040cbeeee7a8d5f441`, compiled at the root pins with exit **0**, without diagnostics. Transitive `#print axioms` checks for `primesOver_card_le_degree`, `nuisance_le_sqrt` and `nuisance_le_input_bound` returned exactly `propext`, `Classical.choice` and `Quot.sound`. The [source-bound group replay](AuxiliaryPrimeAnalyticExistence.md#exact-source-verification-2026-11-27) passed for all 46 public declarations and 45,786 transitive constants using exactly those three axioms. Independent external mathematical review is **NOT_RUN**. These observations establish neither the missing analytic explicit formula nor the Kummer splitting supplier.
