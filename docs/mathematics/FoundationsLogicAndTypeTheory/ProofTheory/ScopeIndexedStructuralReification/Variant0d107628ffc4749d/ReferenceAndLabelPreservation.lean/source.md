# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.ScopeIndexedStructuralReification.Variant0d107628ffc4749d.ReferenceAndLabelPreservation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `775de7ab11c7c65551f7a3979e0c64faa89fae7e` · SHA-256 `c4440728eb7ca5a480d25acdd8444f40b903f9ae61b02220722a4d9562988a57`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ReferenceAndLabelPreservation — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 0d107628ffc4749df1790251f2ae23cb28567c194652aadf3a124ed331607193
Organized SHA-256: 509f70d785094c2cf1d00a8b5ace18d2e983c15fb9e3765255cb8d9f029381eb
PMD: 510.0.040 proof theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- All three complete evaluated-plan finite-set accounting functions and exact original-provider constant/root-variable/leaf-label preservation proofs. Public same-source Eval/Comp/eval_comp remain explicit; declared metadata is not a source-provenance or global closure certificate. -/

import Atomize.Formal.TreePlan

import GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.ScopeIndexedStructuralReification.Variant0d107628ffc4749d.StructuralRecoveryAndTreeMetrics

/-!
# Structural compilation and evaluation

**Architectural problem:** The planner representation must be connected to raw
derivation syntax by a theorem, rather than by a hash match or an unverified
external conversion.

**Important data and indices:** `Comp` and `Eval` preserve the exact
presentation `K`, root judgment `J`, rule payload, ordered premise list, and all
child indices.

**Type-enforced invariant:** Neither traversal can change a node's judgment or
insert a child at a different premise, because its result type fixes those
indices.

**Layer boundary:** This is structural recovery inside the abstract M1a model.
It is not a Lean elaboration trace, a kernel definitional-equality trace, a DAG
unfolding theorem, or evidence that any source declaration was atomized.

**Worked example:** Compiling the private unary `derivation` fixture from
`Examples.lean` and evaluating the result returns the same constructor tree,
including the internal `Project.helper` constant leaf.

**Used by:** `Boundary.CompB` reuses the recovery theorem after checking a fixed
boundary; the axiom audit lists the exported preservation witnesses.

**Proof idea:** Simultaneous structural recursion maps every node and its
heterogeneous child list.  Structural induction then cancels the two traversals
node by node.

**Equality notion:** Recovery is Lean propositional equality of represented
inductive syntax.  It is stronger than equality of pretty printing but does not
mean equality of historical traces or normalization of Lean expressions.

**Boundary cases:** A leaf maps to a leaf immediately.  Empty child lists drive
the base case; internal constants remain internal unless a separate `BClosed`
hypothesis classifies them within the fixed boundary.

**Validation consequence:** The theorem has kernel authority for the abstract
types only.  Hashes, Rust execution, and generated evidence are not premises and
cannot upgrade the result to a concrete Lean-adapter claim.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.ScopeIndexedStructuralReification.Variant0d107628ffc4749d

open Atomize.Formal

universe u

namespace TreePlan

/--
**Architectural problem:** Plans must expose internal constant references.
**Important data and indices:** Names come from `K`; the plan is indexed by `J`.
**Type-enforced invariant:** Accounting evaluates the same indexed plan tree.
**Layer boundary:** This is local accounting, not linked declaration closure.
**Worked example:** The private unary plan reports `Project.helper`.
**Used by:** `BTreePlan` and `constantReferences_comp`.
**Proof idea:** Evaluate the plan and reuse raw reference traversal.
**Equality notion:** Results are exact finite sets of presentation names.
**Boundary cases:** A reference-free plan returns `∅`.
**Validation consequence:** Abstract references remain visible after planning.
-/
def constantReferences {K : KernelPresentation.{u}} {J : K.Judgment}
    (plan : TreePlan K J) : Finset K.ConstantName :=
  (Eval plan).constantReferences

/--
**Architectural problem:** Plans must distinguish root variables from binders.
**Important data and indices:** Classifications and names come from `K` at root `J`.
**Type-enforced invariant:** Accounting traverses only the exact indexed plan.
**Layer boundary:** This is presentation metadata, not free-variable inference.
**Worked example:** The private identity plan reports no root variable.
**Used by:** Root-boundary diagnostics and `rootVariables_comp`.
**Proof idea:** Evaluate and reuse raw root-variable accounting.
**Equality notion:** Results are exact finite sets.
**Boundary cases:** Local-only plans may return `∅`.
**Validation consequence:** Compilation cannot silently change classifications.
-/
def rootVariables {K : KernelPresentation.{u}} {J : K.Judgment}
    (plan : TreePlan K J) : Finset K.RootVariable :=
  (Eval plan).rootVariables

