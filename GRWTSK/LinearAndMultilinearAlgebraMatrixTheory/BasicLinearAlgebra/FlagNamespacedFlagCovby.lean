-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Flag.Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Flag.Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/LinearAlgebra/Basis/Flag.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov, Patrick Massot
-/
import Mathlib.LinearAlgebra.Basis
import Mathlib.Data.Fin.FlagRange

/-!
# Flag of submodules defined by a basis

In this file we define `Basis.flag b k`, where `b : Basis (Fin n) R M`, `k : Fin (n + 1)`,
to be the subspace spanned by the first `k` vectors of the basis `b`.

We also prove some lemmas about this definition.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Flag.Variant66003bf912eeeb8d51ecf51aab710d6cb76a95b45977e9fb1421b5fc176e7517

open Set Submodule

namespace Basis

section Semiring

variable {R M : Type _} [Semiring R] [AddCommMonoid M] [Module R M] {n : ℕ}

/-- The subspace spanned by the first `k` vectors of the basis `b`. -/
def flag (b : Basis (Fin n) R M) (k : Fin (n + 1)) : Submodule R M :=
  .span R <| b '' {i | i.castSucc < k}

@[simp]
theorem flag_zero (b : Basis (Fin n) R M) : b.flag 0 = ⊥ := by simp [flag]

@[simp]
theorem flag_last (b : Basis (Fin n) R M) : b.flag (.last n) = ⊤ := by
  simp [flag, Fin.castSucc_lt_last]

theorem flag_le_iff (b : Basis (Fin n) R M) {k p} :
    b.flag k ≤ p ↔ ∀ i : Fin n, i.castSucc < k → b i ∈ p :=
  span_le.trans ball_image_iff

theorem flag_succ (b : Basis (Fin n) R M) (k : Fin n) :
    b.flag k.succ = (R ∙ b k) ⊔ b.flag k.castSucc := by
  simp only [flag, Fin.castSucc_lt_castSucc_iff]
  simp [Fin.castSucc_lt_iff_succ_le, le_iff_eq_or_lt, setOf_or, image_insert_eq, span_insert]

theorem self_mem_flag (b : Basis (Fin n) R M) {i : Fin n} {k : Fin (n + 1)} (h : i.castSucc < k) :
    b i ∈ b.flag k :=
  subset_span <| mem_image_of_mem _ h

@[simp]
theorem self_mem_flag_iff [Nontrivial R] (b : Basis (Fin n) R M) {i : Fin n} {k : Fin (n + 1)} :
    b i ∈ b.flag k ↔ i.castSucc < k :=
  b.self_mem_span_image

@[mono]
theorem flag_mono (b : Basis (Fin n) R M) : Monotone b.flag :=
  Fin.monotone_iff_le_succ.2 fun k ↦ by rw [flag_succ]; exact le_sup_right

theorem isChain_range_flag (b : Basis (Fin n) R M) : IsChain (· ≤ ·) (range b.flag) :=
  b.flag_mono.isChain_range

@[mono]
theorem flag_strictMono [Nontrivial R] (b : Basis (Fin n) R M) : StrictMono b.flag :=
  Fin.strictMono_iff_lt_succ.2 fun _ ↦ by simp [flag_succ]

end Semiring

section CommRing

variable {R M : Type _} [CommRing R] [AddCommGroup M] [Module R M] {n : ℕ}

@[simp]
theorem flag_le_ker_coord_iff [Nontrivial R] (b : Basis (Fin n) R M) {k : Fin (n + 1)} {l : Fin n} :
    b.flag k ≤ LinearMap.ker (b.coord l) ↔ k ≤ l.castSucc := by
  simp [flag_le_iff, Finsupp.single_apply_eq_zero, imp_false, imp_not_comm]

theorem flag_le_ker_coord (b : Basis (Fin n) R M) {k : Fin (n + 1)} {l : Fin n}
    (h : k ≤ l.castSucc) : b.flag k ≤ LinearMap.ker (b.coord l) := by
  nontriviality R
  exact b.flag_le_ker_coord_iff.2 h

end CommRing

section DivisionRing

variable {K V : Type _} [DivisionRing K] [AddCommGroup V] [Module K V] {n : ℕ}

theorem flag_covby (b : Basis (Fin n) K V) (i : Fin n) :
    b.flag i.castSucc ⋖ b.flag i.succ := by
  rw [flag_succ]
  apply covby_span_singleton_sup
  simp

theorem flag_wcovby (b : Basis (Fin n) K V) (i : Fin n) :
    b.flag i.castSucc ⩿ b.flag i.succ :=
  (b.flag_covby i).wcovby

/-- Range of `Basis.flag` as a `Flag`. -/
@[simps!]
def toFlag (b : Basis (Fin n) K V) : Flag (Submodule K V) :=
  .rangeFin b.flag b.flag_zero b.flag_last b.flag_wcovby

@[simp]
theorem mem_toFlag (b : Basis (Fin n) K V) {p : Submodule K V} : p ∈ b.toFlag ↔ ∃ k, b.flag k = p :=
  Iff.rfl

theorem isMaxChain_range_flag (b : Basis (Fin n) K V) : IsMaxChain (· ≤ ·) (range b.flag) :=
  b.toFlag.maxChain

end DivisionRing
