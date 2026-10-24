-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CoequalizerRel.Variant0e12cb840f92c5d1c82371d43452209e68765eff1e8f0e2851a43924855b3c12","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0e12cb840f92c5d1c82371d43452209e68765eff1e8f0e2851a43924855b3c12","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.CoequalizerRel.Variant0e12cb840f92c5d1c82371d43452209e68765eff1e8f0e2851a43924855b3c12","mathematical_subject":"Logic.Foundations","original_sha256":"0e12cb840f92c5d1c82371d43452209e68765eff1e8f0e2851a43924855b3c12","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Logic/Function/Coequalizer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
import Mathlib.Logic.Function.Defs

/-!
# Coequalizer of a pair of functions

The coequalizer of two functions `f g : α → β` is the pair (`μ`, `p : β → μ`) that
satisfies the following universal property: Every function `u : β → γ`
with `u ∘ f = u ∘ g` factors uniquely via `p`.

In this file we define the coequalizer and provide the basic API.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CoequalizerRel.Variant0e12cb840f92c5d1c82371d43452209e68765eff1e8f0e2851a43924855b3c12

universe v

namespace Function

/-- The relation generating the equivalence relation used for defining `Function.coequalizer`. -/
inductive Coequalizer.Rel {α β : Type*} (f g : α → β) : β → β → Prop where
  | intro (x : α) : Rel f g (f x) (g x)

/-- The coequalizer of two functions `f g : α → β` is the pair (`μ`, `p : β → μ`) that
satisfies the following universal property: Every function `u : β → γ`
with `u ∘ f = u ∘ g` factors uniquely via `p`. -/
def Coequalizer {α : Type*} {β : Type v} (f g : α → β) : Type v :=
  Quot (Function.Coequalizer.Rel f g)

namespace Coequalizer

variable {α β : Type*} (f g : α → β)

/-- The canonical projection to the coequalizer. -/
def mk (x : β) : Coequalizer f g :=
  Quot.mk _ x

lemma condition (x : α) : mk f g (f x) = mk f g (g x) :=
  Quot.sound (.intro x)

lemma mk_surjective : Function.Surjective (mk f g) :=
  Quot.exists_rep

/-- Any map `u : β → γ` with `u ∘ f = u ∘ g` factors via `Function.Coequalizer.mk`. -/
def desc {γ : Type*} (u : β → γ) (hu : u ∘ f = u ∘ g) : Coequalizer f g → γ :=
  Quot.lift u (fun _ _ (.intro e) ↦ congrFun hu e)

@[simp] lemma desc_mk {γ : Type*} (u : β → γ) (hu : u ∘ f = u ∘ g) (x : β) :
    desc f g u hu (mk f g x) = u x :=
  rfl

end Function.Coequalizer
