# Finite weighted signed-root traces

Let $\Lambda\subset\mathbb C$ be a finite set closed under conjugation, and
let $w:\mathbb C\to\mathbb R$ satisfy $w(z)>0$ for every $z\in\Lambda$.
For a real polynomial $p$, define the signed square trace
\[
T_{\Lambda,w}(p)=\sum_{z\in\Lambda}w(z)p(z)^2.
\]
The theorem `squareTrace_nonneg_iff_real` proves exactly
\[
\left(\forall p\in\mathbb R[X],\quad
  \deg p<|\Lambda|\ \Longrightarrow\ \operatorname{Re}T_{\Lambda,w}(p)\ge0\right)
\quad\Longleftrightarrow\quad
\forall z\in\Lambda,\ \operatorname{Im}z=0.
\]
The degree is Lean's `Polynomial.degree`: the zero polynomial has degree
$\bot$, so the empty node set is included. Positive weights can encode
repeated-root counts after distinct nodes and their actual multiplicities
have been identified. This module does not identify the nodes or weights of
an analytic function.

## Interpolation and the negative test

`coeff_im_eq_zero_of_eval_compatible` states that a complex polynomial of
degree below the size of a conjugation-closed node set has real coefficients
when its values commute with conjugation on that set. Polynomial uniqueness
compares it with the polynomial obtained by conjugating every coefficient.

`exists_real_interpolate` constructs a real polynomial for any compatible
values on those nodes, retaining the same strict degree bound. It reuses
Mathlib's Lagrange interpolation and uniqueness theorems.

For any selected nonreal $z\in\Lambda$, `exists_pair_test` supplies a real
polynomial of degree below $|\Lambda|$ whose values are $i$ at $z$, $-i$ at
$\bar z$, and zero at the other nodes. Its exact signed trace is
\[
T_{\Lambda,w}(p)=-\bigl(w(z)+w(\bar z)\bigr).
\]
This equality itself needs no sign hypothesis on the weights. Strict
positivity makes it negative. In the converse direction, evaluation at real
nodes gives ordinary real squares, so positive weights give a nonnegative
sum. `squareTrace_eq_real` records the real-sum identity without a sign
assumption.

## Boundaries and relation to the quartic detector

The criterion uses the real part of the trace and permits unequal weights
at conjugate nodes. Such a trace need not itself be real. For example, at
$\{i,-i\}$ with weights $3,2$, the test $p=1+X$ has trace $2i$.
Actual conjugate-root multiplicities of a real polynomial require their own
identification and equality; arbitrary weights are not called multiplicities.
`squareTrace_im_eq_zero` proves that conjugation-closed nodes with equal
conjugate weights have real trace, for every real polynomial and without a
weight-sign hypothesis.

Zero weights can erase nonreal nodes. Negative weights can give a negative
trace even at a real node. The trace uses signed squares, not squared
moduli: at $\{i,-i\}$ with unit weights and $p=X$, the signed trace is $-2$
while the squared-modulus sum is $2$. Consumer fixtures check these values;
the negative controls reject both a weight-sign substitution and a modulus
substitution at the intended false inequalities.

The [explicit quartic detector](conjugate-quartic.md) already supplies one
quadratic test for its special four-entry list, including height zero. The
present result supplies interpolation for arbitrary finite conjugation-closed
sets. It does not yet formalize the Newton-sum matrix, its inertia, or a
bridge from `Polynomial.roots` to this weighted interface. The
[zeta trace criterion](../../NumberTheory/Zeta/Riemann/trace-and-height-criteria.md)
still requires its actual source positivity and extraction premises.

## Sources, credit and verification

The mathematics follows Hermite and Sylvester, using the interpolation proof
in [M. B. Nathanson, Lemmas 1–2 and Theorem 1](https://arxiv.org/abs/1911.01745).
The [generalized even-power paper](https://arxiv.org/abs/2003.13008) was also
consulted; its higher-power theorem is not formalized here. Search comparison
with an [external Lean Hermite scaffold](https://github.com/karlesmarin/godsil-gutman-lean/blob/02bb3a9eb8c5009cc465534c71ffb39273a5e8f0/HermiteSylvester.lean)
found definitions and transpose symmetry, with the real-rootedness bridge
unfinished. No code from that repository is imported or copied.

The [interpolation source](../../../../GRWTSK/Algebra/Polynomial/ConjugateInterpolation.lean),
[trace source](../../../../GRWTSK/Algebra/Polynomial/SignedRootTrace.lean), and
[consumer fixtures](../../../../GRWTSK/Algebra/Polynomial/Checks/Positive/SignedRootTrace.lean)
are bound by the selected native receipt (artifact:gitblob:765015f56011a087f12a78960c4f7d83b2298859).
The replay uses pinned Lean 4.33.0 and Mathlib, trust zero, fatal warnings,
fresh selected project objects, and the complete owned-declaration and
transitive-axiom audit for those modules. Cached dependency objects are
fingerprinted and reused; Mathlib and the whole repository are not rebuilt.
Only `propext`, `Classical.choice`, and `Quot.sound` are allowed.
The integration record (artifact:gitblob:58616fe9cb0230cb7609f4b57f943304006fc986)
preserves search scope, contribution roles, earlier attempts and repository
validation limits. Existing repository-wide layout and documentation failures
block a whole-repository conformance claim. No independent review, novelty,
or RH proof is claimed.

Human project direction and research materials: grwtsk contributors. Lean
formalization, source search and implementation assistance: OpenAI Codex.
Classical source authors retain mathematical credit. Local source is MIT;
Mathlib retains its authorship and Apache-2.0 license.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Algebra/Polynomial/SignedRootTrace.lean`](../../../../GRWTSK/Algebra/Polynomial/SignedRootTrace.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 8 |
| Theorem/lemma commands | 6 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
