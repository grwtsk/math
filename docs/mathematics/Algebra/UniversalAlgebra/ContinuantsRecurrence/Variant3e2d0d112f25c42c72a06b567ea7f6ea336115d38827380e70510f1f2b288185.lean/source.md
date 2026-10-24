# Complete source: GRWTSK.Algebra.UniversalAlgebra.ContinuantsRecurrence.Variant3e2d0d112f25c42c72a06b567ea7f6ea336115d38827380e70510f1f2b288185

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b1ca0df3b7ca20d481eb4ad0def42fbf9a0a416` · SHA-256 `d6902c5853f6fe2e47d7882b23d6c62e4b62b395b0948fb042e964603d401880`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.ContsAuxRecurrence.Variant22a120ccc25bc484eaade190fda21c2a6b526f4ccd4c383f2b90797d70f8072a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"22a120ccc25bc484eaade190fda21c2a6b526f4ccd4c383f2b90797d70f8072a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.ContsAuxRecurrence.Variant22a120ccc25bc484eaade190fda21c2a6b526f4ccd4c383f2b90797d70f8072a","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"22a120ccc25bc484eaade190fda21c2a6b526f4ccd4c383f2b90797d70f8072a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/ContinuedFractions/ContinuantsRecurrence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kevin Kappelmann. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Kappelmann
-/
import Mathlib.Algebra.ContinuedFractions.Translations

/-!
# Recurrence Lemmas for the Continuants (`conts`) Function of Continued Fractions

## Summary

Given a generalized continued fraction `g`, for all `n ≥ 1`, we prove that the continuants (`conts`)
function indeed satisfies the following recurrences:
- `Aₙ = bₙ * Aₙ₋₁ + aₙ * Aₙ₋₂`, and
- `Bₙ = bₙ * Bₙ₋₁ + aₙ * Bₙ₋₂`.
-/



namespace GRWTSK.Algebra.UniversalAlgebra.ContsAuxRecurrence.Variant22a120ccc25bc484eaade190fda21c2a6b526f4ccd4c383f2b90797d70f8072a

namespace GenContFract

variable {K : Type*} {g : GenContFract K} {n : ℕ} [DivisionRing K]

theorem contsAux_recurrence {gp ppred pred : Pair K} (nth_s_eq : g.s.get? n = some gp)
    (nth_contsAux_eq : g.contsAux n = ppred)
    (succ_nth_contsAux_eq : g.contsAux (n + 1) = pred) :
    g.contsAux (n + 2) = ⟨gp.b * pred.a + gp.a * ppred.a, gp.b * pred.b + gp.a * ppred.b⟩ := by
  simp [*, contsAux, nextConts, nextDen, nextNum]

theorem conts_recurrenceAux {gp ppred pred : Pair K} (nth_s_eq : g.s.get? n = some gp)
    (nth_contsAux_eq : g.contsAux n = ppred)
    (succ_nth_contsAux_eq : g.contsAux (n + 1) = pred) :
    g.conts (n + 1) = ⟨gp.b * pred.a + gp.a * ppred.a, gp.b * pred.b + gp.a * ppred.b⟩ := by
  simp [nth_cont_eq_succ_nth_contAux,
    contsAux_recurrence nth_s_eq nth_contsAux_eq succ_nth_contsAux_eq]

/-- Shows that `Aₙ = bₙ * Aₙ₋₁ + aₙ * Aₙ₋₂` and `Bₙ = bₙ * Bₙ₋₁ + aₙ * Bₙ₋₂`. -/
theorem conts_recurrence {gp ppred pred : Pair K} (succ_nth_s_eq : g.s.get? (n + 1) = some gp)
    (nth_conts_eq : g.conts n = ppred) (succ_nth_conts_eq : g.conts (n + 1) = pred) :
    g.conts (n + 2) = ⟨gp.b * pred.a + gp.a * ppred.a, gp.b * pred.b + gp.a * ppred.b⟩ := by
  rw [nth_cont_eq_succ_nth_contAux] at nth_conts_eq succ_nth_conts_eq
  exact conts_recurrenceAux succ_nth_s_eq nth_conts_eq succ_nth_conts_eq

/-- Shows that `Aₙ = bₙ * Aₙ₋₁ + aₙ * Aₙ₋₂`. -/
theorem nums_recurrence {gp : Pair K} {ppredA predA : K}
    (succ_nth_s_eq : g.s.get? (n + 1) = some gp) (nth_num_eq : g.nums n = ppredA)
    (succ_nth_num_eq : g.nums (n + 1) = predA) :
    g.nums (n + 2) = gp.b * predA + gp.a * ppredA := by
  obtain ⟨ppredConts, nth_conts_eq, ⟨rfl⟩⟩ : ∃ conts, g.conts n = conts ∧ conts.a = ppredA :=
    exists_conts_a_of_num nth_num_eq
  obtain ⟨predConts, succ_nth_conts_eq, ⟨rfl⟩⟩ :
      ∃ conts, g.conts (n + 1) = conts ∧ conts.a = predA :=
    exists_conts_a_of_num succ_nth_num_eq
  rw [num_eq_conts_a, conts_recurrence succ_nth_s_eq nth_conts_eq succ_nth_conts_eq]

/-- Shows that `Bₙ = bₙ * Bₙ₋₁ + aₙ * Bₙ₋₂`. -/
theorem dens_recurrence {gp : Pair K} {ppredB predB : K}
    (succ_nth_s_eq : g.s.get? (n + 1) = some gp) (nth_den_eq : g.dens n = ppredB)
    (succ_nth_den_eq : g.dens (n + 1) = predB) :
    g.dens (n + 2) = gp.b * predB + gp.a * ppredB := by
  obtain ⟨ppredConts, nth_conts_eq, ⟨rfl⟩⟩ : ∃ conts, g.conts n = conts ∧ conts.b = ppredB :=
    exists_conts_b_of_den nth_den_eq
  obtain ⟨predConts, succ_nth_conts_eq, ⟨rfl⟩⟩ :
      ∃ conts, g.conts (n + 1) = conts ∧ conts.b = predB :=
    exists_conts_b_of_den succ_nth_den_eq
  rw [den_eq_conts_b, conts_recurrence succ_nth_s_eq nth_conts_eq succ_nth_conts_eq]

end GenContFract
```
