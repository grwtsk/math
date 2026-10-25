# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.Examples.Variant8ee94d125166c05bf5b0d1acafa7746383cc14631e3d566a6d76283d369db43a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb1bb68f0976ac8196f1b7f688a6e36e383f7bc4` · SHA-256 `fa0a79937ea573dd9385d0b726dbc6e1b64662304d531d79667c07835e4c0a6d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.ToyOrigin.Variante8f30332bbab381e9bec02a6a393ff85086392d0090fc6d2806952b3cb12c4c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e8f30332bbab381e9bec02a6a393ff85086392d0090fc6d2806952b3cb12c4c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.ToyOrigin.Variante8f30332bbab381e9bec02a6a393ff85086392d0090fc6d2806952b3cb12c4c1","mathematical_subject":"Logic.ProofTheory","original_sha256":"e8f30332bbab381e9bec02a6a393ff85086392d0090fc6d2806952b3cb12c4c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Atomize/Formal/Examples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Atomize.Formal.Boundary

/-!
# Closed toy presentation

**Architectural problem:** The abstract interfaces need small executable
examples that expose scope mistakes and internal references without pretending
to implement Lean's actual kernel rules.

**Important data and indices:** The toy presentation uses lists for universe and
local contexts, natural-number expression tags, indexed rule constructors, and
string constant names.  The examples include a root telescope, a binder-extended
telescope, and a fixed boundary.

**Type-enforced invariant:** The context action accepts only
`toyPresentation.JudgmentAt source`; identity and composition laws are fields of
the presentation.  A wrong-source package cannot be supplied to that action.

**Layer boundary:** Numeric expression tags and toy rules illustrate dependent
indexing only.  They are not a Lean expression codec, elaboration trace, or
concrete kernel adapter.

**Worked example:** `identityDerivation` represents the familiar proof of
`P → P`: its body uses a variable introduced in the extended local telescope,
and its lambda-introduction node returns to the empty root telescope.
`derivation` separately retains the internal constant `Project.helper`.

**Used by:** `Atomize.Formal.AxiomAudit` imports this module so all examples and
the recovery exports elaborate in the pinned project.

**Proof idea:** The toy context action rebuilds a judgment with the indexed
target telescope; destructing the source-membership proof makes identity
transport reflexive, while both sides of composition rebuild the same target.

**Equality notion:** The positive action laws and recovery examples use Lean
propositional equality of the toy records and inductive syntax.

**Boundary cases:** The root telescope may be empty.  The introduced body
variable is not counted as a root variable.  Boundary closure is demonstrated
only after `Project.helper` is explicitly placed in the fixed boundary.

**Validation consequence:** These fixtures catch index and accounting
regressions in M1a but cannot establish completeness for Lean or any later
atomization milestone.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.ToyOrigin.Variante8f30332bbab381e9bec02a6a393ff85086392d0090fc6d2806952b3cb12c4c1

namespace Atomize.Formal.Examples

open Atomize.Formal

private abbrev ToyJudgment := ScopedJudgment (List Nat) (List Nat) Nat

private abbrev ToyJudgmentAt (context : List Nat) :=
  ScopedJudgment.At (UniverseContext := List Nat) (Expr := Nat) context

private inductive ToyOrigin
  | hypothesis
  | introducedLocal
  | internalConstant
  deriving DecidableEq

private inductive ToyRuleKey
  | hypothesis
  | introducedLocal
  | constant
  | unary
  | lambdaIntro
  deriving DecidableEq

set_option linter.unusedVariables false in
private inductive ToyRule : {premises : List ToyJudgment} → ToyJudgment → Type
  | hypothesis (J : ToyJudgment) (root : Nat) : ToyRule (premises := []) J
  | introducedLocal (J : ToyJudgment) : ToyRule (premises := []) J
  | constant (J : ToyJudgment) (name : String) : ToyRule (premises := []) J
  | unary (premise conclusion : ToyJudgment) :
      ToyRule (premises := [premise]) conclusion
  | lambdaIntro (body conclusion : ToyJudgment) :
      ToyRule (premises := [body]) conclusion

private def toyRuleConstants :
    {premises : List ToyJudgment} → {conclusion : ToyJudgment} →
    ToyRule (premises := premises) conclusion → Finset String
  | _, _, .hypothesis _ _ => ∅
  | _, _, .introducedLocal _ => ∅
  | _, _, .constant _ name => {name}
  | _, _, .unary _ _ => ∅
  | _, _, .lambdaIntro _ _ => ∅

