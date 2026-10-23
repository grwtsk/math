# Weighted and remote sums of Gaussian seminorms

Let $M_S(Z,j)$ be the supremum of a finite family $S$ of seminorms of
the actual Gaussian Schwartz window, and set $r_j=2^j/Z$. For every real
weight $k$ and $s>0$, there is one $C>0$, chosen before $Z>0$, such that

\[
\sum_{j=0}^{\infty}(2^j)^s r_j^k M_S(Z,j)\le C Z^s,
\]

and the displayed nonnegative sequence is summable. An empty family is
allowed. These are actual seminorms of the existing window, with no
summability or envelope oracle assumed.

For every natural $N$, restricting the unweighted sequence to the actual
remote condition $r_j\le A^{-1}$ or $A\le r_j$ gives a summable sequence
and a constant, chosen before $Z>0$ and $A\ge1$, such that

\[
\sum_{\substack{j\ge0\\ r_j\le A^{-1}\ \text{or}\ A\le r_j}}
(2^j)^s M_S(Z,j)\le C\frac{Z^s}{A^N}.
\]

## Actual suppliers and remote comparison

The [uniform window estimates](gaussian-window-seminorms.md) at exponent
$a+k$ give all-real power bounds for the weighted profile $r^k M_S$.
The exponent-zero and natural-exponent estimates give its polynomial
envelope. The actual [dyadic kernel](../Series/dyadic-kernel.md) then
supplies the weighted sum, with a natural decay exponent exceeding $s$.

For the remote sum, the actual bounds at weights $-N$ and $N$ supply the
comparison. On the remote set, $A^N\le r^{-N}+r^N$. Nonnegativity and the
two proved weighted sums give summability and the stated bound. Evaluation
through the zeroth seminorm also yields an actual remote norm-value bound
with one constant independent of the real evaluation point.

## Scope, controls and verification

The cutoff premise is $A\ge1$, and the scale premise is $Z>0$. The controls
use $Z=1,s=1,y=3/4,A=0$. The actual remote value series is summable,
its zeroth term is positive, and its sum is positive. For $N=1$, however,
the proposed right side is $C/0=0$ for every real $C$, so the stated bound
fails. The negative consumer attempts to supply $0\le0$ as $1\le0$.
This control concerns the bound; it makes no divergence claim at zero
cutoff and does not assert that $A\ge1$ is sharp.

The [source](../../../../GRWTSK/Analysis/MellinTransform/GaussianRemoteSeminorms.lean),
[positive controls](../../../../GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianRemoteSeminorms.lean),
native receipt (artifact:gitblob:30c1b3a73c8da1d3213864e6bdb54f997f54b646)
and integration record (artifact:gitblob:4d6eddc217700abc0b41323200bf04bf577df477)
bind fresh selected local sources and controls. Pinned Lean 4.33.0 checks
at trust zero with fatal warnings and a complete owned-declaration/
transitive-axiom census permitting only `propext`, `Classical.choice` and
`Quot.sound`. Clean pinned dependency objects are reused and fingerprinted;
their sources and the whole umbrella are not rebuilt by this selection.

The weighted/remote proof shape follows OpenAI's pinned
[GaussianTailBudget](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Detector/GaussianTailBudget.lean),
adapted here to actual Gaussian-window seminorms. The original source
concerns density integrals. Its Fourier-density moment, Hecke, calibration,
ideal and physical-row suppliers remain open locally; this theorem does
not instantiate them. Apache-2.0 terms, OpenAI project credit and individual
imported Mathlib credits remain retained. Human direction: grwtsk contributors; local adaptation/formalization/checking: OpenAI Codex. Correlated
review is not independent validation; no novelty, RH, whole-library or
operational cache-refinement claim is made.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/MellinTransform/GaussianRemoteSeminorms.lean`](../../../../GRWTSK/Analysis/MellinTransform/GaussianRemoteSeminorms.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 12 |
| Theorem/lemma commands | 8 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
