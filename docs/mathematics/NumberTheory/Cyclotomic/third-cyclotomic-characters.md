# Cubic characters on good third-cyclotomic quotients

Let $K=\operatorname{CyclotomicField}(3,\mathbb Q)$ and let $O$ be its actual ring of integers. Use the [original root and reduction](third-cyclotomic-reduction.md) $\omega$ and $\lambda=\omega-1$. For every actual maximal ideal $P$ of $O$ satisfying $\lambda\notin P$, the module constructs a multiplicative character $\chi_P:O/P\to O$ with exact order three. It is extended by zero on nonunits; since $O/P$ is a field, its value at zero is zero.

For $q=|O/P|$ and $m=(q-1)/3$, the proof derives $3\mid q-1$ and $m>0$. For every $x\in O/P$, including zero, the actual quotient map satisfies $\pi_P(\chi_P(x))=x^m$. The identity $\chi_P^3=1$ is equality with the trivial multiplicative character, which also vanishes at zero. On units, the value has cube one. At zero, that pointwise assertion is false.

## Construction and proof

Actual restricted reduction from the third roots of unity in $O$ to those in $O/P$ is proved surjective using the reduced primitive root. Both finite root groups have cardinality three, giving `restrictedRootsEquiv`. Its inverse is restricted to roots; no inverse of the whole quotient map is assumed.

The finite-field Euler law maps a unit $u$ to $u^m$ in the quotient root group. The actual inverse equivalence lifts it to an $O$ root, and Mathlib's `MulChar.ofUnitHom` extends this units homomorphism by zero on nonunits. The all-element reduction proof handles zero using the proved strict positivity of $m$ and nonzero elements using actual unit witnesses.

The lifted root values yield character cube equality. If the character were trivial, the finite-field criterion for a power to equal one on every unit would force $q-1$ to divide $m$, contradicting $q-1=3m$ and $m>0$. Its order is therefore exactly three.

## Actual consumers and controls

The positive module produces a genuine good maximal ideal containing $(2)$ using the prior reduction module. Its actual character has values zero and one at zero and one, is nontrivial and has order three. This does not assert that $(2)$ itself is maximal or identify its quotient with a chosen finite field.

Controls prove actual restricted inverse lifting and uniqueness, the all-element formula, character cube equality, unit-value cube equality, and the failure of cube-one at zero. The intended negative tries to use the character equality as evidence that the zero value has cube one; the selected replay rejects that exact type mismatch.

For the actual ramified ideal $(\lambda)$, the quotient has cardinality three and the proposed Euler exponent is zero. A positive proof shows that no multiplicative character can satisfy the same all-element formula there: at zero the left side is zero and the right side is $0^0=1$. This refutes that formula without the good-prime exclusion; it does not claim that no multiplicative characters exist on the ramified quotient.

## Sources, verification and remaining suppliers

The [library source](../../../../GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean), [positive controls](../../../../GRWTSK/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicCharacters.lean), [negative control](../../../../GRWTSK/NumberTheory/Cyclotomic/Checks/Negative/ThirdCyclotomicCharacterZeroCube.lean) and selected native receipt (artifact:gitblob:3a56ad066807acd70306629d515d13af552d3879) bind the exact selected bytes.

The recorded Lean 4.33.0 replay used trust zero, fatal warnings and the complete owned-declaration/transitive-axiom audit, with no runtime-helper exemptions. The selected closure contains 92 owned declarations: 35 new library declarations, 13 accepted positive declarations and 44 from prior dependencies. These are owned-declaration counts, not theorem totals. Only `propext`, `Classical.choice` and `Quot.sound` are allowed. That selected replay reused and fingerprinted clean pinned dependency objects; it rebuilt neither those dependency sources nor the whole public umbrella. This page records installed selected-source integration. The selected receipt covers its recorded closure; any public-umbrella acceptance requires separately bound checkpoint evidence. Selected verification applies to its exact recorded sources and verifier context; documentation preparation runs no new replay and supplies no independent validation.

The construction adapts OpenAI's Apache-2.0 [FiniteFourier source](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/GaussSum/FiniteFourier.lean), restricted-root/unit-character construction at lines 377–402 and 429–477 and actual character laws at lines 553–654. Mathlib credits include Michael Stoll for multiplicative characters, Johan Commelin for roots of unity, Xavier Roblot for number-field ideal results, and Chris Hughes, Joey van Langen and Casper Putz for finite-field results. Their source notices and Apache-2.0 terms remain attached. Human direction: grwtsk contributors; adaptation, formalization and checking: OpenAI Codex. No novelty claim is made.

Actual good-quotient cubic character construction is supplied at the explicit premises above. The [actual cubic Jacobi congruence](third-cyclotomic-jacobi.md) now consumes this character under the same good-prime premise, with its own selected receipt. Sextic/trace laws, Jacobi norm/product and ideal-generation results, normalized primary generators at good primes, arithmetic coefficients and weights, completed corrections and common ideal support for every frequency remain separate open suppliers. No original detector, global analytic bound, RH or operational cache/IO refinement follows.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean`](../../../../GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicCharacters.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 16 |
| Theorem/lemma commands | 9 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
