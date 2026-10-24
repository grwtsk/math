# Additive-character moments of primitive triples

Let `M,d,q` be natural numbers, let `q > 2*M`, and let `W : ℕ → ℕ → ℕ → ℂ` be an arbitrary joint weight. Using the [normalized character projector](../../../Analysis/HarmonicAnalysis/FourierAnalysis/FiniteAdditiveProjector/projector.md), the exact finite identity is

\[
\sum_{\substack{1\le u,v\le M\\u+v\le M}}W(du,dv,d(u+v))
=\sum_{1\le u,v,w\le M}P_q(u,v,w)W(du,dv,dw).
\]

The closed cube and strict no-wrap bound are explicit. The projector enforces the unscaled equation `u+v=w`. All three arguments of `W` are scaled, and no factorization or independence of the joint weight is assumed. These character formulas use complex weights; the earlier ring-valued finite identities retain their separate, more general coefficient scope.

The literal finite frequency expansion is

\[
q^{-1}\sum_{k\in\mathbb Z/q\mathbb Z}
\sum_{1\le u,v,w\le M}
\chi_q\!\left(k(\bar u+\bar v-\bar w)\right)W(du,dv,dw).
\]

Finite distributivity and interchange of the full finite sums justify this frequency-first expression. The phase is computed in `ZMod q` before scaling; it is neither a truncated natural subtraction nor a modular equation from which `d` is cancelled.

## Divisor sectors and primitive triples

For a [common-divisor sector](divisor-sectors.md), retain `d > 0` and put `M = N / d`, using natural floor division. The sector equals the character cube above under the exact condition `2*(N/d) < q`. Its quotient coordinates have no coprimality restriction.

For the actual primitive positive triples with `c ≤ N`, one fixed modulus `q > 2*N` suffices for every `d ∈ Finset.Icc 1 N`, since `N/d ≤ N`. The typed primitive moment equals the signed Möbius sum of these character cubes. Positivity, `a+b=c` and `Nat.Coprime a b` remain in the original triple type. The integer Möbius coefficient is cast into `ℂ`; character filtering supplies no replacement for that coprimality filter.

## Finite controls and open arithmetic implications

The controls distinguish modular wraparound from integer equality, retain the reciprocal normalization, reject unjustified cancellation of a scaled phase, and distinguish `W(du,dv,dw)` from an unscaled third coordinate. They include composite-modulus, empty-cube and genuine joint-weight cases. A separate negative consumer rejects promotion of the finite identity to the frozen abc proposition.

No uniform radical-height estimate, analytic cancellation bound, infinite transform, or pointwise arithmetic implication is supplied. The [abc target](abc-proof-frontier.md) retains all positive real epsilon and its globally uniform constant. Any product-weight transform factorization or literal estimate used later requires its own statement and proof.

## Source and verification scope

[Joint-moment source](../../../../../GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdditiveCharacterMoments.lean). It uses the generic Analysis projector and the existing finite moment and divisor-sector identities. The selected pinned replay (artifact:gitblob:e829a06e7c0514db063c75cc9553341150dbe3cf) checks the complete local dependency closure, owned declarations, compiled direct consumers and intended type rejections with trust zero and fatal warnings. Dependency objects are reused at the pinned scope; Mathlib sources are not rebuilt. Documentation and whole-repository source-layout gates remain separate checks.

The current finite frontier (artifact:gitblob:41288f0b56abb50efcc3a4253a3bcd389c302406) records the next product-weight factorization obligation. The bounded status (artifact:gitblob:13e48c9efa13b02016d7ac1f442a69984178c968) separates the checked local proof, root-export integration checks and open arithmetic estimates.

Direction: grwtsk contributors. Formalization and verification assistance: OpenAI Codex. Original additions: MIT. Upstream canonical characters, finite sums and Möbius theory retain their Mathlib authorship and licenses.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdditiveCharacterMoments.lean`](../../../../../GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdditiveCharacterMoments.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 7 |
| Theorem/lemma commands | 5 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
