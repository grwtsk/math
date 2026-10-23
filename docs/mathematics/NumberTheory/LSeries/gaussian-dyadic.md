# Dyadic reconstruction of the Gaussian zeta sum

For real $Z>0$, let $P$ be the exact normalized Gaussian Mellin profile and
$A$ the [smooth dyadic annulus](../../Analysis/PartitionOfUnity/dyadic-annulus.md).
Then the actual product-index family

\[
(n,j)\longmapsto A((n+1)/2^j)P((n+1)/Z),\qquad n,j\in\mathbb N,
\]

is summable, and

\[
\sum_{j\ge0}\sum_{n\ge0}A((n+1)/2^j)P((n+1)/Z)
=\sum_{n\ge0}P((n+1)/Z).
\]

Each fixed-$j$ inner sum has finite support in $n$, and equals its finite
sum over `Finset.range (2^(j+1))`. For real $\sigma>1$,
the [proved zeta Gaussian contour](gaussian-contour.md) equals this dyadic
sum. The coefficients remain exactly one on positive natural numbers;
the Gaussian normalization and the $1/(2\pi)$ contour factor are retained.

## The actual supplied inputs

The profile-summability theorem supplies summability for $Z>0$. The
natural-number quantity $n+1$ supplies the annulus coverage condition
$1\le n+1$. The actual norm partition proves product summability and
justifies exchanging the two sums. Fixed-scale finite support follows
from the annulus vanishing for argument at least two. These are proved
inputs, not truncation or interchange assumptions.

The scale-coverage control proves that $x=1/4$ has all natural-scale annuli
zero and sum zero. It rejects replacing the generic partition's $1\le x$
premise by positivity. The contour consumer separately retains $\sigma>1$;
the earlier absolute-interchange obstruction at $\sigma=Z=1$ remains valid.

This is a concrete natural-number consumer of OpenAI's annular reassembly
method. It does not import the original cubic-ideal pair weights, masks,
corrections or their summability suppliers. The optional upstream window
$G(Z,j,y)=A(y)P(2^jy/Z)/\sqrt y$ has a separate factor and API; it is not
silently identified with the terms above. No contour continuation or RH
supplier is inferred.

## Source, verification and credit

The [source](../../../../GRWTSK/NumberTheory/LSeries/GaussianDyadic.lean),
[positive controls](../../../../GRWTSK/NumberTheory/LSeries/Checks/Positive/GaussianDyadic.lean),
native receipt (artifact:gitblob:21402dbedcffc9740dc9dd72e4a8ea14d145272f)
and integration record (artifact:gitblob:fdadad8b9880e552bcc27e6151bc4cb4f75d73d0)
bind the exact selected closure, including the generic annulus module.
Pinned Lean 4.33.0 checks fresh selected local objects at trust zero with
fatal warnings and a complete owned-declaration/transitive-axiom census
permitting only `propext`, `Classical.choice` and `Quot.sound`. Pinned
dependency objects are reused and fingerprinted, without rebuilding their
sources. Correlated source/model review is not independent validation.

OpenAI's pinned [GaussianDecomposition](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Detector/GaussianDecomposition.lean)
supplies the research and proof-pattern provenance. Apache-2.0 and named
Lean/Mathlib smooth-transition, infinite-sum and Gaussian/Mellin author
credits remain retained. Human direction: grwtsk contributors;
formalization/checking assistance: OpenAI Codex. No mathematical novelty,
whole-library admission or operational cache refinement is claimed.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/LSeries/GaussianDyadic.lean`](../../../../GRWTSK/NumberTheory/LSeries/GaussianDyadic.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 7 |
| Theorem/lemma commands | 6 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
