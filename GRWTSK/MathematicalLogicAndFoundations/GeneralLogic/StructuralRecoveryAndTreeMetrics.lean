/-
StructuralRecoveryAndTreeMetrics — exact individually reviewed source
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

/- Entire mutually recursive Eval/Comp/recovery core and root/size/height equations with all private helpers and exact proofs in one file. No private-helper cross-file binding, DAG compression, normalization, concrete Lean replay or trace recovery is asserted. -/

import Atomize.Formal.TreePlan

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

mutual
  /--
  **Architectural problem:** Give plans an exact structural meaning.

  **Proof idea:** Replace each plan node by the corresponding raw node and map
  recursively over its indexed children.

  **Layer boundary:** Evaluation returns represented raw syntax; it does not ask
  Lean's kernel to replay a concrete declaration.

  **Important data and indices:** `K` and exact root judgment `J` are unchanged.
  **Type-enforced invariant:** Every output child has the same premise index as
  its input plan child.
  **Worked example:** Evaluating the compiled private identity fixture rebuilds
  its lambda and binder-local leaf.
  **Used by:** `eval_comp`, plan accounting, and boundary recovery.
  **Equality notion:** The function constructs exact raw inductive syntax.
  **Boundary cases:** An empty child list maps to an empty child list.
  **Validation consequence:** Evaluation has structural meaning only in the
  abstract presentation; it does not certify concrete replay.
  -/
  def Eval {K : KernelPresentation.{u}} {J : K.Judgment} :
      TreePlan K J → RawDer K J
    | .node rule children => .node rule (evalAll children)

  private def evalAll {K : KernelPresentation.{u}} {js : List K.Judgment} :
      IndexedAll (TreePlan K) js → IndexedAll (RawDer K) js
    | .nil => .nil
    | .cons head tail => .cons (Eval head) (evalAll tail)
end

mutual
  /--
  **Architectural problem:** Produce a separately named planning representation
  without losing any raw rule node or scope index.

  **Proof idea:** Replace each raw node by the corresponding plan node and map
  recursively over its indexed children.

  **Important data and indices:** `K`, `J`, rule payloads, and premise order are
  retained in the result type and constructors.
  **Type-enforced invariant:** A child cannot move to another scoped judgment.
  **Layer boundary:** Compilation builds the local M1a tree, not a shared DAG or
  transformed Lean source.
  **Worked example:** The private internal-constant derivation retains
  `Project.helper` in its compiled plan.
  **Used by:** Recovery and every compilation-preservation theorem.
  **Equality notion:** Output is exact indexed tree syntax.
  **Boundary cases:** Leaves compile without adding premises.
  **Validation consequence:** The function preserves representable structure
  but supplies no concrete adapter or accepted-run evidence.
  -/
  def Comp {K : KernelPresentation.{u}} {J : K.Judgment} :
      RawDer K J → TreePlan K J
    | .node rule children => .node rule (compAll children)

  private def compAll {K : KernelPresentation.{u}} {js : List K.Judgment} :
      IndexedAll (RawDer K) js → IndexedAll (TreePlan K) js
    | .nil => .nil
    | .cons head tail => .cons (Comp head) (compAll tail)
end

mutual
  /--
  Structural compilation followed by evaluation returns the original
  derivation.

  **Architectural problem:** The planning representation needs a kernel-checked
  recovery theorem rather than an external hash comparison.

  **Important data and indices:** Presentation, exact root judgment, rules,
  premise order, and all scoped children are shared by both sides.

  **Type-enforced invariant:** `Comp` and `Eval` cannot change the root or child
  indices in the theorem statement.

  **Layer boundary:** This is abstract structural recovery, not Lean elaboration
  or source-to-kernel trace recovery.

  **Worked example:** For the toy proof of `P → P` and for the internal-constant
  example, `Eval (Comp derivation)` contains exactly the original rule and leaf
  constructors in the original order.

  **Used by:** `CompB`, all metric/reference preservation theorems below, and
  the M1a axiom-audit evidence use this theorem as their recovery witness.

  **Proof idea:** Structural induction on `derivation`, paired with induction on
  its `IndexedAll` children, reduces each node to the induction hypotheses.

  **Equality notion:** The conclusion is propositional equality of the complete
  represented inductive syntax.  It is not merely definitional equality after
  normalization, alpha-equivalence, proof irrelevance of rule data, or equality
  of a historical Lean kernel trace.

  **Boundary cases:** Empty-premise leaves are the base case.  The theorem allows
  internal constants and makes no boundary-closure claim; `eval_compB` adds that
  result only when the original derivation already satisfies `BClosed`.

  **Validation consequence:** A checked proof rules out structural information
  loss in M1a `Comp`; it does not certify a concrete Lean adapter, DAG sharing,
  source transformation, or accepted atomization run.
  -/
  theorem eval_comp {K : KernelPresentation.{u}} {J : K.Judgment}
      (derivation : RawDer K J) :
      Eval (Comp derivation) = derivation := by
    cases derivation with
    | node rule children =>
        simp only [Comp, Eval]
        rw [evalAll_comp children]

  private theorem evalAll_comp
      {K : KernelPresentation.{u}} {js : List K.Judgment}
      (children : IndexedAll (RawDer K) js) :
      evalAll (compAll children) = children := by
    cases children with
    | nil => rfl
    | cons head tail =>
        simp only [compAll, evalAll]
        rw [eval_comp head, evalAll_comp tail]
