/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.LeanExprConstantSpine
import GRWTSK.Combinatorics.GraphTheory.CheckedApplicationSoficBridge

/-!
# A bounded Lean.Expr -> instantiated Nat.le_trans rule -> certified sofic word

The input is an ACTUAL `Lean.Expr` application, not a theorem name or source
search hit. This deliberately narrow extractor accepts only a syntactically
exact application of `Nat.le_trans` with its three Nat parameters represented
by literal Nat expressions and its two original proof-expression arguments.
Universe levels, head constant, number of arguments, their order and implicit
parameter positions must match exactly; unsupported shapes are rejected.

Unlike `LeanExprConstantSpine`, the original two proof arguments may reference
local free variables. A separate MetaM observer requires their full enclosing
application to be type-correct in its actual local context, contain no metavars,
and have the expected `Nat.le a c` conclusion type. No `MetaM` observation is a
kernel or source-commit certificate, and the observer does not convert a raw
proof Expr into a globally reusable Lean proof.

The semantic instance below reconstructs the SAME `Nat.le_trans` application
rule with both premises, using the literal parameters. Its certified-sofic
consumer additionally REQUIRES typed Lean witnesses of both inequalities.
It does not pretend that Meta's observed local proof arguments have been
reified into such witnesses without a separate contextual proof extraction.
A source reference is never proof authority. No general Expr extractor, RH/NS
result, theorem acceptance or runtime refinement is claimed.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite

open Lean
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CheckedApplicationSoficBridge
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage

/-- The full *raw* expression constructor shape, with no implicit insertion. -/
def mkLiteralNatLeTrans (a b c : Nat) (hab hbc : Lean.Expr) : Lean.Expr :=
  .app (.app (.app (.app (.app (.const ``Nat.le_trans [])
      (.lit (.natVal a))) (.lit (.natVal b))) (.lit (.natVal c))) hab) hbc

/-- Its two proof arguments remain literal original Expr subterms, not strings. -/
structure LiteralNatLeTrans (source : Lean.Expr) where
  a : Nat
  b : Nat
  c : Nat
  hab : Lean.Expr
  hbc : Lean.Expr
  exact_source : source = mkLiteralNatLeTrans a b c hab hbc

/-- Decidable syntactic recognition: an unsupported or differently ordered
application returns `none`, without invoking Meta or a theorem oracle. -/
def parseLiteralNatLeTrans (source : Lean.Expr) :
    Option (LiteralNatLeTrans source) :=
  match source with
  | .app (.app (.app (.app (.app (.const _ _)
      (.lit (.natVal a))) (.lit (.natVal b))) (.lit (.natVal c))) hab) hbc =>
      if h : source = mkLiteralNatLeTrans a b c hab hbc then
        some ⟨a, b, c, hab, hbc, h⟩
      else none
  | _ => none

/-- The parser's accepted result is literally the ORIGINAL Expr. -/
theorem parsed_exact {source : Lean.Expr}
    (w : LiteralNatLeTrans source) :
    source = mkLiteralNatLeTrans w.a w.b w.c w.hab w.hbc :=
  w.exact_source

/-- The only locally supported theorem family has a fixed two-conjunct
premise list; neither implication can be dropped or swapped. -/
abbrev LiteralNatPair := Nat × Nat

def literalPairMeaning (p : LiteralNatPair) : Prop := p.1 ≤ p.2

def literalTransRule (a b c : Nat) : Rule LiteralNatPair :=
  ⟨[(a, b), (b, c)], (a, c)⟩

/-- A syntactically captured *instance* is re-expressed with a genuine
Lean consequence proof, using the same original Nat.le_trans theorem. -/
def LiteralNatLeTrans.toApplication {source : Lean.Expr}
    (w : LiteralNatLeTrans source) :
    InstantiatedApplication LiteralNatPair literalPairMeaning where
  rule := literalTransRule w.a w.b w.c
  consequence := by
    intro hp
    have hab : w.a ≤ w.b := hp (w.a, w.b) (by simp [literalTransRule])
    have hbc : w.b ≤ w.c := hp (w.b, w.c) (by simp [literalTransRule])
    exact Nat.le_trans hab hbc

