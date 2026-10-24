-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.SpectralSequenceNat.Variant5042216c6dbc7e0bb00beff7713b2ad960a2a23e599ffb7aa546f964dc741f4d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5042216c6dbc7e0bb00beff7713b2ad960a2a23e599ffb7aa546f964dc741f4d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SpectralSequenceNat.Variant5042216c6dbc7e0bb00beff7713b2ad960a2a23e599ffb7aa546f964dc741f4d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"5042216c6dbc7e0bb00beff7713b2ad960a2a23e599ffb7aa546f964dc741f4d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Homology/SpectralSequence/ComplexShape.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Homology.ComplexShape
public import Mathlib.Data.Int.Notation
public import Mathlib.Data.Nat.Notation

/-!
# Complex shapes for pages of spectral sequences

In this file, we define complex shapes which correspond
to pages of spectral sequences:
* `ComplexShape.spectralSequenceNat`: for any `u : ℤ × ℤ`, this
is the complex shape on `ℕ × ℕ` corresponding to differentials
of `ComplexShape.up' u : ComplexShape (ℤ × ℤ)` with source
and target in `ℕ × ℕ`. (With `u := (r, 1 - r)`, this will
apply to the `r`th-page of first quadrant `E₂` cohomological
spectral sequence).
* `ComplexShape.spectralSequenceFin`: for any `u : ℤ × ℤ` and `l : ℕ`,
this is a similar definition as `ComplexShape.spectralSequenceNat`
but for `ℤ × Fin l` (identified as a subset of `ℤ × ℤ`). (This could
be used for spectral sequences associated to a *finite* filtration.)

-/


namespace GRWTSK.Algebra.SpectralSequenceNat.Variant5042216c6dbc7e0bb00beff7713b2ad960a2a23e599ffb7aa546f964dc741f4d

@[expose] public section

namespace ComplexShape

/-- For `u : ℤ × ℤ`, this is the complex shape on `ℕ × ℕ`, which
connects `a` to `b` when the equality `a + u = b` holds in `ℤ × ℤ`. -/
def spectralSequenceNat (u : ℤ × ℤ) : ComplexShape (ℕ × ℕ) where
  Rel a b := a.1 + u.1 = b.1 ∧ a.2 + u.2 = b.2
  next_eq _ _ := by ext <;> lia
  prev_eq _ _ := by ext <;> lia

@[simp]
lemma spectralSequenceNat_rel_iff (u : ℤ × ℤ) (a b : ℕ × ℕ) :
    (spectralSequenceNat u).Rel a b ↔ a.1 + u.1 = b.1 ∧ a.2 + u.2 = b.2 := Iff.rfl

/-- For `l : ℕ` and `u : ℤ × ℤ`, this is the complex shape on `ℤ × Fin l`, which
connects `a` to `b` when the equality `a + u = b` holds in `ℤ × ℤ`. -/
def spectralSequenceFin (l : ℕ) (u : ℤ × ℤ) : ComplexShape (ℤ × Fin l) where
  Rel a b := a.1 + u.1 = b.1 ∧ a.2.1 + u.2 = b.2.1
  next_eq _ _ := by ext <;> lia
  prev_eq _ _ := by ext <;> lia

@[simp]
lemma spectralSequenceFin_rel_iff {l : ℕ} (u : ℤ × ℤ) (a b : ℤ × Fin l) :
    (spectralSequenceFin l u).Rel a b ↔ a.1 + u.1 = b.1 ∧ a.2 + u.2 = b.2 := Iff.rfl

end ComplexShape
