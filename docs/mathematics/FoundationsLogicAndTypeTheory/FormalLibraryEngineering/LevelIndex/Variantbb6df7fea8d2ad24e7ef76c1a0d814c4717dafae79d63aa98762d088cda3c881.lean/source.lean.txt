-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LevelIndex.Variant98acaf47ffcb6a64458fc9254e43d2a8d506e3ff35e120e7d6b79f2602df98b0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98acaf47ffcb6a64458fc9254e43d2a8d506e3ff35e120e7d6b79f2602df98b0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LevelIndex.Variant98acaf47ffcb6a64458fc9254e43d2a8d506e3ff35e120e7d6b79f2602df98b0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"98acaf47ffcb6a64458fc9254e43d2a8d506e3ff35e120e7d6b79f2602df98b0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Forward/LevelIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LevelIndex.Variant98acaf47ffcb6a64458fc9254e43d2a8d506e3ff35e120e7d6b79f2602df98b0

public section

namespace Aesop

structure LevelIndex where
  toNat : Nat
  deriving Inhabited, BEq, Hashable, DecidableEq, Ord

instance : LT LevelIndex where
  lt i j := i.toNat < j.toNat

instance : DecidableRel (α := LevelIndex) (· < ·) :=
  λ i j => inferInstanceAs $ Decidable (i.toNat < j.toNat)

instance : LE LevelIndex where
  le i j := i.toNat ≤ j.toNat

instance : DecidableRel (α := LevelIndex) (· ≤ ·) :=
  λ i j => inferInstanceAs $ Decidable (i.toNat ≤ j.toNat)

instance : ToString LevelIndex where
  toString i := toString i.toNat

end Aesop