end


/--
**Used by:** Consumers that select a plan by its root can reuse the exact raw
root after compilation.

**Proof idea:** Both roots are the same type index `J`, so the proof is
reflexive.

**Equality notion:** Propositional equality of scoped-judgment records.

**Architectural problem:** Compilation must retain the exact root index.
**Important data and indices:** Both roots are the implicit judgment `J`.
**Type-enforced invariant:** `Comp` returns `TreePlan K J` from `RawDer K J`.
**Layer boundary:** This compares abstract indices, not source declarations.
**Worked example:** The private identity derivation and its plan share the root.
**Boundary cases:** The result is also reflexive for leaves.
**Validation consequence:** Any change of abstract root is ruled out.
-/
@[simp]
theorem root_comp
    {K : KernelPresentation.{u}} {J : K.Judgment}
    (derivation : RawDer K J) :
    (Comp derivation).root = derivation.root := rfl

mutual
  /--
  **Used by:** Cost and diagnostic code may compare structural node counts
  without treating compilation as compression.

  **Proof idea:** Induct over the derivation and sum the child induction
  hypotheses.

  **Boundary cases:** A leaf has size one on both sides.

  **Architectural problem:** Structural compilation must not masquerade as
  compression by dropping rule nodes.
  **Important data and indices:** The compared objects share `K` and `J`.
  **Type-enforced invariant:** All indexed children participate in both counts.
  **Layer boundary:** This is tree size, not later DAG-node count.
  **Worked example:** The two-node identity derivation compiles to size two.
  **Equality notion:** The conclusion is natural-number equality.
  **Validation consequence:** M1a compilation preserves exact node activity.
  -/
  @[simp]
  theorem size_comp
      {K : KernelPresentation.{u}} {J : K.Judgment}
      (derivation : RawDer K J) :
      (Comp derivation).size = derivation.size := by
    cases derivation with
    | node rule children =>
        simp only [Comp, TreePlan.size, RawDer.size]
        rw [sizeAll_comp children]

  private theorem sizeAll_comp
      {K : KernelPresentation.{u}} {js : List K.Judgment}
      (children : IndexedAll (RawDer K) js) :
      TreePlan.sizeAll (compAll children) = RawDer.sizeAll children := by
    cases children with
    | nil => rfl
    | cons head tail =>
        simp only [compAll, TreePlan.sizeAll, RawDer.sizeAll]
        rw [size_comp head, sizeAll_comp tail]
end

mutual
  /--
  **Used by:** Structural diagnostics can retain derivation depth exactly.

  **Proof idea:** Induct over the derivation and preserve the maximum child
  height.

  **Boundary cases:** An empty child list has auxiliary height zero, hence a
  leaf has height one.

  **Architectural problem:** Compilation must preserve proof-tree depth.
  **Important data and indices:** Both metrics inspect trees at the same `K, J`.
  **Type-enforced invariant:** Indexed children cannot be omitted from maxima.
  **Layer boundary:** This is structural depth, not elaboration or runtime depth.
  **Worked example:** The identity lambda and its leaf keep height two.
  **Equality notion:** The conclusion is natural-number equality.
  **Validation consequence:** M1a planning cannot flatten abstract derivations.
  -/
  @[simp]
  theorem height_comp
      {K : KernelPresentation.{u}} {J : K.Judgment}
      (derivation : RawDer K J) :
      (Comp derivation).height = derivation.height := by
    cases derivation with
    | node rule children =>
        simp only [Comp, TreePlan.height, RawDer.height]
        rw [heightAll_comp children]

  private theorem heightAll_comp
      {K : KernelPresentation.{u}} {js : List K.Judgment}
      (children : IndexedAll (RawDer K) js) :
      TreePlan.heightAll (compAll children) = RawDer.heightAll children := by
    cases children with
    | nil => rfl
    | cons head tail =>
        simp only [compAll, TreePlan.heightAll, RawDer.heightAll]
        rw [height_comp head, heightAll_comp tail]
end


end GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.ScopeIndexedStructuralReification.Variant0d107628ffc4749d
