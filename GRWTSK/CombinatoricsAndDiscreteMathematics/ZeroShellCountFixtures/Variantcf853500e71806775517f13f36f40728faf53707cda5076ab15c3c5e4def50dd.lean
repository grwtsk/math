-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EachSyntheticShellFinite.Variant7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.EachSyntheticShellFinite.Variant7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/ZeroShellCountFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Nat.Cast.Order.Field
import Mathlib.Algebra.Order.Archimedean.Basic
import Mathlib.Tactic

/-!
Finite synthetic hostile fixtures only: these are not claims about zeta zeros.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EachSyntheticShellFinite.Variant7ef82cc9bebcf6f9feec156bd34733bab913864add6e1b68b8035646043802e4

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroShellCountFixtures

/-- Each individual synthetic shell is finite. -/
theorem each_synthetic_shell_finite (n : ℕ) : Finite (Fin ((n + 1) ^ 5)) := inferInstance

/-- Local finiteness alone does not imply the quartic counting growth proposition. -/
theorem finite_shells_not_quartic :
    ¬ ∃ C : ℝ, 0 < C ∧ ∀ n : ℕ,
      (Nat.card (Fin ((n + 1) ^ 5)) : ℝ) ≤ C * (n + 1 : ℝ) ^ 4 := by
  rintro ⟨C, _hC, hbound⟩
  obtain ⟨n, hn⟩ := exists_nat_gt C
  have hb := hbound n
  simp only [Nat.card_eq_fintype_card, Fintype.card_fin, Nat.cast_pow,
    Nat.cast_add, Nat.cast_one] at hb
  have hp : 0 < (n + 1 : ℝ) ^ 4 := by positivity
  have he : (n + 1 : ℝ) ^ 5 = (n + 1 : ℝ) * (n + 1 : ℝ) ^ 4 := by ring
  rw [he] at hb
  have hc : (n + 1 : ℝ) ≤ C := (mul_le_mul_iff_left₀ hp).mp (by
    simpa only [mul_comm] using hb)
  linarith

/-- Two points can carry three multiplicity slots. -/
def SyntheticOccurrences := Σ p : Fin 2, Fin (p.val + 1)

/-- Forgetting multiplicity changes the cardinality in this finite fixture. -/
theorem multiplicity_slots_three : Nat.card SyntheticOccurrences = 3 := by
  unfold SyntheticOccurrences
  rw [Nat.card_eq_fintype_card]
  decide

/-- The point set has cardinality two, unlike the occurrence set. -/
theorem point_count_two : Nat.card (Fin 2) = 2 := by simp

/-- Point counting cannot stand in for occurrence counting. -/
theorem forgetting_multiplicity_changes_count :
    Nat.card SyntheticOccurrences ≠ Nat.card (Fin 2) := by
  rw [multiplicity_slots_three, point_count_two]
  decide

/-- A synthetic point exactly on a shifted unit-shell boundary belongs to index one. -/
theorem shifted_shell_boundary :
    ⌊‖(3 / 2 : ℂ) - (1 / 2 : ℂ)‖⌋₊ = 1 := by norm_num

/-- The boundary point must not be silently kept in the preceding shell. -/
theorem shifted_boundary_not_previous_shell :
    ⌊‖(3 / 2 : ℂ) - (1 / 2 : ℂ)‖⌋₊ ≠ 0 := by
  rw [shifted_shell_boundary]
  decide

/-- Omitting the half-shift can change the shell index on a synthetic point. -/
theorem omitting_shift_changes_shell :
    ⌊‖(1 : ℂ) - (1 / 2 : ℂ)‖⌋₊ ≠ ⌊‖(1 : ℂ)‖⌋₊ := by
  have hf : ⌊(1 / 2 : ℝ)⌋₊ = 0 := Nat.floor_eq_zero.mpr (by norm_num)
  norm_num [hf]

end ZeroShellCountFixtures
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
