# Compact-window finite support of ideal-norm triples

Let $S$ be a commutative Dedekind domain, finite and free as a module over
$\mathbb Z$, with characteristic zero. Let $W:\mathbb R\to\mathbb C$ have compact
support and let $X>0$. For
$F:\operatorname{Ideal}(S)^3\to\mathbb C$, assume both exact cancellation
conditions:

- If any of $I,J,H$ is the zero ideal, then $F(I,J,H)=0$.
- If $W(N(I)N(J)^3N(H)^3/X)=0$, then $F(I,J,H)=0$, where $N$ is the actual
  Mathlib `Ideal.absNorm`.

Then `Function.support F` is finite. No continuity or smoothness of $W$ is
required. The exact Lean algebraic assumptions are `CommRing S`,
`IsDedekindDomain S`, `Module.Free ℤ S`, `Module.Finite ℤ S` and `CharZero S`.
The theorem does not assume finite support or replace the ideal norm by an
arbitrary numeric oracle.

## Proof and actual integer ideals

Compact support bounds every real input at which $W$ is nonzero. Nonzero
ideals have absolute norm at least one, so each of the three norms is at most
the product $N(I)N(J)^3N(H)^3$. Choose a natural bound above the resulting real
bound. Mathlib's actual finiteness theorem for ideals of bounded absolute norm
then bounds the support by a finite product of sets of ideals.

The actual integer-ideal consumer uses `integerWindow = schwartzCutoff 1`,
with values one at both zero and one. It sets its triple weight to zero when
any ideal is zero and otherwise evaluates this window at the actual norm
product. The theorem supplies finite support, and the value at the three unit
ideals is one.

For the checked failure, `zeroFiber(I,J,H)` is one when the first ideal is zero
and zero otherwise. At scale one it satisfies the actual window-vanishing
condition: on the zero fiber the argument is zero and the window equals one.
Its support is infinite, proved using the injection
$n\mapsto(0,\langle n\rangle,1)$ of actual integer-ideal triples; absolute
norm certifies that the principal ideals are distinct. The zero-cancellation
condition fails at $(0,1,1)$. Thus dropping that condition alone invalidates
the general conclusion. This counterproof precedes the sole intended negative
application, which supplies a reflexive real inequality in place of the
missing cancellation proof.

## Verification, sources and open specialization

The [source](../../../../GRWTSK/NumberTheory/Ideal/CompactNormSupport.lean),
[positive controls](../../../../GRWTSK/NumberTheory/Ideal/Checks/Positive/CompactNormSupport.lean),
native receipt (artifact:gitblob:5f87bda6353391391b75f1f53a1c4798806584d3)
and integration record (artifact:gitblob:3ff649ee09650501e3512599445b186b4a8a8d2a)
bind fresh selected local sources and actual controls, including the positive
consumer's [compact cutoff](../../Analysis/RealAnalysis/DifferentialCalculus/compact-cutoff.md).
Pinned Lean 4.33.0 checks trust zero, fatal warnings and every owned declaration
and transitive axiom, allowing only `propext`, `Classical.choice` and
`Quot.sound`. Clean pinned dependency objects are reused and fingerprinted;
their sources and the whole umbrella are not rebuilt.

The proof adapts the compact-window norm-triple slice of
[OpenAI's IdealMobius source](https://github.com/openai/math/blob/1581d4cbdd69a0faf34b2089614fe2a814316a6a/lean/OAI/NumberTheory/DirichletL/Arithmetic/IdealMobius.lean),
with every hypothesis retained and the ring generalized explicitly. OpenAI
project authorship and Apache-2.0 terms are retained. Mathlib ideal-norm
authors Anne Baanen and Alex J. Best retain their individual credit. Human
direction: grwtsk contributors; adaptation, formalization and checking: OpenAI
Codex. The source review (artifact:gitblob:c1634376bf90a6758b6c77ec478c3da529ad7a7d)
records exact bytes and bounded external scopes. Correlated model/source
review is not independent validation.

The [third cyclotomic instantiation](../Cyclotomic/third-cyclotomic-ideals.md)
now supplies the literal original ring of integers of `CyclotomicField 3 ℚ`,
its actual algebraic instances, ideal-norm formula and finite-support consumer.
The integer-ideal example above retains its own domain and norms. Original
coefficient objects and actual completed ideal sums,
masks, correction factors, a common finite support for every frequency and
the original detector and RH suppliers remain open. The separate
[annular separation theorem](../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/gaussian-annular-separation.md)
supplies no missing arithmetic hypotheses automatically.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Ideal/CompactNormSupport.lean`](../../../../GRWTSK/NumberTheory/Ideal/CompactNormSupport.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 3 |
| Theorem/lemma commands | 3 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
