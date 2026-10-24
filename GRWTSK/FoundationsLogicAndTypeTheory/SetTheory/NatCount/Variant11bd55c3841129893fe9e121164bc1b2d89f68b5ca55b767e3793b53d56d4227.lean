-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CountLeCardinal.Variant9106a6eacb42d660359e2c5cf2a9a65bd9dfbfc7a6531131a89d71517840e7a7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9106a6eacb42d660359e2c5cf2a9a65bd9dfbfc7a6531131a89d71517840e7a7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.CountLeCardinal.Variant9106a6eacb42d660359e2c5cf2a9a65bd9dfbfc7a6531131a89d71517840e7a7","mathematical_subject":"Logic.SetTheory","original_sha256":"9106a6eacb42d660359e2c5cf2a9a65bd9dfbfc7a6531131a89d71517840e7a7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/SetTheory/Cardinal/NatCount.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Vladimir Goryachev. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Vladimir Goryachev
-/
module

public import Mathlib.Data.Nat.Count
public import Mathlib.Data.Set.Card

/-!
# Counting on ℕ

This file provides lemmas about the relation of `Nat.count` with cardinality functions.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CountLeCardinal.Variant9106a6eacb42d660359e2c5cf2a9a65bd9dfbfc7a6531131a89d71517840e7a7

public section


namespace Nat
open Nat

variable {p : ℕ → Prop} [DecidablePred p] (n : ℕ)

theorem count_le_cardinal : (count p n : Cardinal) ≤ Cardinal.mk { k | p k } := by
  rw [count_eq_card_fintype, ← Cardinal.mk_fintype]
  exact Cardinal.mk_subtype_mono fun x hx ↦ hx.2

theorem count_le_setENCard : count p n ≤ Set.encard { k | p k } := by
  simp only [Set.encard, ENat.card, Set.coe_ofPred, Cardinal.natCast_le_toENat]
  exact Nat.count_le_cardinal n

theorem count_le_setNCard (h : { k | p k }.Finite) : count p n ≤ Set.ncard { k | p k } := by
  rw [Set.ncard_def, ← ENat.natCast_le_natCast, ENat.natCast_toNat (by simpa)]
  exact count_le_setENCard n

end Nat
