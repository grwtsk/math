# Compact smooth Schwartz cutoffs on a real interval

For a real radius $T\ge0$, define the actual complex-valued function
\[
\phi_T(s)=\theta(T+1-s)\theta(T+1+s),
\]
where $\theta$ is Mathlib's real smooth transition, embedded in $\mathbb C$.
The function is smooth, equals one for $|s|\le T$, and has support within
$[-T-1,T+1]$. Compact support and smoothness construct an actual Schwartz map.
The cutoff at $T=0$ still equals one at zero.

## Support boxes and active products

For a finite family of functions $W_i:\mathbb R\to\mathbb C$, real coefficients
$a_i$, and nonnegative support radii $M_i$, suppose $W_i(y)\ne0$ implies
$|y|\le M_i$. Set $T=\sum_i |a_i|M_i$. A nonzero product of the window
values implies $|\sum_i a_i y_i|\le T$, so this actual cutoff is one there.
This pointwise support argument requires neither smoothness nor integrability
of the functions $W_i$.

## Verification and limits

The [source](../../../../../GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean),
[joint positive controls](../../../../../GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianCoupledSeparation.lean),
joint native receipt (artifact:gitblob:e441245ed821fcd9d4711747c6d207e98a9c5e6e)
and integration record (artifact:gitblob:fb51031e146f7d7409e02fab8c4a9331ca3f94cf)
bind the actual reusable construction. This calculus module imports no Gaussian
module. The [Gaussian separation application](../../MellinTransform/gaussian-coupled-separation.md)
uses this construction and is checked in the same analytic closure; that census
must be counted once.

Pinned Lean 4.33.0 checks trust zero, fatal warnings and every owned declaration
and transitive axiom, allowing only `propext`, `Classical.choice` and `Quot.sound`.
Clean pinned dependency objects are reused and fingerprinted; their sources
and the whole umbrella are not rebuilt. The construction adapts the cutoff
idea in OpenAI's pinned `LogProfiles` using the actual pinned Mathlib
`Real.smoothTransition` API. OpenAI project credit, Sébastien Gouëzel and
Yury Kudryashov's smooth-transition credit, and Apache-2.0 terms remain retained.
Human direction: grwtsk contributors; adaptation/formalization/checking: OpenAI Codex.
Correlated review is not independent validation. No operational cache or RH
acceptance follows from this cutoff.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/Calculus/CompactCutoff.lean`](../../../../../GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | Unavailable |
| Theorem/lemma commands | Unavailable |

Source-command totals are unavailable for this primary source.

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
