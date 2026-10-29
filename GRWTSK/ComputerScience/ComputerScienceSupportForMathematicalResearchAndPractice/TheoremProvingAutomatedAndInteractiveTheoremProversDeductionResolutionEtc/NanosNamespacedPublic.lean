-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Nanos.Variant3dbae06eb9ecab0376f6202c2586a81327ef38871773a7c6a35d54b3998c2616","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3dbae06eb9ecab0376f6202c2586a81327ef38871773a7c6a35d54b3998c2616","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Nanos.Variant3dbae06eb9ecab0376f6202c2586a81327ef38871773a7c6a35d54b3998c2616","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3dbae06eb9ecab0376f6202c2586a81327ef38871773a7c6a35d54b3998c2616","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Nanos.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Data.Json.FromToJson.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Nanos.Variant3dbae06eb9ecab0376f6202c2586a81327ef38871773a7c6a35d54b3998c2616

public section

open Lean

namespace Aesop

structure Nanos where
  nanos : Nat
  deriving Inhabited, BEq, Ord

namespace Nanos

instance : OfNat Nanos n where
  ofNat := ⟨n⟩

instance : LT Nanos where
  lt | ⟨n₁⟩, ⟨n₂⟩ => n₁ < n₂

instance : DecidableRel (α := Nanos) (· < ·) :=
  λ ⟨n₁⟩ ⟨n₂⟩ => inferInstanceAs (Decidable (n₁ < n₂))

instance : LE Nanos where
  le | ⟨n₁⟩, ⟨n₂⟩ => n₁ ≤ n₂

instance : DecidableRel (α := Nanos) (· ≤ ·) :=
  λ ⟨n₁⟩ ⟨n₂⟩ => inferInstanceAs (Decidable (n₁ ≤ n₂))

instance : Add Nanos where
  add n m := ⟨n.nanos + m.nanos⟩

instance : HDiv Nanos Nat Nanos where
  hDiv n m := ⟨n.nanos / m⟩

instance : ToJson Nanos where
  toJson | ⟨n⟩ => toJson n

def printAsMillis (n : Nanos) : String :=
  let str := toString (n.nanos.toFloat / 1000000)
  match str.splitToList λ c => c == '.' with
  | [beforePoint] => beforePoint ++ "ms"
  | [beforePoint, afterPoint] => beforePoint ++ "." ++ afterPoint.take 1 ++ "ms"
  | _ => unreachable!

end Aesop.Nanos
