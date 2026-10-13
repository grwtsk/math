# A strict negative prime-prefix correlation

Human mathematical direction: grwtsk contributors. Derivation, formalization and checking assistance: OpenAI Codex. Local contribution: MIT; upstream Lean and Mathlib authorship and Apache-2.0 licensing remain preserved. No originality or independent human acceptance is claimed. The continuing research owner is [math #15](https://github.com/grwtsk/math/issues/15); the previous exact-cascade implementation is [math #95](https://github.com/grwtsk/math/issues/95).

## Checked obstruction to nonnegative echoes

`primePrefix p` contains precisely the primes strictly below $p$. Lean proves

$$
C_{W_{\{2,3,5,7\}},\log 11}(\log 12)<0.
$$

This is an actual natural-order source state, not an arbitrary waveform. On the only active correlation cell, $\log11\le u\le\log12$,

$$
W_{\{2,3,5,7\}}(u)=2\left(1-\frac1{\sqrt2}-\frac1{\sqrt3}-\frac1{\sqrt5}
+\frac1{\sqrt6}-\frac1{\sqrt7}+\frac1{\sqrt{10}}+e^{-u/2}\right)<0.
$$

The radical sum before the exponential is strictly below $-1/3$; $e^{-u/2}\le1/\sqrt{11}<1/3$. The delayed waveform is the positive base note for $u>\log11$, and vanishes before that endpoint. Continuity then gives a strictly negative integral. All radical inequalities, support conditions and the strict integral argument are kernel checked, without numerical quadrature or custom axioms. Thus dropping every negative correlation is a false shortcut. This finite counterexample alone does not refute an allowance with nonzero constants.


## Source and verification scope

[Source](../../../../../GRWTSK/NumberTheory/Moebius/NegativePrimeCorrelation.lean). Status: **historical-source-description**. [Credit and evidence limits](../../../../reference/documentation-history.md). Earlier checks bind their recorded revisions; no new proof acceptance.