private def toyRuleRoots :
    {premises : List ToyJudgment} → {conclusion : ToyJudgment} →
    ToyRule (premises := premises) conclusion → Finset Nat
  | _, _, .hypothesis _ root => {root}
  | _, _, .introducedLocal _ => ∅
  | _, _, .constant _ _ => ∅
  | _, _, .unary _ _ => ∅
  | _, _, .lambdaIntro _ _ => ∅

private def toyRuleKey :
    {premises : List ToyJudgment} → {conclusion : ToyJudgment} →
    ToyRule (premises := premises) conclusion → ToyRuleKey
  | _, _, .hypothesis _ _ => .hypothesis
  | _, _, .introducedLocal _ => .introducedLocal
  | _, _, .constant _ _ => .constant
  | _, _, .unary _ _ => .unary
  | _, _, .lambdaIntro _ _ => .lambdaIntro

private def toyLeafOrigin? :
    {conclusion : ToyJudgment} →
    ToyRule (premises := []) conclusion → Option ToyOrigin
  | _, .hypothesis _ _ => some .hypothesis
  | _, .introducedLocal _ => some .introducedLocal
  | _, .constant _ _ => some .internalConstant

private inductive ToyCtxMorphism (source target : List Nat) : Type
  | mk

private def toyActJudgment
    {source target : List Nat}
    (_ : ToyCtxMorphism source target)
    (judgment : ToyJudgmentAt source) : ToyJudgmentAt target :=
  ⟨⟨judgment.1.universeContext, target, judgment.1.claim⟩, rfl⟩

private theorem toyActJudgment_id
    (context : List Nat)
    (judgment : ToyJudgmentAt context) :
    toyActJudgment (ToyCtxMorphism.mk : ToyCtxMorphism context context) judgment =
      judgment := by
  rcases judgment with ⟨⟨universeContext, localContext, claim⟩, hcontext⟩
  simp only at hcontext
  subst localContext
  rfl

private theorem toyActJudgment_comp
    {first second third : List Nat}
    (firstToSecond : ToyCtxMorphism first second)
    (secondToThird : ToyCtxMorphism second third)
    (judgment : ToyJudgmentAt first) :
    toyActJudgment
        (ToyCtxMorphism.mk : ToyCtxMorphism first third) judgment =
      toyActJudgment secondToThird (toyActJudgment firstToSecond judgment) := by
  rfl

private abbrev toyPresentation : KernelPresentation where
  UniverseContext := List Nat
  LocalContext := List Nat
  Expr := Nat
  ConstantName := String
  RootVariable := Nat
  LeafOrigin := ToyOrigin
  RuleKey := ToyRuleKey
  constantNameDecidableEq := inferInstance
  rootVariableDecidableEq := inferInstance
  leafOriginDecidableEq := inferInstance
  ruleKeyDecidableEq := inferInstance
  judgmentDecidableEq := inferInstance
  primitiveConstants := {"Eq.refl"}
  CtxMorphism := ToyCtxMorphism
  idMorphism := fun _ => .mk
  compMorphism := fun _ _ => .mk
  actJudgment := toyActJudgment
  actJudgment_id := toyActJudgment_id
  actJudgment_comp := toyActJudgment_comp
  UniverseSubstitution := fun _ _ => Unit
  LocalSubstitution := fun _ _ => Unit
  Rule := fun {premises} conclusion =>
    ToyRule (premises := premises) conclusion
  ruleConstantReferences := fun {premises} {conclusion} rule =>
    toyRuleConstants (premises := premises) (conclusion := conclusion) rule
  ruleRootVariables := fun {premises} {conclusion} rule =>
    toyRuleRoots (premises := premises) (conclusion := conclusion) rule
  ruleKey := fun {premises} {conclusion} rule =>
    toyRuleKey (premises := premises) (conclusion := conclusion) rule
  ruleContextMorphism := fun _ _ => .mk
  ruleUniverseSubstitution := fun _ _ => ()
  ruleLocalSubstitution := fun _ _ => ()
  leafOrigin? := toyLeafOrigin?

/-!
## Context action and the elementary `P → P` fixture

The natural numbers below are deliberately just stable expression labels.  The
dependent structure, rather than their numeric values, is what the example
tests.  `identityBody` lives under the locally introduced binder `[0]`, whereas
`identityConclusion` lives in the empty root telescope.
-/

private def propositionP : Nat := 100
private def boundP : Nat := 101
private def identityTerm : Nat := 102
private def identityType : Nat := 103

private def identityBody : ToyJudgment :=
  ⟨[0], [0], .hasType boundP propositionP⟩

private def identityConclusion : ToyJudgment :=
  ⟨[0], [], .hasType identityTerm identityType⟩

