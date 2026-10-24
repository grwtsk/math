# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PropEncodable.Variantd8895a3ea34213829c3f08173409d670037ab9b3267f6be0d0c52c1b43077fc0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e724e5f18415d6faf033c1dca98f30ed0a885b15` · SHA-256 `273b8bbf66fca4e31d70777794d6b4677165a2453ee6e74f25c9d7b35fc0d7e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PropForm.Variant4e807950358111b97a204e50a025e7cd547becb733b98c6d2c7abc5b8393449f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e807950358111b97a204e50a025e7cd547becb733b98c6d2c7abc5b8393449f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.PropForm.Variant4e807950358111b97a204e50a025e7cd547becb733b98c6d2c7abc5b8393449f","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"4e807950358111b97a204e50a025e7cd547becb733b98c6d2c7abc5b8393449f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Archive/Examples/PropEncodable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad
-/
import Mathlib.Data.W.Basic
import Mathlib.Data.Fin.VecNotation

/-!
# W types

The file `Mathlib/Data/W/Basic.lean` shows that if `α` is an encodable fintype and for every
`a : α`, `β a` is encodable, then `W β` is encodable.

As an example of how this can be used, we show that the type of propositional formulas with
variables labeled from an encodable type is encodable.

The strategy is to define a type of labels corresponding to the constructors.
From the definition (using `sum`, `unit`, and an encodable type), Lean can infer
that it is encodable. We then define a map from propositional formulas to the
corresponding `Wfin` type, and show that map has a left inverse.

We mark the auxiliary constructions `private`, since their only purpose is to
show encodability.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PropForm.Variant4e807950358111b97a204e50a025e7cd547becb733b98c6d2c7abc5b8393449f

namespace PropEncodable

/-- Propositional formulas with labels from `α`. -/
inductive PropForm (α : Type*)
  | var : α → PropForm α
  | not : PropForm α → PropForm α
  | and : PropForm α → PropForm α → PropForm α
  | or : PropForm α → PropForm α → PropForm α

namespace PropForm

private def Constructors (α : Type*) :=
  α ⊕ (Unit ⊕ (Unit ⊕ Unit))

local notation "cvar " a => Sum.inl a

local notation "cnot" => Sum.inr (Sum.inl Unit.unit)

local notation "cand" => Sum.inr (Sum.inr (Sum.inr Unit.unit))

local notation "cor" => Sum.inr (Sum.inr (Sum.inl Unit.unit))

@[simp]
private def arity (α : Type*) : Constructors α → Nat
  | cvar _ => 0
  | cnot => 1
  | cand => 2
  | cor => 2

variable {α : Type*}

instance : ∀ c : Unit ⊕ (Unit ⊕ Unit), NeZero (arity α (.inr c))
  | .inl () => ⟨one_ne_zero⟩
  | .inr (.inl ()) => ⟨two_ne_zero⟩
  | .inr (.inr ()) => ⟨two_ne_zero⟩

private def f : PropForm α → WType fun i => Fin (arity α i)
  | var a => ⟨cvar a, ![]⟩
  | not p => ⟨cnot, ![f p]⟩
  | and p q => ⟨cand, ![f p, f q]⟩
  | or p q => ⟨cor, ![f p, f q]⟩

private def finv : (WType fun i => Fin (arity α i)) → PropForm α
  | ⟨cvar a, _⟩ => var a
  | ⟨cnot, fn⟩ => not (finv (fn 0))
  | ⟨cand, fn⟩ => and (finv (fn 0)) (finv (fn 1))
  | ⟨cor, fn⟩ => or (finv (fn 0)) (finv (fn 1))

instance [Encodable α] : Encodable (PropForm α) :=
  haveI : Encodable (Constructors α) := by unfold Constructors; infer_instance
  Encodable.ofLeftInverse f finv (by intro p; induction p <;> simp [f, finv, *])

end PropForm

end PropEncodable
```
