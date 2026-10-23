# Primitive additive triples and the abc target

For positive natural numbers `a`, `b`, `c` with `a + b = c` and `Nat.Coprime a b`, the frozen target is

\[
\forall\varepsilon>0\;\exists K>0\;\forall(a,b,c),\qquad
c\leq K\operatorname{rad}(abc)^{1+\varepsilon}.
\]

`K` may depend on the real number `ε` and must work for every primitive positive additive triple. The radical is Mathlib's natural-number `UniqueFactorizationMonoid.radical`, explicitly typed before coercion to the reals. The power is `Real.rpow`. `ABCConjecture` is a proposition, with no assumed or constructed proof.

The target package proves the remaining pairwise coprimality relations, radical positivity, and finiteness at bounded height. The logarithmic form retains an additive constant; the quality form retains that constant divided by the positive logarithmic radical. Signed nonzero primitive integer representatives use maximum absolute height, the radical of the absolute product, and the equation `a + b + c = 0`. Their normalization preserves both invariants. The finite-exception equivalence quantifies over every positive epsilon; the uniform-bound direction uses a smaller epsilon. It is not a same-epsilon equivalence without this slack.

The unconditional squarefree-product result has coefficient one for nonnegative epsilon. Its squarefree hypothesis remains explicit. Polynomial Mason–Stothers has its own [derivative and radical statement](../../Polynomial/derivative-radical-bound.md); no integer transfer is supplied.

## Open mathematical obligations

The IUT route still needs exact journal-version statement reconstruction, source-specific comparison objects and maps, and the arithmetic reductions to a uniformly quantified target. The [comparison dossier](../../ArithmeticGeometry/LogThetaComparison/abc-iut-objections.md) preserves the competing source claims and the separate transport model.

Arithmetic derivatives require the precise global size and nonvanishing theorem. Geometry of numbers requires a literal radical-height improvement. Congruence reductions require checked control of constants and substitutions. Exceptional-set estimates require no promotion to finiteness without a proof. Elliptic-curve routes require conductor, discriminant, minimal-model and height normalizations. The primitive-moment route has an exact [finite signed Möbius identity](moments.md), including an actual typed-triple bijection and arbitrary joint weights. The [divisor-sector reindexing](divisor-sectors.md) also retains its positive divisor, exact floor cutoff and additive constraint. Uniform radical-weighted estimates and their arithmetic implications remain open; pairwise moment data cannot replace the ternary constraint.

The proof hypergraph (artifact:gitblob:9042723e1eb3dff0efc7bbe2ba3a0ccba77251a0) stores complete premise sets for each proposed inference. Its edges schedule research; they do not prove entailment. The finite moment identity, divisor-sector identities and [complex additive-character formulas](additive-character-moments.md) have exact checked statement nodes. The projector retains `q > 2*M`, the scaled joint weight and its literal finite frequency expansion. Uniform radical-height estimates and the arithmetic implication remain open. The two audited character modules are registered and exported by `GRWTSK.lean`; their exact shared-replay and documentation outcomes are recorded separately in the current integration status. The resume cursor (artifact:gitblob:41288f0b56abb50efcc3a4253a3bcd389c302406) identifies the next unresolved obligation and frozen target. The previous hypergraph and cursor retain their original bytes. Literature coverage is bounded and version-sensitive.

## Source and verification scope

[Frozen target source](../../../../../GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ABCStatement.lean). The source digest and pinned environment are retained in the immutable manifest (artifact:gitblob:f4e0258dc02954f25fe02e903793a5753bb456af). Selected source replay, axiom audit, consumer compilation and intended rejections are distinct from the repository-wide layout and documentation gates. Current structural failures are retained; this page does not grant repository admission or target closure.

Direction: grwtsk contributors. Formalization and verification assistance: OpenAI Codex. Original additions use the repository MIT license; Lean and Mathlib retain their upstream credits and licenses.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ABCStatement.lean`](../../../../../GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ABCStatement.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 2 |
| Theorem/lemma commands | 0 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
