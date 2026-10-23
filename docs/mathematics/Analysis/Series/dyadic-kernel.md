# A uniform bound for a dyadic kernel series

For real $t,s,A$ and natural $j$, define the actual scalar kernel

\[
K(t,s,A,j)=\frac{(2^j)^s}{(1+t2^j)^A}.
\]

If $0<s<A$, there is a constant $C>0$, chosen before $t$, such that for
every $t>0$ the sequence $K(t,s,A,\cdot)$ is summable and

\[
\sum_{j=0}^{\infty}K(t,s,A,j)\le C t^{-s}.
\]

All powers here use the exact real-power operations in the source. The
separate summability helper retains its weaker sufficient premises
$t>0$, $0\le A$ and $s<A$.

## Actual head, tail and cutoff proof

For $t>0$ and $A\ge0$, the source proves nonnegativity and two actual termwise bounds:

\[
K(t,s,A,j)\le(2^s)^j,\qquad
K(t,s,A,j)\le t^{-A}(2^{s-A})^j.
\]

The first uses $A\ge0$; the second supplies a summable geometric tail when
$s<A$. For the uniform sum bound set $r=2^s>1$ and $q=2^{s-A}<1$.
The proof chooses

\[
C=\frac r{r-1}+\frac1{1-q}.
\]

For $t\ge1$, the tail estimate and comparison of real powers suffice.
For $0<t<1$, an actual natural power near $1/t$ chooses the cutoff.
The finite geometric head and shifted infinite tail are bounded separately
and then reassembled. No kernel or infinite-sum bound is assumed.

The [Gaussian seminorm summation](../MellinTransform/gaussian-dyadic-summation.md)
uses this scalar supplier with $t=Z^{-1}>0$ and a natural $A>s$.
It retains its separate window and nonnegative-domination inputs.

## Checked boundaries

At $t=1$, $s=A=1$, every term is at least $1/2$, so the actual
sequence is not summable. At $t=0$, $s=1$, $A=2$, the actual terms
are $2^j$, again not summable. The positive module proves both
obstructions and the summable case $t=1,s=1,A=2$. The sole negative
consumer attempts to supply $1\le1$ where $1<1$ is required.

## Verification and credit

The [source](../../../../GRWTSK/Analysis/Series/DyadicKernel.lean),
[positive controls](../../../../GRWTSK/Analysis/Series/Checks/Positive/DyadicKernel.lean),
joint native receipt (artifact:gitblob:c1e7cc216dfd595390a78619196aad2f9b96b045)
and integration record (artifact:gitblob:66555b6d6adfc41b9fde895e08e563f2fcd57b9a)
bind the exact source and controls. The joint receipt freshly checks this
supplier, its actual Gaussian consumer and their complete selected local
closure at trust zero with fatal warnings and an owned-declaration/
transitive-axiom census allowing only `propext`, `Classical.choice` and
`Quot.sound`. Clean pinned dependency objects are reused and fingerprinted;
their sources are not rebuilt. The two analytic libraries share that joint
census; its count is not counted twice.

The exact scalar proof slice comes from OpenAI's pinned
[QuantitativePassage](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/CubicSieve/QuantitativePassage.lean),
with Apache-2.0 terms and individual imported Mathlib power, geometric-series
and Archimedean author credits retained. Human direction: grwtsk contributors;
local adaptation/formalization/checking: OpenAI Codex. This source admits no
surrounding arithmetic, cubic-sieve or physical detector. Correlated review
is not independent validation; no novelty, whole-library or RH result, or
operational cache refinement is claimed.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Analysis/Series/DyadicKernel.lean`](../../../../GRWTSK/Analysis/Series/DyadicKernel.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 9 |
| Theorem/lemma commands | 8 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
