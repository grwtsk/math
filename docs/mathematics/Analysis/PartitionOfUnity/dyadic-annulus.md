# A smooth annulus partition on natural dyadic scales

Let $\theta=\operatorname{Real.smoothTransition}$ and define the complex-valued
annulus

\[
A(x)=\theta(2-x)-\theta(2-2x).
\]

The real values are coerced to $\mathbb C$. The function is smooth,
nonnegative and real-valued. It vanishes for $x\le1/2$ and for $x\ge2$,
has compact support, and satisfies $\lVert A(x)\rVert=\operatorname{Re}(A(x))$.
For $x\ge1$, natural dyadic scales give actual sum and norm-sum identities:

\[
\sum_{j\ge0}A(x/2^j)=1,
\qquad
\sum_{j\ge0}\lVert A(x/2^j)\rVert=1.
\]

The source supplies `HasSum` witnesses. It uses a natural $K$ with
$2^K\le x<2^{K+1}$: every scale outside $\{K,K+1\}$ vanishes, and the
two remaining terms telescope using the cutoff's actual plateau values.
The indices are natural numbers, rather than all integers.

## Reassembly of actual summable weights

For any index type, a summable complex family $a(p)$ and real values $N(p)$,
assume $1\le N(p)$ whenever $a(p)\ne0$. Then

\[
(p,j)\longmapsto A(N(p)/2^j)a(p)
\]

is summable on the product index, and summing first over $p$ and then over
$j$ recovers $\sum_p a(p)$. The norm partition and actual summability of
$a$ supply the product bound and the interchange; reassembly is not an
assumed equality. Zero weights require no coverage premise.

The [Gaussian dyadic sum](../../NumberTheory/LSeries/gaussian-dyadic.md)
is a concrete consumer that supplies its Gaussian summability and
$N(n)=n+1\ge1$ inputs.

## Why positive input alone does not cover the scales

At $x=1/4$, every $A(x/2^j)$ for natural $j$ vanishes. The actual sum is zero,
and cannot equal one. The accepted positive control proves this before the
negative consumer attempts to replace $1\le x$ by $0<x$.

The [compact Gaussian window](../MellinTransform/compact-gaussian-window.md)
uses this annulus in the exact expression
$G(Z,j,y)=A(y)P(2^j y/Z)/(\sqrt y:\mathbb C)$. Its cutoff gives compact
support for every real $Z$; proved smoothness for $Z>0$ supplies its actual
Schwartz map. For $y>0$, square-root weighting recovers
$A(y)P(2^j y/Z)$ independently of $Z$. This window retains the square-root
factor and has its own source, controls and native receipt.

This is a partition in the scale index. It supplies no Haar integral
mass-one identity or probability-density normalization.

## Source, verification and credit

The [source](../../../../GRWTSK/Analysis/PartitionOfUnity/DyadicAnnulus.lean)
has its own mathematical placement, independent of an arithmetic detector.
The joint native receipt (artifact:gitblob:21402dbedcffc9740dc9dd72e4a8ea14d145272f)
and integration record (artifact:gitblob:33aceeb0545595e852ab81de410e103444654f77)
bind its exact bytes and actual consumer closure. Pinned Lean 4.33.0 checks
fresh local objects at trust zero with fatal warnings and a complete
owned-declaration/transitive-axiom census permitting only `propext`,
`Classical.choice` and `Quot.sound`. Pinned dependency objects are reused and
fingerprinted; their sources are not rebuilt. Correlated source/model
review is not independent validation.

The exact annulus and selected partition/reassembly proof patterns come
from pinned OpenAI [GaussianPartition](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Detector/GaussianPartition.lean)
and [GaussianDecomposition](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Detector/GaussianDecomposition.lean).
Apache-2.0 terms remain retained. Mathlib credits Sébastien Gouëzel and
Yury Kudryashov for SmoothTransition. Human direction: grwtsk contributors;
local formalization/checking: OpenAI Codex. No mathematical novelty,
whole-library acceptance, arithmetic supplier or runtime refinement is claimed.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/PartitionOfUnity/DyadicAnnulus.lean`](../../../../GRWTSK/Analysis/PartitionOfUnity/DyadicAnnulus.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | Unavailable |
| Theorem/lemma commands | Unavailable |

Source-command totals are unavailable for this primary source.

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