/-- This is the exact rule expected by the preexisting certified-sofic
Nat-transitivity network, not a rule guessed from a nearby filename. -/
theorem literal_rule_matches_certified_network {source : Lean.Expr}
    (w : LiteralNatLeTrans source) :
    w.toApplication.rule =
      NatTransitivityExample.network.expectedRule w.a w.b w.c := rfl

/-- A real certified edge requires ACTUAL typed proofs of both premises.
The original raw `Expr` proof arguments are not silently coerced to these. -/
theorem literal_has_certified_edge {source : Lean.Expr}
    (w : LiteralNatLeTrans source)
    (hab : w.a ≤ w.b) (hbc : w.b ≤ w.c) :
    NatTransitivityExample.network.quantitative.sandwich.lower w.a w.b w.c :=
  ⟨hab, hbc⟩

/-- A one-letter certified sofic word is constructed only after the two
actual Lean proposition witnesses are supplied in the very same scope. -/
def LiteralNatLeTrans.toCertifiedWord {source : Lean.Expr}
    (w : LiteralNatLeTrans source)
    (hab : w.a ≤ w.b) (hbc : w.b ≤ w.c) :
    AppliedWord NatTransitivityExample.network w.a [w.b] w.c :=
  AppliedWord.ofWordPath NatTransitivityExample.network
    (WordPath.cons (literal_has_certified_edge w hab hbc)
      (WordPath.nil w.c))

/-- The original signed endpoint difference and its nonnegative bound now
come from the existing quantitative certified-path theorem, unchanged. -/
theorem literal_certified_source_return {source : Lean.Expr}
    (w : LiteralNatLeTrans source)
    (hab : w.a ≤ w.b) (hbc : w.b ≤ w.c) :
    ∃ defect allowance : ℝ,
      GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage.CertifiedTrace
        NatTransitivityExample.network.quantitative
        w.a [w.b] w.c defect allowance ∧
      NatTransitivityExample.network.quantitative.readout w.a =
        NatTransitivityExample.network.quantitative.readout w.c + defect ∧
      0 ≤ allowance ∧ |defect| ≤ allowance :=
  (w.toCertifiedWord hab hbc).exists_quantitative_return

/-- The accepted source Expr remains syntactically exact and the semantic
application has the correct TWO premises and the required conclusion. -/
theorem literal_shape_and_rule {source : Lean.Expr}
    (w : LiteralNatLeTrans source) :
    source = mkLiteralNatLeTrans w.a w.b w.c w.hab w.hbc ∧
    w.toApplication.rule = literalTransRule w.a w.b w.c :=
  ⟨w.exact_source, rfl⟩

/-- TYPE OBSERVATION ONLY. Meta checks the entire application, including
proofs in its ambient local context, and rejects unresolved metavariables.
`inferType` is used only AFTER `isTypeCorrect`; matching the type uses `isDefEq`.
This is not kernel acceptance or an authenticated pinned source binding. -/
def observeTypedLiteralNatLeTrans (source : Lean.Expr) :
    Lean.Meta.MetaM (Option (LiteralNatLeTrans source × Lean.Expr)) := do
  match parseLiteralNatLeTrans source with
  | none => return none
  | some witness =>
      if source.hasMVar then return none
      if !(← Lean.Meta.isTypeCorrect source) then return none
      let actualType ← Lean.Meta.inferType source
      let expectedType : Lean.Expr :=
        .app (.app (.const ``Nat.le []) (.lit (.natVal witness.a)))
          (.lit (.natVal witness.c))
      if ← Lean.Meta.isDefEq actualType expectedType then
        return some (witness, actualType)
      else
        return none

/-- Negative syntax controls: an arbitrary theorem name or local-variable
head is not mistaken for Nat.le_trans, even if search reports similarity. -/
theorem reject_unrelated_constant :
    parseLiteralNatLeTrans (.const ``Nat.zero []) = none := rfl

theorem reject_local_variable_head (id : Lean.FVarId) :
    parseLiteralNatLeTrans (.fvar id) = none := rfl

theorem reject_unresolved_meta_head (id : Lean.MVarId) :
    parseLiteralNatLeTrans (.mvar id) = none := rfl

/-- A name alone cannot bypass the missing two premise proofs: the consumer
is a theorem with both premises, not a proof from a source label. -/
theorem nat_literal_consumer (a b c : Nat)
    (hab : a ≤ b) (hbc : b ≤ c) : a ≤ c :=
  Nat.le_trans hab hbc

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite
