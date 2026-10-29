-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variantc1b0620dc1e286b8b5d82beb6e93e7f781bcb8800920a0bc1246718331b2b31c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c1b0620dc1e286b8b5d82beb6e93e7f781bcb8800920a0bc1246718331b2b31c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Lemmas.Variantc1b0620dc1e286b8b5d82beb6e93e7f781bcb8800920a0bc1246718331b2b31c","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"c1b0620dc1e286b8b5d82beb6e93e7f781bcb8800920a0bc1246718331b2b31c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Internal/Do/Order/Instances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Std.Internal.Do.Order.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variantc1b0620dc1e286b8b5d82beb6e93e7f781bcb8800920a0bc1246718331b2b31c

public section

/-!
# Algebraic typeclass instances for `CompleteLattice`

The order `⊑` is reflexive, transitive and antisymmetric, and meet and join are commutative,
associative and idempotent monoid operations with units `⊤` and `⊥`. These instances expose that
structure to the generic algebra in `Std` (`Std.Commutative`, `Std.Associative`, `Trans`, ...).
-/

namespace Std.Internal.Do.CompleteLattice

open Lean.Order PartialOrder

instance [CompleteLattice l] : Std.Refl (α := l) (· ⊑ ·) := ⟨fun _ => rel_refl⟩
instance [CompleteLattice l] : Trans (· ⊑ · : l → l → Prop) (· ⊑ ·) (· ⊑ ·) := ⟨rel_trans⟩
instance [CompleteLattice l] : Std.Antisymm (α := l) (· ⊑ ·) := ⟨fun _ _ => rel_antisymm⟩

instance [CompleteLattice l] : Std.Commutative (α := l) (· ⊓ ·) := ⟨fun _ _ => meet_comm⟩
instance [CompleteLattice l] : Std.Commutative (α := l) (· ⊔ ·) := ⟨fun _ _ => join_comm⟩
instance [CompleteLattice l] : Std.Associative (α := l) (· ⊓ ·) := ⟨fun _ _ _ => meet_assoc⟩
instance [CompleteLattice l] : Std.Associative (α := l) (· ⊔ ·) := ⟨fun _ _ _ => join_assoc⟩
instance [CompleteLattice l] : Std.IdempotentOp (α := l) (· ⊓ ·) := ⟨fun _ => meet_self⟩
instance [CompleteLattice l] : Std.IdempotentOp (α := l) (· ⊔ ·) := ⟨fun _ => join_self⟩
instance [CompleteLattice l] : Std.LeftIdentity (· ⊓ ·) (⊤ : l) where
instance [CompleteLattice l] : Std.RightIdentity (· ⊓ ·) (⊤ : l) where
instance [CompleteLattice l] : Std.LeftIdentity (· ⊔ ·) (⊥ : l) where
instance [CompleteLattice l] : Std.RightIdentity (· ⊔ ·) (⊥ : l) where
instance [CompleteLattice l] : Std.LawfulIdentity (· ⊓ ·) (⊤ : l) where
  left_id _ := top_meet
  right_id _ := meet_top
instance [CompleteLattice l] : Std.LawfulIdentity (· ⊔ ·) (⊥ : l) where
  left_id _ := bot_join
  right_id _ := join_bot

end Std.Internal.Do.CompleteLattice
