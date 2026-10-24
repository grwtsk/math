-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.EnoughRootsOfUnity.Variantffe88bff65cca012245a8e2c2961a8442d2428597a77c3ea36f524d1bc67d0b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ffe88bff65cca012245a8e2c2961a8442d2428597a77c3ea36f524d1bc67d0b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.EnoughRootsOfUnity.Variantffe88bff65cca012245a8e2c2961a8442d2428597a77c3ea36f524d1bc67d0b7","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"ffe88bff65cca012245a8e2c2961a8442d2428597a77c3ea36f524d1bc67d0b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/RootsOfUnity/AlgebraicallyClosed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Michael Stoll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Stoll
-/
import Mathlib.RingTheory.RootsOfUnity.EnoughRootsOfUnity
import Mathlib.NumberTheory.Cyclotomic.Basic

/-!
# Instances for HasEnoughRootsOfUnity

We provide an instance for `HasEnoughRootsOfUnity F n` when `F` is an algebraically closed field
and `n` is not divisible by the characteristic. In particular, when `F` has characteristic zero,
this hold for all `n ≠ 0`.
-/


namespace GRWTSK.Algebra.EnoughRootsOfUnity.Variantffe88bff65cca012245a8e2c2961a8442d2428597a77c3ea36f524d1bc67d0b7

namespace IsAlgClosed

/-- An algebraically closed field `F` satisfies `HasEnoughRootsOfUnity F n` for all `n`
that are not divisible by the characteristic of `F`. -/
instance hasEnoughRootsOfUnity (F : Type*) [Field F] [IsAlgClosed F] (n : ℕ) [i : NeZero (n : F)] :
    HasEnoughRootsOfUnity F n where
  prim := by
    have : NeZero n := .of_neZero_natCast F
    have := isCyclotomicExtension {⟨n, NeZero.pos n⟩} F fun _ h ↦ Set.mem_singleton_iff.mp h ▸ i
    exact IsCyclotomicExtension.exists_isPrimitiveRoot (S := {(⟨n, NeZero.pos n⟩ : ℕ+)}) F _ rfl
  cyc :=
    have : NeZero n := .of_neZero_natCast F
    rootsOfUnity.isCyclic F n

end IsAlgClosed
