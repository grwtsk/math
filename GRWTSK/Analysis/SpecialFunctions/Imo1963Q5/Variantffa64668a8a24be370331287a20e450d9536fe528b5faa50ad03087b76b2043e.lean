-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.TwoSinPiDivSevenNeZero.Variant015df91c988795eca441799928fb3c62d90b21c474f0906707b274e6a8c485a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"015df91c988795eca441799928fb3c62d90b21c474f0906707b274e6a8c485a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.TwoSinPiDivSevenNeZero.Variant015df91c988795eca441799928fb3c62d90b21c474f0906707b274e6a8c485a3","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"015df91c988795eca441799928fb3c62d90b21c474f0906707b274e6a8c485a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Archive/Imo/Imo1963Q5.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Rida Hamadani. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Rida Hamadani
-/
module

public import Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex

/-!
# IMO 1963 Q5

Prove that `cos (π / 7) - cos (2 * π / 7) + cos (3 * π / 7) = 1 / 2`.

The main idea of the proof is to multiply both sides by `2 * sin (π / 7)`, then the result follows
through basic algebraic manipulations with the use of some trigonometric identities.

-/


namespace GRWTSK.Analysis.SpecialFunctions.TwoSinPiDivSevenNeZero.Variant015df91c988795eca441799928fb3c62d90b21c474f0906707b274e6a8c485a3

@[expose] public section

open Real

lemma two_sin_pi_div_seven_ne_zero : 2 * sin (π / 7) ≠ 0 := by
  apply mul_ne_zero two_ne_zero (Real.sin_pos_of_pos_of_lt_pi _ _).ne' <;> linarith [pi_pos]

lemma sin_pi_mul_neg_div (a b : ℝ) : sin (π * (- a / b)) = - sin (π * (a / b)) := by
  ring_nf
  exact sin_neg _

theorem imo1963_q5 : cos (π / 7) - cos (2 * π / 7) + cos (3 * π / 7) = 1 / 2 := by
  rw [← mul_right_inj' two_sin_pi_div_seven_ne_zero, mul_add, mul_sub, ← sin_two_mul,
    two_mul_sin_mul_cos, two_mul_sin_mul_cos]
  ring_nf
  rw [← sin_pi_sub (π * (3 / 7)), sin_pi_mul_neg_div 2 7, sin_pi_mul_neg_div 1 7]
  ring_nf
