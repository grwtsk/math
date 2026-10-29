-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.DiophantineEquations
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.DiophantineEquations.ConvsEqConvergent.Variantbebcd9cdfde3d85d12cd33c91af9a07fd66d351d66df86af90ded2d1eb22ea46","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bebcd9cdfde3d85d12cd33c91af9a07fd66d351d66df86af90ded2d1eb22ea46","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.DiophantineEquations.SourceCorpus.ConvsEqConvergent.Variantbebcd9cdfde3d85d12cd33c91af9a07fd66d351d66df86af90ded2d1eb22ea46","mathematical_subject":"NumberTheory.DiophantineEquations","original_sha256":"bebcd9cdfde3d85d12cd33c91af9a07fd66d351d66df86af90ded2d1eb22ea46","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/NumberTheory/DiophantineApproximation/ContinuedFractions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Michael Stoll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Geißer, Michael Stoll
-/
import Mathlib.Algebra.ContinuedFractions.Computation.ApproximationCorollaries
import Mathlib.Algebra.ContinuedFractions.Computation.Translations
import Mathlib.NumberTheory.DiophantineApproximation.Basic

/-!
# Diophantine Approximation using continued fractions

## Main statements

There are two versions of Legendre's Theorem.`Real.exists_rat_eq_convergent`,
defined in `Mathlib/NumberTheory/DiophantineApproximation/Basic.lean`, uses `Real.convergent`,
a simple recursive definition of the convergents that is also defined in that file.
This file provides `Real.exists_convs_eq_rat`, using `GenContFract.convs` of `GenContFract.of ξ`.
-/


namespace GRWTSK.NumberTheory.DiophantineEquations.ConvsEqConvergent.Variantbebcd9cdfde3d85d12cd33c91af9a07fd66d351d66df86af90ded2d1eb22ea46

section Convergent

namespace Real

open Int

/-!
Our `convergent`s agree with `GenContFract.convs`.
-/

open GenContFract

/-- The `n`th convergent of the `GenContFract.of ξ` agrees with `ξ.convergent n`. -/
theorem convs_eq_convergent (ξ : ℝ) (n : ℕ) :
    (GenContFract.of ξ).convs n = ξ.convergent n := by
  induction n generalizing ξ with
  | zero => simp only [zeroth_conv_eq_h, of_h_eq_floor, convergent_zero, Rat.cast_intCast]
  | succ n ih => rw [convs_succ, ih (fract ξ)⁻¹, convergent_succ, one_div]; norm_cast

end Real

end Convergent

namespace Real

variable {ξ : ℝ} {u v : ℤ}

/-- The main result, *Legendre's Theorem* on rational approximation:
if `ξ` is a real number and `q` is a rational number such that `|ξ - q| < 1/(2*q.den^2)`,
then `q` is a convergent of the continued fraction expansion of `ξ`.
This is the version using `GenContFract.convs`. -/
theorem exists_convs_eq_rat {q : ℚ}
    (h : |ξ - q| < 1 / (2 * (q.den : ℝ) ^ 2)) : ∃ n, (GenContFract.of ξ).convs n = q := by
  obtain ⟨n, hn⟩ := exists_rat_eq_convergent h
  exact ⟨n, hn.symm ▸ convs_eq_convergent ξ n⟩

end Real
