-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LineMapInvTwo.Variante0fc1dd8d67d2e9f605e0a3819097378cb02d7d6f1999f3e8f1f9c0cc428be64","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e0fc1dd8d67d2e9f605e0a3819097378cb02d7d6f1999f3e8f1f9c0cc428be64","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LineMapInvTwo.Variante0fc1dd8d67d2e9f605e0a3819097378cb02d7d6f1999f3e8f1f9c0cc428be64","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"e0fc1dd8d67d2e9f605e0a3819097378cb02d7d6f1999f3e8f1f9c0cc428be64","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/AffineSpace/MidpointZero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Algebra.CharP.Invertible
import Mathlib.LinearAlgebra.AffineSpace.Midpoint

/-!
# Midpoint of a segment for characteristic zero

We collect lemmas that require that the underlying ring has characteristic zero.

## Tags

midpoint
-/



namespace GRWTSK.Algebra.LinearAlgebra.LineMapInvTwo.Variante0fc1dd8d67d2e9f605e0a3819097378cb02d7d6f1999f3e8f1f9c0cc428be64

open AffineMap AffineEquiv

theorem lineMap_inv_two {R : Type*} {V P : Type*} [DivisionRing R] [CharZero R] [AddCommGroup V]
    [Module R V] [AddTorsor V P] (a b : P) : lineMap a b (2⁻¹ : R) = midpoint R a b :=
  rfl

theorem lineMap_one_half {R : Type*} {V P : Type*} [DivisionRing R] [CharZero R] [AddCommGroup V]
    [Module R V] [AddTorsor V P] (a b : P) : lineMap a b (1 / 2 : R) = midpoint R a b := by
  rw [one_div, lineMap_inv_two]

theorem homothety_invOf_two {R : Type*} {V P : Type*} [CommRing R] [Invertible (2 : R)]
    [AddCommGroup V] [Module R V] [AddTorsor V P] (a b : P) :
    homothety a (⅟ 2 : R) b = midpoint R a b :=
  rfl

theorem homothety_inv_two {k : Type*} {V P : Type*} [Field k] [CharZero k] [AddCommGroup V]
    [Module k V] [AddTorsor V P] (a b : P) : homothety a (2⁻¹ : k) b = midpoint k a b :=
  rfl

theorem homothety_one_half {k : Type*} {V P : Type*} [Field k] [CharZero k] [AddCommGroup V]
    [Module k V] [AddTorsor V P] (a b : P) : homothety a (1 / 2 : k) b = midpoint k a b := by
  rw [one_div, homothety_inv_two]

@[simp]
theorem pi_midpoint_apply {k ι : Type*} {V : ι → Type*} {P : ι → Type*} [Ring k]
    [Invertible (2 : k)] [∀ i, AddCommGroup (V i)] [∀ i, Module k (V i)]
    [∀ i, AddTorsor (V i) (P i)] (f g : ∀ i, P i) (i : ι) :
    midpoint k f g i = midpoint k (f i) (g i) :=
  rfl
