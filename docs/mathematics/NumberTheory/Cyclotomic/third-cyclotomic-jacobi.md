# Cubic Jacobi congruence in the third cyclotomic integer ring

Let $O$ be the ring of integers of $\operatorname{CyclotomicField}(3,\mathbb Q)$, with the [specified primitive root](third-cyclotomic-reduction.md) $\omega$ and $\lambda=\omega-1$. For an actual maximal ideal $P$ of $O$ with $\lambda\notin P$, let $\chi_P:O/P\to O$ be the [constructed cubic character](third-cyclotomic-characters.md). Its Jacobi sum is the actual finite sum

$$J_P=\sum_{x\in O/P}\chi_P(x)\chi_P(1-x).$$

The module specializes the pinned Jacobi congruence to obtain a coefficient $z\in\mathbb Z[\omega]$ satisfying

$$J_P=-1+z\lambda^2.$$

Consequently $\lambda^2\mid J_P+1$ and $\lambda^2\mid(-J_P)-1$. The opposite assertion $\lambda^2\mid J_P-1$ is false: subtracting it from the first divisibility would give $\lambda\mid2$, contradicting the already proved nonmembership of $2$ in $(\lambda)$.

## Construction and exact premises

The quotient is the actual finite field $O/P$. The preceding character construction supplies $\chi_P^3=1$ and $3\mid |O/P|-1$. The specified $\omega$ is a primitive third root in the actual integer ring. These discharge the premises of Mathlib's `exists_jacobiSum_eq_neg_one_add` with $n=3$. The coefficient remains in `Algebra.adjoin ℤ {omega}`; it is not replaced by an assumed congruence witness.

Character equality uses Mathlib's extension by zero on nonunits. In particular the trivial multiplicative character has value zero at zero, so its cube identity does not imply a pointwise cube-one assertion there. The primary-congruence theorem needs no additional nontriviality hypothesis beyond the proved character power identity.

## Consumers and sign controls

The positive consumer uses the existing producer of an actual good maximal ideal containing $2$. This provides a nonvacuous example without asserting that $(2)$ itself is maximal, naming a quotient of cardinality four, or assuming a generator of $P$. It retains the generated-subalgebra coefficient and both sign conclusions. Further controls prove that the actual endpoint summands at zero and one vanish and that removing those summands preserves the sum.

The sign boundary distinguishes $J_P$ from $-J_P$. A successful positive counterexample proves the wrong sign impossible. The intended negative supplies the proved divisibility of $J_P+1$ where the false divisibility of $J_P-1$ is required; the selected replay rejects that sole type mismatch.

## Sources, verification and remaining suppliers

The [library source](../../../../GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicJacobi.lean), [positive consumers](../../../../GRWTSK/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicJacobi.lean), [intended negative](../../../../GRWTSK/NumberTheory/Cyclotomic/Checks/Negative/ThirdCyclotomicJacobiWrongSign.lean) and selected receipt (artifact:gitblob:62ea459e1f3329c33e3b285d5f8d62baf141c22d) bind the exact checked bytes.

The Lean 4.33.0 selected replay used trust zero, fatal warnings and a complete owned-declaration/transitive-axiom audit. Its 95 owned declarations comprise 79 from prior dependencies, eight in the new library module and eight in the positive module. These are declaration counts, not theorem totals. Every declaration is mathematical, with only `propext`, `Classical.choice` and `Quot.sound`; no runtime-helper exemptions are used. The sole negative fails at the intended sign mismatch. Earlier failed development attempts remain preserved.

The recorded selected replay used explicit `--cold` to freshly elaborate the complete local import closure and fingerprints reused clean pinned dependency objects. It rebuilds neither Mathlib sources nor the public umbrella. Whole-library integration requires separately bound checkpoint receipts; this page and structural documentation checks add no independent mathematical validation. The source consolidation (artifact:gitblob:676c53427e6c90c05faa60b61b92c4bd50396178) retains exact upstream bytes, licenses, premises and the bounded Anthropic comparison.

The construction adapts OpenAI's Apache-2.0 [FiniteFourier source at commit 1581d4cb](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/GaussSum/FiniteFourier.lean#L656), specifically `cubicJacobi_primary`. The reusable Jacobi theorem is Michael Stoll's Apache-2.0 [Mathlib JacobiSum source at the repository pin](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/JacobiSum/Basic.lean#L289), whose notice also credits Alexander Spahl's thesis code. Individual source notices and licenses remain attached. Human mathematical direction: grwtsk contributors; adaptation and checking assistance: OpenAI Codex. No novelty or independent-validation claim is made.

Relyea's [versioned cubic reciprocity exposition](https://arxiv.org/html/2407.03559v3) uses a trivial-character value of one at zero. Its sign convention is informative, but that extension does not supply pointwise identities for the zero-extended local characters. The stronger normalization in [Amano–Mizusawa–Morishita, Lemma 1.1](https://arxiv.org/html/1412.6894v5) has a norm residue condition and is a separate obligation.

This congruence supplies no Jacobi norm/product identity, conjugation law, ideal-generator witness or stronger-modulus normalization. Sextic and trace laws, arithmetic coefficients and weights, completed corrections and common ideal support at every frequency remain open. RH and ABC remain open. Operational cache compression and file transactions require their own bounded controls and gain no Lean verification from this arithmetic statement.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicJacobi.lean`](../../../../GRWTSK/NumberTheory/Cyclotomic/ThirdCyclotomicJacobi.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 7 |
| Theorem/lemma commands | 5 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
