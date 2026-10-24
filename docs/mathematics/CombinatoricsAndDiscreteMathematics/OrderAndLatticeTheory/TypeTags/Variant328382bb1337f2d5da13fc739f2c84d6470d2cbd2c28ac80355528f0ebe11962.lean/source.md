# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.TypeTags.Variant328382bb1337f2d5da13fc739f2c84d6470d2cbd2c28ac80355528f0ebe11962

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ac5046b1abf0cf51d12d09a19a2e02fb9fa763c` · SHA-256 `dff0772f18df378fb184b45685a37ebaaa4e0f42f969bca6f47d4c8a4b16f9a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.WithBot.Variantca68a280e9452cca8452519fd49f6ec6617a9446f996f913ff647a7b5e8128ae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca68a280e9452cca8452519fd49f6ec6617a9446f996f913ff647a7b5e8128ae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.WithBot.Variantca68a280e9452cca8452519fd49f6ec6617a9446f996f913ff647a7b5e8128ae","mathematical_subject":"Algebra.OrderTheory","original_sha256":"ca68a280e9452cca8452519fd49f6ec6617a9446f996f913ff647a7b5e8128ae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/TypeTags.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Simon Hudon, Yury Kudryashov
-/
import Mathlib.Order.Notation

/-!
# Order-related type synonyms

In this file we define `WithBot`, `WithTop`, `ENat`, and `PNat`.
The definitions were moved to this file without any theory
so that, e.g., `Data/Countable/Basic` can prove `Countable ENat`
without exploding its imports.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.WithBot.Variantca68a280e9452cca8452519fd49f6ec6617a9446f996f913ff647a7b5e8128ae

variable {α : Type*}

/-- Attach `⊥` to a type. -/
def WithBot (α : Type*) := Option α

namespace WithBot

instance [Repr α] : Repr (WithBot α) :=
  ⟨fun o _ =>
    match o with
    | none => "⊥"
    | some a => "↑" ++ repr a⟩

/-- The canonical map from `α` into `WithBot α` -/
@[coe, match_pattern] def some : α → WithBot α :=
  Option.some

instance coe : Coe α (WithBot α) :=
  ⟨some⟩

instance bot : Bot (WithBot α) :=
  ⟨none⟩

instance inhabited : Inhabited (WithBot α) :=
  ⟨⊥⟩

/-- Recursor for `WithBot` using the preferred forms `⊥` and `↑a`. -/
@[elab_as_elim, induction_eliminator, cases_eliminator]
def recBotCoe {C : WithBot α → Sort*} (bot : C ⊥) (coe : ∀ a : α, C a) : ∀ n : WithBot α, C n
  | ⊥ => bot
  | (a : α) => coe a

@[simp]
theorem recBotCoe_bot {C : WithBot α → Sort*} (d : C ⊥) (f : ∀ a : α, C a) :
    @recBotCoe _ C d f ⊥ = d :=
  rfl

@[simp]
theorem recBotCoe_coe {C : WithBot α → Sort*} (d : C ⊥) (f : ∀ a : α, C a) (x : α) :
    @recBotCoe _ C d f ↑x = f x :=
  rfl

end WithBot

--TODO(Mario): Construct using order dual on `WithBot`
/-- Attach `⊤` to a type. -/
def WithTop (α : Type*) :=
  Option α

namespace WithTop

instance [Repr α] : Repr (WithTop α) :=
  ⟨fun o _ =>
    match o with
    | none => "⊤"
    | some a => "↑" ++ repr a⟩

/-- The canonical map from `α` into `WithTop α` -/
@[coe, match_pattern] def some : α → WithTop α :=
  Option.some

instance coeTC : CoeTC α (WithTop α) :=
  ⟨some⟩

instance top : Top (WithTop α) :=
  ⟨none⟩

instance inhabited : Inhabited (WithTop α) :=
  ⟨⊤⟩

/-- Recursor for `WithTop` using the preferred forms `⊤` and `↑a`. -/
@[elab_as_elim, induction_eliminator, cases_eliminator]
def recTopCoe {C : WithTop α → Sort*} (top : C ⊤) (coe : ∀ a : α, C a) : ∀ n : WithTop α, C n
  | none => top
  | Option.some a => coe a

@[simp]
theorem recTopCoe_top {C : WithTop α → Sort*} (d : C ⊤) (f : ∀ a : α, C a) :
    @recTopCoe _ C d f ⊤ = d :=
  rfl

@[simp]
theorem recTopCoe_coe {C : WithTop α → Sort*} (d : C ⊤) (f : ∀ a : α, C a) (x : α) :
    @recTopCoe _ C d f ↑x = f x :=
  rfl

end WithTop
```