/--
**Architectural problem:** Plan evaluation must retain leaf provenance.
**Important data and indices:** Origins come from `K` for a plan at exact `J`.
**Type-enforced invariant:** Only empty-premise rule metadata contributes.
**Layer boundary:** Labels are metadata, not theorem authority.
**Worked example:** The identity plan reports `.introducedLocal`.
**Used by:** Provenance audits and `leafOrigins_comp`.
**Proof idea:** Evaluate and reuse raw provenance traversal.
**Equality notion:** Results are exact finite sets.
**Boundary cases:** Unlabeled leaves contribute `∅`.
**Validation consequence:** Abstract provenance remains observable after planning.
-/
def leafOrigins {K : KernelPresentation.{u}} {J : K.Judgment}
    (plan : TreePlan K J) : Finset K.LeafOrigin :=
  (Eval plan).leafOrigins

end TreePlan

/--
**Used by:** `CompB` and internal-reference diagnostics.

**Equality notion:** Exact equality of finite sets of presentation constant
names, including internal project names.

**Validation consequence:** Compilation cannot hide or invent a constant
reference in the abstract tree model.

**Architectural problem:** Internal references must survive planning exactly.
**Important data and indices:** Both finite sets use `K.ConstantName` at root `J`.
**Type-enforced invariant:** `Comp` retains every indexed node inspected by accounting.
**Layer boundary:** Equality is local accounting, not global dependency closure.
**Worked example:** `Project.helper` occurs on both sides for the private fixture.
**Proof idea:** Unfold plan accounting and apply `eval_comp`.
**Boundary cases:** Empty reference sets remain empty.
-/
@[simp]
theorem constantReferences_comp
    {K : KernelPresentation.{u}} {J : K.Judgment}
    (derivation : RawDer K J) :
    (Comp derivation).constantReferences = derivation.constantReferences := by
  simp [TreePlan.constantReferences, eval_comp]

/--
**Used by:** Root-boundary accounting.

**Boundary cases:** Locally introduced binder variables are included only if the
presentation incorrectly classifies them as root variables; the toy fixture
checks the intended distinction.

**Architectural problem:** Planning must not alter root-variable classification.
**Important data and indices:** Both sides use `K.RootVariable` at exact root `J`.
**Type-enforced invariant:** The same indexed rule metadata is evaluated.
**Layer boundary:** The theorem preserves declared metadata, not adapter correctness.
**Worked example:** The private identity fixture remains root-variable free.
**Used by:** Root-boundary and scope-accounting audits.
**Proof idea:** Unfold plan accounting and rewrite by `eval_comp`.
**Equality notion:** The conclusion is exact finite-set equality.
**Validation consequence:** M1a compilation cannot reclassify abstract roots.
-/
@[simp]
theorem rootVariables_comp
    {K : KernelPresentation.{u}} {J : K.Judgment}
    (derivation : RawDer K J) :
    (Comp derivation).rootVariables = derivation.rootVariables := by
  simp [TreePlan.rootVariables, eval_comp]

/--
**Used by:** Leaf-provenance audits.

**Boundary cases:** Only empty-premise rules can contribute origins by the
presentation interface.

**Architectural problem:** Planning must not lose or invent leaf provenance.
**Important data and indices:** Both sides use `K.LeafOrigin` at root `J`.
**Type-enforced invariant:** Origin extraction follows the same indexed rules.
**Layer boundary:** The theorem preserves labels, not their concrete fidelity.
**Worked example:** `.introducedLocal` remains on both sides for the identity fixture.
**Used by:** Leaf-provenance audits.
**Proof idea:** Unfold plan accounting and rewrite by `eval_comp`.
**Equality notion:** The conclusion is exact finite-set equality.
**Validation consequence:** M1a compilation preserves abstract provenance.
-/
@[simp]
theorem leafOrigins_comp
    {K : KernelPresentation.{u}} {J : K.Judgment}
    (derivation : RawDer K J) :
    (Comp derivation).leafOrigins = derivation.leafOrigins := by
  simp [TreePlan.leafOrigins, eval_comp]


end GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.ScopeIndexedStructuralReification.Variant0d107628ffc4749d
```
