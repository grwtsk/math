# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FromTypes.Variantdf0350f515cabd5127eaa3ba7bb093d1e26fef4db618334304e597fdcb3595ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eef4205167d780f8d1f7dd7960a8b8ab56f20cc1` · SHA-256 `2ea7567b66547ed5215139e15cf94dba1044be81be276664e3f52e42a1d7fcfa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FromTypes.Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.FromTypes.Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70","mathematical_subject":"Logic.Foundations","original_sha256":"f326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Logic/Function/FromTypes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Brendan Murphy. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Brendan Murphy
-/

import Mathlib.Data.Fin.VecNotation

/-! # Function types of a given heterogeneous arity

This provides `Function.FromTypes`, such that `FromTypes ![α, β] τ = α → β → τ`.
Note that it is often preferable to use `((i : Fin n) → p i) → τ` in place of `FromTypes p τ`.

## Main definitions

* `Function.FromTypes p τ`: `n`-ary function `p 0 → p 1 → ... → p (n - 1) → β`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FromTypes.Variantf326074208d0655e93c9a60ab50cbbb278f10936061b544568ebffe54e3b4b70

universe u

namespace Function

open Matrix (vecCons vecHead vecTail vecEmpty)

/-- The type of `n`-ary functions `p 0 → p 1 → ... → p (n - 1) → τ`. -/
def FromTypes : {n : ℕ} → (Fin n → Type u) → Type u → Type u
  | 0    , _, τ => τ
  | n + 1, p, τ => vecHead p → @FromTypes n (vecTail p) τ

theorem fromTypes_zero (p : Fin 0 → Type u) (τ : Type u) : FromTypes p τ = τ := rfl

theorem fromTypes_nil (τ : Type u) : FromTypes ![] τ = τ := fromTypes_zero ![] τ

-- prefer `fromTypes_cons` when it (syntactically) applies
theorem fromTypes_succ {n} (p : Fin (n + 1) → Type u) (τ : Type u) :
    FromTypes p τ = (vecHead p → FromTypes (vecTail p) τ) := rfl

theorem fromTypes_cons {n} (α : Type u) (p : Fin n → Type u) (τ : Type u) :
    FromTypes (vecCons α p) τ = (α → FromTypes p τ) := fromTypes_succ _ τ

/-- The definitional equality between `0`-ary heterogeneous functions into `τ` and `τ`. -/
@[simps!]
def fromTypes_zero_equiv (p : Fin 0 → Type u) (τ : Type u) :
    FromTypes p τ ≃ τ := Equiv.refl _

/-- The definitional equality between `![]`-ary heterogeneous functions into `τ` and `τ`. -/
@[simps!]
def fromTypes_nil_equiv (τ : Type u) : FromTypes ![] τ ≃ τ :=
  fromTypes_zero_equiv ![] τ

/-- The definitional equality between `p`-ary heterogeneous functions into `τ`
  and function from `vecHead p` to `(vecTail p)`-ary heterogeneous functions into `τ`. -/
@[simps!]
def fromTypes_succ_equiv {n} (p : Fin (n + 1) → Type u) (τ : Type u) :
    FromTypes p τ ≃ (vecHead p → FromTypes (vecTail p) τ) := Equiv.refl _

/-- The definitional equality between `(vecCons α p)`-ary heterogeneous functions into `τ`
  and function from `α` to `p`-ary heterogeneous functions into `τ`. -/
@[simps!]
def fromTypes_cons_equiv {n} (α : Type u) (p : Fin n → Type u) (τ : Type u) :
    FromTypes (vecCons α p) τ ≃ (α → FromTypes p τ) := fromTypes_succ_equiv _ _

namespace FromTypes

/-- Constant `n`-ary function with value `t`. -/
def const : {n : ℕ} → (p : Fin n → Type u) → {τ : Type u} → (t : τ) → FromTypes p τ
  | 0,     _, _, t => t
  | n + 1, p, τ, t => fun _ => @const n (vecTail p) τ t

@[simp]
theorem const_zero (p : Fin 0 → Type u) {τ : Type u} (t : τ) : const p t = t :=
  rfl

@[simp]
theorem const_succ {n} (p : Fin (n + 1) → Type u) {τ : Type u} (t : τ) :
    const p t = fun _ => const (vecTail p) t := rfl

theorem const_succ_apply {n} (p : Fin (n + 1) → Type u) {τ : Type u} (t : τ)
    (x : p 0) : const p t x = const (vecTail p) t := rfl

instance inhabited {n} {p : Fin n → Type u} {τ} [Inhabited τ] :
    Inhabited (FromTypes p τ) := ⟨const p default⟩

end FromTypes

end Function
```