/-- The leaf variable is introduced by the lambda binder and is intentionally
not classified as a variable from the root telescope. -/
private def identityBodyLeaf : RawDer toyPresentation identityBody :=
  .node (.introducedLocal identityBody) .nil

/-- An abstract, indexed toy derivation of `P → P`: lambda introduction
discharges the locally introduced body variable and returns to the root scope. -/
private def identityDerivation : RawDer toyPresentation identityConclusion :=
  .node (.lambdaIntro identityBody identityConclusion) (.cons identityBodyLeaf .nil)

example : Eval (Comp identityDerivation) = identityDerivation :=
  eval_comp identityDerivation

example : identityDerivation.rootVariables = ∅ := by
  simp [identityDerivation, identityBodyLeaf, RawDer.rootVariables,
    RawDer.rootVariablesAll, toyPresentation, toyRuleRoots]

example : identityDerivation.leafOrigins = {.introducedLocal} := by
  native_decide

private def rootTelescopeJudgment : ToyJudgment :=
  ⟨[0], [7], .hasType 7 propositionP⟩

private def rootTelescopeLeaf : RawDer toyPresentation rootTelescopeJudgment :=
  .node (.hypothesis rootTelescopeJudgment 7) .nil

/-- In contrast with `identityBodyLeaf`, this leaf explicitly originates in the
root telescope and therefore contributes root-variable label `7`. -/
example : rootTelescopeLeaf.rootVariables = {7} := by
  native_decide

private def closedRootJudgment : ToyJudgment :=
  ⟨[0], [], .isType propositionP⟩

private def closedRootJudgmentAt : toyPresentation.JudgmentAt [] :=
  ⟨closedRootJudgment, rfl⟩

/-- Positive identity-law fixture for endpoint-indexed context action. -/
example :
    toyPresentation.actJudgment
        (toyPresentation.idMorphism []) closedRootJudgmentAt =
      closedRootJudgmentAt :=
  toyPresentation.actJudgment_id [] closedRootJudgmentAt

/-- Positive composition-law fixture.  Direct transport from `[]` to `[2]`
equals transport first through `[1]` and then to `[2]`. -/
example :
    toyPresentation.actJudgment
        (toyPresentation.compMorphism
          (ToyCtxMorphism.mk : ToyCtxMorphism [] [1])
          (ToyCtxMorphism.mk : ToyCtxMorphism [1] [2]))
        closedRootJudgmentAt =
      toyPresentation.actJudgment
        (ToyCtxMorphism.mk : ToyCtxMorphism [1] [2])
        (toyPresentation.actJudgment
          (ToyCtxMorphism.mk : ToyCtxMorphism [] [1])
          closedRootJudgmentAt) :=
  toyPresentation.actJudgment_comp
    (ToyCtxMorphism.mk : ToyCtxMorphism [] [1])
    (ToyCtxMorphism.mk : ToyCtxMorphism [1] [2])
    closedRootJudgmentAt

private def wrongSourceJudgment : ToyJudgment :=
  ⟨[0], [99], .isType propositionP⟩

private def wrongSourceJudgmentAt : toyPresentation.JudgmentAt [99] :=
  ⟨wrongSourceJudgment, rfl⟩

/-- Compile-fail-style negative fixture: the `fail_if_success` guard succeeds
only when Lean rejects applying an `[] → [2]` morphism to a judgment packaged at
source `[99]`. -/
example : True := by
  fail_if_success
    let _ := toyPresentation.actJudgment
      (ToyCtxMorphism.mk : ToyCtxMorphism [] [2])
      wrongSourceJudgmentAt
  trivial

private def premise : ToyJudgment := ⟨[0], [11], .hasType 7 0⟩
private def conclusion : ToyJudgment := ⟨[0], [11], .hasType 9 0⟩

private def internalLeaf : RawDer toyPresentation premise :=
  .node (.constant premise "Project.helper") .nil

private def derivation : RawDer toyPresentation conclusion :=
  .node (.unary premise conclusion) (.cons internalLeaf .nil)

example : Eval (Comp derivation) = derivation := eval_comp derivation

example : (Comp derivation).constantReferences = {"Project.helper"} := by
  native_decide

private theorem derivation_closed :
    BClosed (K := toyPresentation) {"Project.helper"} derivation := by
  simp [BClosed, derivation, internalLeaf, RawDer.constantReferences,
    RawDer.constantReferencesAll,
    toyPresentation, toyRuleConstants]

private def restrictedPlan : BTreePlan toyPresentation {"Project.helper"} conclusion :=
  CompB (K := toyPresentation) {"Project.helper"} derivation derivation_closed

example : Eval restrictedPlan.1 = derivation := by
  simp [restrictedPlan]

end Atomize.Formal.Examples
```
