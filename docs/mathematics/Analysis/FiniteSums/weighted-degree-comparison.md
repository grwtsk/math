# Weighted and unweighted finite degree expressions

Let `n` be a positive natural number, `l = 2n + 1`, and `D`, `Q`, `E` arbitrary real numbers. The exact identities are

\[
W=\frac1n\sum_{j=1}^{n}\left(jD-\frac{j^2Q}{2l}\right)
=\frac{n+1}{2}\left(D-\frac Q6\right),\qquad
U=\frac1n\sum_{j=1}^{n}\left(jD-\frac{Q}{2l}\right)
=\frac{n+1}{2}D-\frac{Q}{2l}.
\]

The source proves the first and second power-sum identities by induction, then evaluates these expressions. All omitted approximation terms are replaced by the explicit variable `E`. In particular,

\[
-Q/(2l)\le W+E
\iff\left((n+1)/12-1/(2l)\right)Q\le(n+1)D/2+E,
\]

whereas `-Q/(2l) ≤ U + E` is equivalent to `0 ≤ (n+1)D/2 + E`. For `n > 1` the weighted coefficient is positive and yields the corresponding upper bound on `Q`. The unweighted inequality holds at `D = E = 0` for arbitrarily large `Q`. Thus deleting the square weights changes the mathematical conclusion.

## Source and verification scope

[Formal source](../../../../GRWTSK/Analysis/FiniteSums/WeightedDegreeComparison.lean). The motivating formulas are Scholze and Stix, [Why abc is still a conjecture](https://www.math.uni-bonn.de/people/scholze/WhyABCisStillaConjecture.pdf), section 1.3, printed page 4, equations (1.5) and (1.6). The formal variables are real scalars; the source's arithmetic-degree interpretation and approximation hypotheses are not proved here. The [source correspondence boundary](../../NumberTheory/ArithmeticGeometry/LogThetaComparison/abc-iut-objections.md) remains separate.

Direction: grwtsk contributors. Formalization assistance: OpenAI Codex. MIT; imported Mathlib results retain their upstream license and credits. A neighboring accepted consumer evaluates `W = -1/4` and `U = -1/10` at `n = 2`, `D = 0`, `Q = 1`; the deleted-weight fixture must reject the substituted equality.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/FiniteSums/WeightedDegreeComparison.lean`](../../../../GRWTSK/Analysis/FiniteSums/WeightedDegreeComparison.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 11 |
| Theorem/lemma commands | 9 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
