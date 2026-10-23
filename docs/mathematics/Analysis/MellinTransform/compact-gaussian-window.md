# The compact Gaussian window and its square-root factor

Let $A$ be the proved smooth dyadic annulus and $P$ the exact normalized
Gaussian Mellin profile. For real $Z$, natural $j$ and real $y$, define

\[
G(Z,j,y)=\frac{A(y)P(2^j y/Z)}{\sqrt y},
\]

where the square root is real and coerced to $\mathbb C$. The source uses
the exact totalized real/complex operations in this formula. The cutoff
makes $G$ zero for $y\le1/2$ and $y\ge2$, and compactly supported, for every
real $Z$. For $Z>0$, $G(Z,j,\cdot)$ is smooth of every order and supplies an
actual Schwartz map via Mathlib's existing compact-support constructor.

For $y>0$, independently of $Z$, the weighted identity is

\[
(\sqrt y:\mathbb C)G(Z,j,y)=A(y)P(2^j y/Z).
\]

This retains the exact factor used by the upstream `Vstar` operator. The
local source exposes the actual square-root weighting without importing
the surrounding arithmetic detector.

## Actual smoothness and Schwartz-map inputs

On positive arguments and with $Z>0$, the source rewrites the exact profile
using the real logarithm and proves smoothness of the expression with its
nonzero square-root denominator. Near nonpositive arguments the actual
cutoff makes the function locally zero. Compact support and smoothness
then supply the Schwartz-map constructor's inputs. Its evaluation is this
exact $G$, rather than an unspecified smooth representative.

The [annulus](../PartitionOfUnity/dyadic-annulus.md) and
[normalized Gaussian](normalized-gaussian.md) retain their own hypotheses
and native receipts. The real-log correspondence is used at positive
arguments. The source's $Z>0$ smoothness premise is sufficient; no claim
that $Z=0$ is nonsmooth or that the premise is necessary is made.

## Why the square-root denominator matters

At $j=0$, $Z=1$, $y=3/4$, the annulus is strictly positive, the normalized
profile is nonzero and $\sqrt{3/4}\ne1$. Omitting $1/\sqrt y$ therefore
changes the actual square-root-weighted value. The accepted positive
control proves this counterexample before the negative consumer attempts
to omit the factor. Testing only $y=1$ would not detect that error.

No Mellin convergence, vertical integrability, inversion or actual Hecke
row supplier follows merely from this Schwartz-map construction. Those
require their own inputs and source-bound checks.

The [uniform Gaussian derivative bound](scaled-gaussian-derivatives.md)
now supplies actual bounds on $D^n_x P(rx)$ for $r>0$ and $y\in[1/2,2]$,
with one constant for each real exponent and derivative order. Combining
that estimate with derivatives of the cutoff divided by the square root
to bound the actual window's Schwartz seminorms remains a separate consumer.

## Source, verification and credit

The [source](../../../../GRWTSK/Analysis/MellinTransform/CompactGaussianWindow.lean),
[positive controls](../../../../GRWTSK/Analysis/MellinTransform/Checks/Positive/CompactGaussianWindow.lean),
native receipt (artifact:gitblob:63f56415a981b16b7b0eef7be3ebccc211f97fd7)
and integration record (artifact:gitblob:fbb8d1371bc7aa2df49a212b7289a42c40496c98)
bind exact definitions, hypotheses and the selected closure. Pinned Lean
4.33.0 checks fresh local objects at trust zero with fatal warnings and a
complete owned-declaration/transitive-axiom census permitting only
`propext`, `Classical.choice` and `Quot.sound`. Clean pinned dependency
objects are reused and fingerprinted, without rebuilding their sources.
Correlated source/model review is not independent validation.

The exact window and selected proof patterns come from OpenAI's pinned
[GaussianWindows](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Detector/GaussianWindows.lean);
[GaussianLow](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Detector/GaussianLow.lean)
uses its actual Schwartz map. Apache-2.0 terms remain retained. Mathlib
credits Yury Kudryashov for smooth square-root APIs and Moritz Doll for
SchwartzSpace, alongside the earlier Gaussian/Mellin and smooth-transition
authors. Human direction: grwtsk contributors; adaptation/formalization/
checking: OpenAI Codex. No mathematical novelty, whole physical-detector
admission, RH supplier or operational cache refinement is claimed.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/MellinTransform/CompactGaussianWindow.lean`](../../../../GRWTSK/Analysis/MellinTransform/CompactGaussianWindow.lean).

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
