/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.TheoreticalQualification
import Mathlib.Data.Set.Basic

/-!
# Theory-relative proof and model qualification

Cohen's 1963 continuum-hypothesis independence result, in conjunction
with Gödel's earlier constructibility result, motivates *separating*
syntax, theory assumptions and model evidence. The statements below are
a general soundness argument: an actual model of Γ with φ and another
model of Γ with ¬φ prevent sound derivations of either conclusion.

The existence and trustworthiness of either model, the soundness of a
concrete formal calculus and its base theory, and any relative consistency
construction are explicit **inputs**, not theorems established here.
There is no forcing construction and no claim that RH or primitive
Dirichlet GRH is independent, undecidable, proved or refuted.

Primary historical provenance: P. J. Cohen, The Independence of the
Continuum Hypothesis, PNAS 50 (1963), 1143–1148,
DOI 10.1073/pnas.50.6.1143; Gödel, The Consistency of the Axiom of
Choice and of the Generalized Continuum Hypothesis (1940).

Consumer: math #1813; proof-dependency qualification for math #1812,
HS #2 and harness #76. The existing TheoreticalQualification module
already establishes that a conditional implication is not a proof of
its consequent. This file does not weaken that rule.

SOURCE_CANDIDATE. Lean/kernel/axiom review NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.TwoModelQualification

universe u v

/-- An interpretation with a genuine negation semantics. The field
`holds_negate` is a hypothesis about an actual interpretation, not
a source-certified axiom or a constructed forcing extension. -/
structure Semantics (Sentence : Type u) (World : Type v) where
  holds : World → Sentence → Prop
  negate : Sentence → Sentence
  holds_negate : ∀ w φ, holds w (negate φ) ↔ ¬ holds w φ

variable {Sentence : Type u} {World : Type v}

/-- Every supplied premise is satisfied in a specified semantic world. -/
def IsModel (S : Semantics Sentence World)
    (Γ : Set Sentence) (w : World) : Prop :=
  ∀ φ ∈ Γ, S.holds w φ

/-- Semantic consequence is tested over all models of *this* theory. -/
def Entails (S : Semantics Sentence World)
    (Γ : Set Sentence) (φ : Sentence) : Prop :=
  ∀ w, IsModel S Γ w → S.holds w φ

/-- An actual sound deduction relation is supplied separately from a model. -/
def IsSound (S : Semantics Sentence World)
    (Derives : Set Sentence → Sentence → Prop) : Prop :=
  ∀ Γ φ, Derives Γ φ → Entails S Γ φ

/-- The two models are explicit witnesses. Their existence is the hard
metamathematical ingredient in an independence argument, not an
inference from an unsuccessful proof search or two heuristic scores. -/
structure TwoModelWitness (S : Semantics Sentence World)
    (Γ : Set Sentence) (φ : Sentence) where
  trueWorld : World
  falseWorld : World
  trueModels : IsModel S Γ trueWorld
  falseModels : IsModel S Γ falseWorld
  trueAt : S.holds trueWorld φ
  falseAt : ¬ S.holds falseWorld φ

/-- A countermodel blocks a sound syntactic proof of a specified sentence. -/
theorem not_derivable_of_countermodel
    (S : Semantics Sentence World)
    (Derives : Set Sentence → Sentence → Prop)
    (hSound : IsSound S Derives)
    (Γ : Set Sentence) (φ : Sentence) (w : World)
    (hModel : IsModel S Γ w) (hFalse : ¬ S.holds w φ) :
    ¬ Derives Γ φ := by
  intro hDerives
  exact hFalse (hSound Γ φ hDerives w hModel)

/-- A model where φ holds blocks a sound proof of its negation. -/
theorem not_negation_derivable_of_true_model
    (S : Semantics Sentence World)
    (Derives : Set Sentence → Sentence → Prop)
    (hSound : IsSound S Derives)
    (Γ : Set Sentence) (φ : Sentence) (w : World)
    (hModel : IsModel S Γ w) (hTrue : S.holds w φ) :
    ¬ Derives Γ (S.negate φ) := by
  intro hDerives
  have hNeg : S.holds w (S.negate φ) :=
    hSound Γ (S.negate φ) hDerives w hModel
  exact (S.holds_negate w φ).mp hNeg hTrue

/-- The two-model form of syntactic non-derivability, conditional on
soundness and on BOTH witnesses. No models of ZFC or RH are built here. -/
theorem neither_derivable_of_two_models
    (S : Semantics Sentence World)
    (Derives : Set Sentence → Sentence → Prop)
    (hSound : IsSound S Derives)
    (Γ : Set Sentence) (φ : Sentence)
    (witness : TwoModelWitness S Γ φ) :
    ¬ Derives Γ φ ∧ ¬ Derives Γ (S.negate φ) := by
  constructor
  · exact not_derivable_of_countermodel
      S Derives hSound Γ φ witness.falseWorld
      witness.falseModels witness.falseAt
  · exact not_negation_derivable_of_true_model
      S Derives hSound Γ φ witness.trueWorld
      witness.trueModels witness.trueAt

/-- An unsuccessful bounded or untrusted search cannot logically refute
its target, even if it always returns the Boolean value false. -/
theorem unsuccessful_search_cannot_refute_truth :
    ¬ (∀ (search : Prop → Bool) (p : Prop), search p = false → ¬ p) := by
  intro claim
  have hFalse : ¬ True := claim (fun _ => false) True rfl
  exact hFalse trivial

/-- Reuse the existing premise-discharge counterexample: a proof of an
implication does not, by itself, supply a proof of its consequent. -/
theorem conditional_is_not_absolute :
    ¬ (∀ P Q : Prop, (P → Q) → Q) :=
  GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.TheoreticalQualification.conditional_is_not_unconditional

end GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.TwoModelQualification
