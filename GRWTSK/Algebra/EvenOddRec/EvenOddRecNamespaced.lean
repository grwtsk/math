-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.EvenOddRec.Variantbc65fc32a9222883c3d9997daac1c89fa43320b4b23a03de06ec036b6d69f5b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc65fc32a9222883c3d9997daac1c89fa43320b4b23a03de06ec036b6d69f5b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.EvenOddRec.Variantbc65fc32a9222883c3d9997daac1c89fa43320b4b23a03de06ec036b6d69f5b5","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"bc65fc32a9222883c3d9997daac1c89fa43320b4b23a03de06ec036b6d69f5b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/EvenOddRec.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Stuart Presnell. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Stuart Presnell
-/
import Mathlib.Algebra.Ring.Parity
import Mathlib.Data.Nat.BinaryRec

/-! # A recursion principle based on even and odd numbers. -/


namespace GRWTSK.Algebra.EvenOddRec.Variantbc65fc32a9222883c3d9997daac1c89fa43320b4b23a03de06ec036b6d69f5b5

namespace Nat

/-- Recursion principle on even and odd numbers: if we have `P 0`, and for all `i : ℕ` we can
extend from `P i` to both `P (2 * i)` and `P (2 * i + 1)`, then we have `P n` for all `n : ℕ`.
This is nothing more than a wrapper around `Nat.binaryRec`, to avoid having to switch to
dealing with `bit0` and `bit1`. -/
@[elab_as_elim]
def evenOddRec {P : ℕ → Sort*} (h0 : P 0) (h_even : ∀ n, P n → P (2 * n))
    (h_odd : ∀ n, P n → P (2 * n + 1)) (n : ℕ) : P n :=
  binaryRec h0 (fun
    | false, i, hi => (h_even i hi : P (2 * i))
    | true, i, hi => (h_odd i hi : P (2 * i + 1))) n

@[simp]
theorem evenOddRec_zero {P : ℕ → Sort*} (h0 : P 0) (h_even : ∀ i, P i → P (2 * i))
    (h_odd : ∀ i, P i → P (2 * i + 1)) : evenOddRec h0 h_even h_odd 0 = h0 :=
  binaryRec_zero _ _

@[simp]
theorem evenOddRec_even {P : ℕ → Sort*} (h0 : P 0) (h_even : ∀ i, P i → P (2 * i))
    (h_odd : ∀ i, P i → P (2 * i + 1)) (H : h_even 0 h0 = h0) (n : ℕ) :
    (2 * n).evenOddRec h0 h_even h_odd = h_even n (evenOddRec h0 h_even h_odd n) := by
  apply binaryRec_eq false n
  simp [H]

@[simp]
theorem evenOddRec_odd {P : ℕ → Sort*} (h0 : P 0) (h_even : ∀ i, P i → P (2 * i))
    (h_odd : ∀ i, P i → P (2 * i + 1)) (H : h_even 0 h0 = h0) (n : ℕ) :
    (2 * n + 1).evenOddRec h0 h_even h_odd = h_odd n (evenOddRec h0 h_even h_odd n) := by
  apply binaryRec_eq true n
  simp [H]

/-- Strong recursion principle on even and odd numbers: if for all `i : ℕ` we can prove `P (2 * i)`
from `P j` for all `j < 2 * i` and we can prove `P (2 * i + 1)` from `P j` for all `j < 2 * i + 1`,
then we have `P n` for all `n : ℕ`. -/
@[elab_as_elim]
noncomputable def evenOddStrongRec {P : ℕ → Sort*}
    (h_even : ∀ n : ℕ, (∀ k < 2 * n, P k) → P (2 * n))
    (h_odd : ∀ n : ℕ, (∀ k < 2 * n + 1, P k) → P (2 * n + 1)) (n : ℕ) : P n :=
  n.strongRecOn fun m ih => m.even_or_odd'.choose_spec.by_cases
    (fun h => h.symm ▸ h_even m.even_or_odd'.choose <| h ▸ ih)
    (fun h => h.symm ▸ h_odd m.even_or_odd'.choose <| h ▸ ih)

end Nat
