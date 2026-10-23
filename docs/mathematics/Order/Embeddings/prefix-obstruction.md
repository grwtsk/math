# Obstructions to prefix representations of orders


Let $R$ be a relation on a type $A$. Suppose $a,b,c\in A$ satisfy $R(a,c)$
and $R(b,c)$, while neither $R(a,b)$ nor $R(b,a)$ holds. There is no map
$f:A\to\operatorname{List}(B)$ that both preserves and reflects $R$ as
`List.IsPrefix`:

\[
R(x,y)\quad\Longleftrightarrow\quad f(x)\text{ is a prefix of }f(y).
\]

The target alphabet is arbitrary. The obstruction uses the actual finite-list
prefix relation; it assumes no numerical address or serialization convention.

## Why reflection matters

Preservation makes $f(a)$ and $f(b)$ prefixes of the same list $f(c)$.
Such prefixes are comparable. Reflection would then make $a,b$ comparable in
the source relation, contradicting the hypotheses.

An actual four-element diamond supplies the finite obstruction. A valid chain
has a prefix representation. There is also an injective map from the diamond
into a prefix chain that preserves the source relation while introducing an
extra comparison between the incomparable middle elements. Thus injectivity
and monotonicity alone do not imply the missing reflection premise.
The negative consumer attempts that unsupported inference and must fail at
the intended type.

## Taxonomy and revision scope

This result limits representations of a specified relation. It does not
prohibit displaying a directed acyclic graph through several paths, duplicating
display occurrences with explicit identities, or keeping additional edges
outside a tree. Such constructions need their own exact coverage and relation
contracts. Parent ancestry, provenance, dependencies, implication and agent
communication remain distinct relation roles.

The existing taxonomy candidates define their own recursive `Prefix` and
ancestor-chain lemmas. Their `NOT_RUN` labels remain unchanged; this module
imports the pinned list API and does not depend on those candidates. No
equivalence between the two prefix definitions or Python/JSON taxonomy
refinement is inferred.

## Source, verification and credit

The [source](../../../../GRWTSK/Order/Embeddings/PrefixObstruction.lean),
[positive consumers](../../../../GRWTSK/Order/Embeddings/Checks/Positive/PrefixObstruction.lean)
and native receipt (artifact:legacy-artifact-unavailable:3a9a8debec91eee22a4e9351b88c9b124dc2db7ed669a23fa7718a7c0dc5a1bc)
bind exact bytes, controls and the complete local import closure. Replay uses
pinned Lean 4.33.0, trust zero, fatal warnings and a complete owned-declaration
and transitive-axiom audit, permitting only `propext`, `Classical.choice` and
`Quot.sound`. Pinned dependency objects are reused and fingerprinted.

The integration evidence (artifact:legacy-artifact-unavailable:02ec18b75c984833e3131062a9b17360d0f932bc8922dc8f4bba02b827aeb64e)
and bounded source review (artifact:legacy-artifact-unavailable:cf5466f224237f95c6d8083296e8e5d5a538aa6d371c7a59838a797c4817dada)
preserve exact hypotheses, source identities, individual credit and limits.
Source syntax counts and taxonomy counts confer no proof acceptance. The
user's 16 declared method families and 215 declared records still lack supplied
individual method identities. No runtime, hash, compression, filesystem,
whole-library acceptance or independent-validation claim is made.

Human mathematical direction: grwtsk contributors. Formalization and checking
assistance: OpenAI Codex. Local source is MIT; Lean and Mathlib retain upstream
authors and licenses. No mathematical novelty is claimed.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Order/Embeddings/PrefixObstruction.lean`](../../../../GRWTSK/Order/Embeddings/PrefixObstruction.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 20 |
| Theorem/lemma commands | 13 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
