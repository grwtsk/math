# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PropEncodable.Variant0570793d41ccad89a472df090a25f0d7613f83f58d33f623b45f23b2a11d76c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `522bfd524de9290c18d080e00a37a36d569e7581` · SHA-256 `e89bb054b7b30c3150e5967252fbcf5ecbed401f5894b1fdefa423ee09be9cea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PropForm.Variant9d1a0f84be4a3c2102bbefad2ac25d59a094c6e0c75a60a95f28b1b708e8f83c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9d1a0f84be4a3c2102bbefad2ac25d59a094c6e0c75a60a95f28b1b708e8f83c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.PropForm.Variant9d1a0f84be4a3c2102bbefad2ac25d59a094c6e0c75a60a95f28b1b708e8f83c","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9d1a0f84be4a3c2102bbefad2ac25d59a094c6e0c75a60a95f28b1b708e8f83c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Archive/Examples/PropEncodable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad
-/
module

public import Mathlib.Data.W.Basic
public import Mathlib.Data.Fin.VecNotation

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

The auxiliary constructions are private, since their only purpose is to show encodability.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PropForm.Variant9d1a0f84be4a3c2102bbefad2ac25d59a094c6e0c75a60a95f28b1b708e8f83c

namespace PropEncodable

/-- Propositional formulas with labels from `α`. -/
public inductive PropForm (α : Type*)
  | var : α → PropForm α
  | not : PropForm α → PropForm α
  | and : PropForm α → PropForm α → PropForm α
  | or : PropForm α → PropForm α → PropForm α

namespace PropForm

def Constructors (α : Type*) :=
  α ⊕ (Unit ⊕ (Unit ⊕ Unit))

local notation "cvar " a => Sum.inl a

local notation "cnot" => Sum.inr (Sum.inl Unit.unit)

local notation "cand" => Sum.inr (Sum.inr (Sum.inr Unit.unit))

local notation "cor" => Sum.inr (Sum.inr (Sum.inl Unit.unit))

@[simp]
def arity (α : Type*) : Constructors α → Nat
  | cvar _ => 0
  | cnot => 1
  | cand => 2
  | cor => 2

variable {α : Type*}

instance : ∀ c : Unit ⊕ (Unit ⊕ Unit), NeZero (arity α (.inr c))
  | .inl () => ⟨one_ne_zero⟩
  | .inr (.inl ()) => ⟨two_ne_zero⟩
  | .inr (.inr ()) => ⟨two_ne_zero⟩

def f : PropForm α → WType fun i => Fin (arity α i)
  | var a => ⟨cvar a, ![]⟩
  | not p => ⟨cnot, ![f p]⟩
  | and p q => ⟨cand, ![f p, f q]⟩
  | or p q => ⟨cor, ![f p, f q]⟩

def finv : (WType fun i => Fin (arity α i)) → PropForm α
  | ⟨cvar a, _⟩ => var a
  | ⟨cnot, fn⟩ => not (finv (fn 0))
  | ⟨cand, fn⟩ => and (finv (fn 0)) (finv (fn 1))
  | ⟨cor, fn⟩ => or (finv (fn 0)) (finv (fn 1))

@[no_expose] public instance [Encodable α] : Encodable (PropForm α) :=
  haveI : Encodable (Constructors α) := inferInstanceAs <| Encodable (α ⊕ Unit ⊕ Unit ⊕ Unit)
  Encodable.ofLeftInverse f finv (by intro p; induction p <;> simp [f, finv, *])

end PropForm

end PropEncodable
```
