# Complete source: GRWTSK.Analysis.SpecialFunctions.Imo1963Q5.Variantffa64668a8a24be370331287a20e450d9536fe528b5faa50ad03087b76b2043e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f79e1435644762008bd5fe0193aef13f05ca11a7` · SHA-256 `aac1964a408c7b90f159bfb8eadc87d8c3d2faa117eb3c8e1d51a07010743b9d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
