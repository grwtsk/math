# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.IndexedRuleDerivationSyntax.Variantfc9353d640083726.RootLabelUnion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57ab1222677a0dc6dcf90f53803112287d9eb23a` · SHA-256 `52d6ef33eecdba157a759aac94df598239505adcd93246f60e760ab89c9b60f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Exact supplied root-variable-label finite-set fold
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: fc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c
Organized SHA-256: bfdca4371836affddd3e299e29c419d9b01fb429f5f5a2fcee1b0a7348c45e56
PMD: 510.0.070.020.060 inductive families (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.IndexedRuleDerivationSyntax.Variantfc9353d640083726.CompleteFamilyAndRoot

import Atomize.Formal.IndexedAll
import Atomize.Formal.KernelPresentation

/-!
# Raw derivations

**Architectural problem:** A proof-reification layer needs a finite object whose
every child is a genuine rule premise, rather than an untyped syntax tree with
decorative or disconnected nodes.

**Important data and indices:** `RawDer K J` is indexed by presentation `K` and
exact root judgment `J`.  Each node stores a `K.Rule` indexed by its full premise
list and conclusion plus one child derivation at every premise judgment.

**Type-enforced invariant:** A child with the wrong universe context, local
context, claim, or premise position cannot inhabit the required `IndexedAll`.
Rules may retain project-internal constants; raw derivations are intentionally
not boundary-only objects.

**Layer boundary:** This is abstract represented syntax, not a recovered
historical Lean kernel trace.  Completeness and replay acceptance require a
later concrete adapter and validation pipeline.

**Worked example:** The private `derivation` fixture in `Examples.lean` has a
unary rule with one child leaf that references `Project.helper`.  That name remains visible in
`constantReferences` instead of being relabeled as a trusted boundary fact.

**Used by:** `Comp` structurally maps raw derivations to `TreePlan`; `BClosed`
checks whether their constant references fit a fixed boundary.

**Proof idea:** Size, height, and reference accounting recurse over the node and
its heterogeneous child list.

**Equality notion:** Derivation equality is propositional equality of the exact
inductive syntax, including rule payload and children; no normalization or
alpha quotient is hidden here.

**Boundary cases:** A leaf has an empty premise list, size and height one, and
may contribute a leaf origin.  An internal node cannot contribute a leaf origin
through `KernelPresentation.leafOrigin?`.

**Validation consequence:** The finite structural facts can be kernel checked,
but they validate only values already constructed in the supplied abstract
presentation.
-/

open Atomize.Formal

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.IndexedRuleDerivationSyntax.Variantfc9353d640083726

universe u

namespace RawDer

mutual
  /--
  **Architectural problem:** Root parameters must be separated from local binders.
  **Important data and indices:** Names and classifications are supplied by `K`.
  **Type-enforced invariant:** Only `ruleRootVariables` from indexed nodes enter.
  **Layer boundary:** Classification is presentation metadata, not free-variable analysis.
  **Worked example:** The identity binder leaf contributes no root variable.
  **Used by:** Boundary diagnostics and `rootVariables_comp`.
  **Proof idea:** Union node classifications with all child classifications.
  **Equality notion:** Results use exact finite-set equality.
  **Boundary cases:** A local-only or reference-free tree may return `∅`.
  **Validation consequence:** Compilation cannot silently reclassify root variables.
  -/
  def rootVariables {K : KernelPresentation.{u}} {J : K.Judgment} :
      RawDer K J → Finset K.RootVariable
    | .node rule children =>
        letI := K.rootVariableDecidableEq
        K.ruleRootVariables rule ∪ rootVariablesAll children

  /--
  **Architectural problem:** Root-variable accounting must cover every premise.
  **Important data and indices:** `js` fixes the heterogeneous child list.
  **Type-enforced invariant:** Only indexed children are folded.
  **Layer boundary:** This is an auxiliary metadata union.
  **Worked example:** Empty premises contribute no root variables.
  **Used by:** `rootVariables` and its compilation theorem.
  **Proof idea:** Union the head result with the recursive tail result.
  **Equality notion:** Results are exact finite sets.
  **Boundary cases:** `.nil` returns `∅`.
  **Validation consequence:** No indexed child is skipped in root accounting.
  -/
  def rootVariablesAll
      {K : KernelPresentation.{u}} {js : List K.Judgment} :
      IndexedAll (RawDer K) js → Finset K.RootVariable
    | .nil => ∅
    | .cons head tail =>
        letI := K.rootVariableDecidableEq
        rootVariables head ∪ rootVariablesAll tail
end

end RawDer

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveFamilies.IndexedRuleDerivationSyntax.Variantfc9353d640083726
```
