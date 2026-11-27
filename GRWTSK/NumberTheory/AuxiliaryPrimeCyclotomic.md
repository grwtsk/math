# Cyclotomic congruence from actual root containment

Local source attribution: grwtsk contributors.

The [local module](AuxiliaryPrimeCyclotomic.lean) supplies the `hcyclo`
premise of
`GRWTSK.PrimeFieldFactoring.IdealDifference.auxiliary_of_prime_ideal_difference`.
Its source correspondence is the ordinary degree-one congruence in
OpenAI, *Deterministic Polynomial Factorization over Prime Fields*,
October 4, 2026, Proposition 11.3 (`analytic:auxiliary`), revision
`3344da59991ed94f9ba711217b29c1d760badfa6`, analytic-source blob
`21081c288d68760167d2d94a34247ba61240dddf`.
[Exact source](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/preprints/Deterministic-Polynomial-Factorization-over-Prime-Fields-October-4-2026/build/sections/10-analytic.tex).

This is a local consequence of existing Mathlib theorems, using exact
Mathlib revision `d13f23b723b8a846827a245b89c10fc7d3f11612`. The principal
upstream input is Xavier Roblot's
[`IsPrimitiveRoot.idealQuotient_mk`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/NumberField/Ideal/Basic.lean).
Other linked file bylines identify Johan Commelin (primitive roots),
Chris Hughes, Joey van Langen and Casper Putz (finite fields), and
Riccardo Brasca (cyclotomic extensions and their integers). Their
upstream authorship and Apache-2.0 licensing are unchanged.

All local declarations below have namespace
`GRWTSK.PrimeFieldFactoring.IdealDifference`.

| Declaration | Exact upstream locator and mathematical scope |
| --- | --- |
| `root_order_dvd_norm_sub_one` | `IsPrimitiveRoot.idealQuotient_mk`, [finite-field `FiniteField.pow_card_sub_one_eq_one`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/FieldTheory/Finite/Basic.lean), and [`IsPrimitiveRoot.pow_eq_one_iff_dvd`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/RingTheory/RootsOfUnity/PrimitiveRoots.lean). A nonzero prime ideal, a primitive root in the actual ring of integers, nonzero order, and norm coprimality imply that order divides the ideal norm minus one. |
| `norm_congruent_one` | The preceding result and [`Nat.modEq_of_dvd'`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Data/Nat/ModEq.lean). Requires order at least two to conclude the literal remainder is one. |
| `norm_congruent_one_of_primitive_root` | [`IsPrimitiveRoot.toInteger` and `toInteger_isPrimitiveRoot`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/NumberField/Cyclotomic/Basic.lean). Root containment in the actual number field supplies integrality. |
| `ordinary_norm_coprime` | [`Nat.coprime_primes`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Data/Nat/Prime/Basic.lean) and multiplication of coprimality. Prime norm and exclusions of two, three and the prime `q` prove coprimality with `12*q`. |
| `ordinary_norm_congruent_one` | The preceding local results and `mem_window`. A genuine primitive `12*q` root in the field proves the precise congruence for every ordinary window term. |
| `cyclotomic_ordinary_norm_congruent_one` | [`IsCyclotomicExtension.exists_isPrimitiveRoot`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/Cyclotomic/Basic.lean). The actual instance `IsCyclotomicExtension {12*q} ℚ K` supplies the root itself. |

Reduction preserves the root's exact order because of coprimality. That
order divides the cardinality minus one of the actual residue field.
Thus no Frobenius identity or cyclotomic splitting law is assumed. The
primitive-root version applies to any containing number field, not only
the smallest cyclotomic field. The Kummer splitting premise and the
analytic explicit-formula premise remain separate obligations; this
module supplies neither.

Lean 4.34.1 with the stated Mathlib pin compiled final source blob
`0839be9a1bec097fb20bb99ba749600db0aaa440` with exit zero and no diagnostics.
The [source-bound group replay](AuxiliaryPrimeAnalyticExistence.md#exact-source-verification-2026-11-27)
passed for all 46 public declarations and 45,786 transitive constants using
exactly `Classical.choice`, `Quot.sound` and `propext`. External mathematical
review and independent-toolchain replay are `NOT_RUN`.
See [the analytic argument](AuxiliaryPrimeAnalyticExistence.md)
and [issue 1861](https://github.com/grwtsk/math/issues/1861) for the final
combined evidence and remaining suppliers.
