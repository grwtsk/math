-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.Calculation.Variantc959783ebacea7086e169b6885d4a6dcbd99fe838a0784cb2eba95bac44f5daa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c959783ebacea7086e169b6885d4a6dcbd99fe838a0784cb2eba95bac44f5daa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.Calculation.Variantc959783ebacea7086e169b6885d4a6dcbd99fe838a0784cb2eba95bac44f5daa","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"c959783ebacea7086e169b6885d4a6dcbd99fe838a0784cb2eba95bac44f5daa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Archive/Imo/Imo1959Q1.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kevin Lacker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Lacker
-/
module

public import Mathlib.Tactic.Ring
public import Mathlib.Data.Nat.Prime.Basic

/-!
# IMO 1959 Q1

Prove that the fraction `(21n+4)/(14n+3)` is irreducible for every natural number `n`.

Since Lean doesn't have a concept of "irreducible fractions" per se, we just formalize this
as saying the numerator and denominator are relatively prime.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.Calculation.Variantc959783ebacea7086e169b6885d4a6dcbd99fe838a0784cb2eba95bac44f5daa

public section

open Nat

namespace Imo1959Q1

theorem calculation (n k : ℕ) (h1 : k ∣ 21 * n + 4) (h2 : k ∣ 14 * n + 3) : k ∣ 1 :=
  have h3 : k ∣ 2 * (21 * n + 4) := h1.mul_left 2
  have h4 : k ∣ 3 * (14 * n + 3) := h2.mul_left 3
  have h5 : 3 * (14 * n + 3) = 2 * (21 * n + 4) + 1 := by ring
  (Nat.dvd_add_right h3).mp (h5 ▸ h4)

end Imo1959Q1

open Imo1959Q1

theorem imo1959_q1 : ∀ n : ℕ, Coprime (21 * n + 4) (14 * n + 3) := fun n =>
  coprime_of_dvd' fun k _ h1 h2 => calculation n k h1 h2
