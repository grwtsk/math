# `GRWTSK.NumberTheory.Zeta.MontgomeryTaylorWindow.eventually_rational_counts`

[Maintained Lean source](../MontgomeryTaylorWindowThresholds.lean).
Local source attribution: grwtsk contributors.

The exact source inputs are
[`montgomery_taylor_simple_on_critical_line_mult` and
`montgomery_taylor_distinct_mult`](https://github.com/anthropics/formal-math/blob/16a5ce41304fcdaea4e0be7c132e1c361dc26da5/zeta23/Solution.lean#L82-L98)
at the pinned Anthropic Zeta23 revision and their fixed primitive-character
[analogues](https://github.com/anthropics/formal-math/blob/16a5ce41304fcdaea4e0be7c132e1c361dc26da5/zeta23/Solution.lean#L128-L139).
The paper is Alpöge–Furman, arXiv:2608.13637v2, Theorems A–B and §1.1.

The local consequence takes both eventual inequalities for the same
total count and their respective simple-line and distinct counts. Apply
each inequality with the positive difference between its exact
coefficient and the rational coefficient. Take the larger of the two
height thresholds and clear the positive denominators. The resulting
integer inequalities are the ones in the local
[Montgomery–Taylor numerical gate](../NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/AnthropicMontgomeryTaylorNumericalGate.lean).
A fixed primitive character may have a character-dependent eventual
cutoff. Using this theorem on the repository's own counts requires exact
agreement with the source's count, analytic order and half-open window.

The conclusion is an eventual budget on counts. Even density one
permits a finite or zero-density set of exceptions, and an eventual
threshold may occur above the region where a small-count premise is
useful. See the [blueprint's evidence record](../RHGRHProofBlueprint.md#local-source-evidence)
for the exact local checks.
