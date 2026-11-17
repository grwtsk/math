# `GRWTSK.NumberTheory.Zeta.MontgomeryTaylorWindow.rational_thresholds_lt`

[Maintained Lean source](../MontgomeryTaylorWindowThresholds.lean).
Local source attribution: grwtsk contributors.

The constants are the optimized ones in Levent Alpöge and Ralph Furman,
[*More than two thirds of the zeros of the Riemann zeta function are simple
and on the critical line*, arXiv:2608.13637v2, §1.1, Theorem A and the
Montgomery–Taylor improvement](https://arxiv.org/html/2608.13637v2).
The closed form matches `cMT` in
[`ChallengeDeps.lean`](https://github.com/anthropics/formal-math/blob/16a5ce41304fcdaea4e0be7c132e1c361dc26da5/zeta23/ChallengeDeps.lean)
and is expressed as `Zeta23.ThmD.cStar 1` by
[`Solution.cStar_one_eq_cMT`](https://github.com/anthropics/formal-math/blob/16a5ce41304fcdaea4e0be7c132e1c361dc26da5/zeta23/Solution.lean#L44-L50)
at the same repository revision. The local theorem proves a numerical
consequence directly from the displayed trigonometric expression.

Put `x=1/√2`. The alternating sine series through degree seven gives
`sin(x)/x ≥ 37043/40320`, and the alternating cosine series through
degree eight gives `cos(x) ≤ 163483/215040`. The absolute terms decrease
because `0<x<1` and the factorial denominator increases. For the exact
comparison,
`(331/400)*(37043/40320) − 163483/215040 = 1/2016000 > 0`.
Consequently `x cos(x)/sin(x)<331/400`. Substituting it into
`1/cMT = 1/2 + x cos(x)/sin(x)` gives the strict margins above
`269/400` and `669/800`. A numerical approximation to the decimal
`0.6725` alone cannot establish the sign of this margin.

The consumer is [`eventually_rational_counts`](eventually_rational_counts.md).
See the [blueprint's evidence record](../RHGRHProofBlueprint.md#local-source-evidence)
for the local source hash, toolchain, actual checks and remaining external
source comparison.
