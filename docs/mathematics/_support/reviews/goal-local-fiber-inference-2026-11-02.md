# Goal-local fiber lifting for noninjective finite inference

Local attribution: grwtsk contributors. Mathematical review, 2026-11-02.
This is a **source proof candidate** and not a report of completed Lean verification.

## Abstract

A source-to-target map can collapse distinct inference atoms, so reverse
derivability does not follow merely from forward soundness or pointwise
agreement of proposition meanings. The earlier
[fiber-lifting source](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/FiniteFiberLiftedInference.lean)
gave sufficient conditions applying to every source fact and every
rule/conclusion fiber. That hypothesis is sometimes too strong for a
specific query: its failure can occur entirely outside the backward
dependency cone of the chosen goal.

The new
[GoalLocalFiberInference.lean](../../../../GRWTSK/MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/GoalLocalFiberInference.lean)
supplies a goal-local replacement. It proves conditional reverse inference
and a consumer-facing finite query equivalence when an explicitly
supplied target region contains the goal, is backward closed under mapped
rules, and has fact/rule lifts only inside that region. A concrete
source-backed example for \`Nat.le_trans\` proves **local lifting despite
the failure of global lifting**, using actual typed evidence for its
input facts and additional sound goal rule.

This is not a general Lean-expression extractor or a proof-capsule
admission; the exact scoped Meta and kernel checks remain independently
unexecuted.

## 1. Statement and quantifier scope

Let \`α,β\` be arbitrary types, \`f : α → β\`, \`R : List (Rule α)\`,
\`F : List α\`, and \`K : β → Prop\`. Let \`f(R)\` map **each entire
premise list**, retaining occurrences and conclusion, and let \`f(F)\`
be the list of source fact images. A \`GoalLocalFiberLiftable f R F K\`
requires exactly three mathematical conditions:

1. **Backward closure:** For each \`r∈R\`, if \`K(f(r.conclusion))\`,
   then \`K(f(p))\` holds for every \`p∈r.premises\`.
   Conjunctive dependencies are not flattened into alternatives.
2. **Local fact lifting:** If \`p∈F\`, \`f(p)=f(a)\`, and \`K(f(a))\`,
   then \`a∈F\`. No such claim is required outside \`K\`.
3. **Local rule lifting:** For each \`r∈R\` and \`a∈α\` with
   \`f(a)=f(r.conclusion)\` and \`K(f(a))\`, find an actual
   \`r'∈R\` concluding exactly \`a\`. Each \`p'∈r'.premises\`
   must have an original companion \`p∈r.premises\` satisfying
   \`f(p)=f(p')\`.

For any **selected** \`a\` such that \`K(f(a))\`, the principal
source-level theorem candidate states:

\[
\operatorname{Derivable}(R,F,a)
\iff
\operatorname{Derivable}(f(R),f(F),f(a)).
\]

The reverse direction needs the three assumptions; the forward
direction reuses the already-authored \`derivable_forward_under_map\`
without assuming an inverse for \`f\`.

This theorem is **not** a global derivability equivalence at
arbitrary source atoms outside \`K\`. Source-semantic truth comparison
and source-expression proof-variable extraction are separate claims.

## 2. Proof and declaration correspondence

The source
\`derivable_reverse_of_goal_local_lifts\` defines an interpreted
predicate on target atoms:

\[
H(y)=K(y)\implies
\forall x\in\alpha,\ f(x)=y\implies\operatorname{Derivable}(R,F,x).
\]

For a target fact, \`K(y)\` together with an originating source
fact and local fact lifting yields the required source derivation
for *every* preimage \`x\`. For a target rule, the current
conclusion is in \`K\`. The source's backward-closure condition
keeps all mapped premises within \`K\`, so the induction hypotheses
actually apply. The rule-lifting field chooses a real source rule
for the selected preimage of the conclusion; the coverage condition
recovers every conjunctive premise and hence a source derivation.
The existing \`derivable_sound\` theorem transfers a target
derivation to this predicate. Evaluating it at the original
goal yields the reverse implication.

\`derivable_iff_of_goal_local_lifts\` composes with the unconditional
forward theorem. The separate
\`decideGoalPruned_iff_of_goal_local_lifts\` composes with two
existing \`decideSourceGoalPruned_eq_true_iff\` theorems, subject
to complete finite source and target inventories, decidable
selected goal predicates, and the local-region premise.

The target \`LiteralNatPair = Nat × Nat\` is **infinite**.
A \`FiniteInventory (Nat × Nat)\` covering its entire type cannot be
constructed, so the generic executable finite-query equivalence
cannot simply be instantiated at that literal type. The
source-specific result below proves the **inductive derivability**
comparison, without claiming such a nonexistent inventory. A
bounded finite quotient or supported subtype would require its own
explicit fidelity proof and is left open.

## 3. Actual Nat.le_trans source fixture

The existing Boolean labels \`premiseAB\`, \`premiseBC\`,
\`conclusionAC\`, \`unused\` are interpreted at
\`(a,b,c)=(1,1,2)\` as \`1≤1\`, \`1≤2\`, \`1≤2\` and
\`True\`, respectively. The existing literal atom map sends
them to:

| Boolean label | Nat pair |
| --- | --- |
| premiseAB | (1,1) |
| premiseBC | (1,2) |
| conclusionAC | (1,2) |
| unused | (0,0) |

The *original* transitivity rule
\`[premiseAB,premiseBC]⇒conclusionAC\` remains unchanged.
The fixture adds a separate sound rule
\`[unused]⇒premiseAB\` and actual input facts
\`[unused,premiseBC]\`. All interpretations are valid:
\`True\`, \`1≤1\`, and \`1≤2\` have genuine Lean proofs.
The extra rule's typed \`InstantiatedApplication\` uses the
actual proof of reflexivity; its source label is not an
untrusted statement substituted for a proof.

For the selected source goal \`premiseAB\`, set

\[
K(y) \iff y=(1,1)\ \lor\ y=(0,0).
\]

It includes the selected goal and its only target prerequisite
\`(0,0)\`. The transitivity rule concludes at \`(1,2)\`, which
is outside the region; it cannot introduce a local back-edge.
The extra rule concludes at \`(1,1)\` and has its sole prerequisite
at \`(0,0)\`.

**Global fiber lifting fails:** \`premiseBC\` is a fact and has
the same literal pair \`(1,2)\` as \`conclusionAC\`, which
is not a source fact. The earlier global \`facts_lift\`
field therefore fails for this exact inventory.

**Goal-local lifting succeeds:** the only mapped input fact
inside \`K\` is \`unused\`, with a unique source preimage
at \`(0,0)\`. The only mapped rule concluding inside \`K\`
is the actual extra rule; \`premiseAB\` is its sole
conclusion-fiber preimage. All its prerequisites are covered.
The source \`local_fiber_liftable\` records these
facts, while \`global_fiber_lift_fails\` records the hostile
condition.

The selected source goal is genuinely derived through one
rule application using the input \`unused\`, not merely assumed
as a fact. \`selected_goal_derivable_iff\` then identifies its
source and target derivability, preserving the failure of
unrelated global lifting.

The source also constructs a proof-bearing list of the two
rules and the two facts, with the exact \`eraseApplications\`
and \`eraseFacts\` correspondences. This is a typed
source-mathematical fixture, not a claim that raw Lean.Expr
proof arguments have been automatically decoded.

## 4. Independent finite reference and hostile cases

An independent ephemeral **Python** reference model enumerated all
4 maps of two source atoms to two target atoms; all 256 subsets
of the eight possible two-atom conjunctive rules; all 4 input-fact
sets; and all 4 possible target keep predicates:
**16,384 finite systems**. Exactly **10,128** satisfied the
local lifting conditions. The **6,944** selected-goal comparisons
among those systems yielded **zero** reversibility
contradictions; unconditional forward inference also had zero
failures. In **3,184** systems the local conditions held while
the global lifting conditions failed.

The concrete \`Nat.le_trans\` fixture above was checked by a
separate Python finite-closure comparison:
source and target goal derivability were true; its local
fact/rule/backward-closure conditions were true; its global
fact and rule lifting conditions were false. This reference
check does not execute Lean or prove the source-to-Python model
refinement; it is bounded counterexample screening only.

Negative controls retained in source: collision of two
abstract labels at \`(1,2)\`, failed global fact saturation,
discarded transitivity conclusion outside \`K\`, and preservation
of every conjunctive premise. Do not reclassify a source-label
collision as theorem falsity or infer an automatic globally
applicable inverse representation.

## 5. Exact source dependencies, trust and next obligation

The new file imports
\`FiniteFiberLiftedInference.lean\`, blob
\`48bab1d425a4cf89d4daf122753bf4857ed25f9c\`.
Its source predecessor
\`NoninjectiveNatLeTransTransport.lean\`, blob
\`004b43ddafe549886b664d0d27587547dd7227e9\`,
supplies the pointwise \`Nat.le_trans\` comparison and
unconditional forward transport. The original scoped proof
carrier \`InstantiatedRuleCertificates.lean\`, blob
\`8a947b13ef0f4fdca9127620d11a99870d4b121a\`,
supplies the actual typed rule and fact model.
The source is pinned to Lean \`v4.34.1\` by the repository's
\`lean-toolchain\` file.

All new declarations are **SOURCE_PROOF_CANDIDATE**.
Git publication and blob readback are separately recorded in
the verification issue. Lean compilation, actual \`MetaM\`
execution, fresh kernel replay, transitive axiom auditing,
whole-import proof acceptance, semantic \`Lean.Expr\` reification,
and general SAT/ETH or AI performance claims are **NOT_RUN /
NOT_PROVED / NOT_MEASURED** as applicable.

The next mathematical obligation is to **compile the complete
source-bound import closure and reconcile all declaration types**,
then carry out fresh kernel replay and transitive axiom audit.
Only then may an authorized checker test the original local
proof-expression extraction and produce source-bound typed
proof witnesses. Separately, a finite quotient of the literal
Nat-pair target is needed before instantiating the fully
executable Boolean query comparison on that particular example.

Related tracking: [math#1635](https://github.com/grwtsk/math/issues/1635),
[math#1631](https://github.com/grwtsk/math/issues/1631), and
[Noeaaeue#406](https://github.com/grwtsk/noeaaeue/issues/406).
