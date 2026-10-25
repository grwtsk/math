# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Pi.Variant9ab6d2775c904d4f7c5a2ef5411a777d878311c515c23d38cf4cdada7a98cf7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f38e1a973ea1d01b0deb888893e7eaf02852d2d` · SHA-256 `d8f187c83d3ce1e49f724d2b1267698a59f583abbb8c5274703ced519b2fb14e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FintypeArrow.Variant9fc81df8e5b65b90c705008e1a4f404c2f0bf778e117757747f728d8f2bb7cb3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9fc81df8e5b65b90c705008e1a4f404c2f0bf778e117757747f728d8f2bb7cb3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.FintypeArrow.Variant9fc81df8e5b65b90c705008e1a4f404c2f0bf778e117757747f728d8f2bb7cb3","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9fc81df8e5b65b90c705008e1a4f404c2f0bf778e117757747f728d8f2bb7cb3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Logic/Encodable/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Vector.Basic
import Mathlib.Logic.Equiv.Finset

/-!
# Encodability of Pi types

This file provides instances of `Encodable` for types of vectors and (dependent) functions:

* `Encodable.List.Vector.encodable`: vectors of length `n` (represented by lists) are encodable
* `Encodable.finArrow`: vectors of length `n` (represented by `Fin`-indexed functions) are encodable
* `Encodable.fintypeArrow`, `Encodable.fintypePi`: (dependent) functions with
  finite domain and countable codomain are encodable
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FintypeArrow.Variant9fc81df8e5b65b90c705008e1a4f404c2f0bf778e117757747f728d8f2bb7cb3

open List (Vector)
open Nat List

namespace Encodable

variable {α : Type*}

/-- If `α` is encodable, then so is `Vector α n`. -/
instance List.Vector.encodable [Encodable α] {n} : Encodable (List.Vector α n) :=
  Subtype.encodable

/-- If `α` is countable, then so is `Vector α n`. -/
instance List.Vector.countable [Countable α] {n} : Countable (List.Vector α n) :=
  Subtype.countable

/-- If `α` is encodable, then so is `Fin n → α`. -/
instance finArrow [Encodable α] {n} : Encodable (Fin n → α) :=
  ofEquiv _ (Equiv.vectorEquivFin _ _).symm

instance finPi (n) (π : Fin n → Type*) [∀ i, Encodable (π i)] : Encodable (∀ i, π i) :=
  ofEquiv _ (Equiv.piEquivSubtypeSigma (Fin n) π)

-- TODO: Unify with `fintypePi` and find a better name
/-- When `α` is finite and `β` is encodable, `α → β` is encodable too. Because the encoding is not
unique, we wrap it in `Trunc` to preserve computability. -/
def fintypeArrow (α : Type*) (β : Type*) [DecidableEq α] [Fintype α] [Encodable β] :
    Trunc (Encodable (α → β)) :=
  (Fintype.truncEquivFin α).map fun f =>
    Encodable.ofEquiv (Fin (Fintype.card α) → β) <| Equiv.arrowCongr f (Equiv.refl _)

/-- When `α` is finite and all `π a` are encodable, `Π a, π a` is encodable too. Because the
encoding is not unique, we wrap it in `Trunc` to preserve computability. -/
def fintypePi (α : Type*) (π : α → Type*) [DecidableEq α] [Fintype α] [∀ a, Encodable (π a)] :
    Trunc (Encodable (∀ a, π a)) :=
  (Fintype.truncEncodable α).bind fun a =>
    (@fintypeArrow α (Σa, π a) _ _ (@Sigma.encodable _ _ a _)).bind fun f =>
      Trunc.mk <|
        @Encodable.ofEquiv _ _ (@Subtype.encodable _ _ f _)
          (Equiv.piEquivSubtypeSigma α π)

/-- If `α` and `β` are encodable and `α` is a fintype, then `α → β` is encodable as well. -/
instance fintypeArrowOfEncodable {α β : Type*} [Encodable α] [Fintype α] [Encodable β] :
    Encodable (α → β) :=
  ofEquiv (Fin (Fintype.card α) → β) <| Equiv.arrowCongr fintypeEquivFin (Equiv.refl _)

end Encodable
```
