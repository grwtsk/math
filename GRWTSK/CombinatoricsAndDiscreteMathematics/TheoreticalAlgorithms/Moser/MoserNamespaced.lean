-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MoserFourColor.Variant193aa4073c8f07720f4dad4c76bba94f49402ad6e9772b86cc807888a397f60f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"193aa4073c8f07720f4dad4c76bba94f49402ad6e9772b86cc807888a397f60f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MoserFourColor.Variant193aa4073c8f07720f4dad4c76bba94f49402ad6e9772b86cc807888a397f60f","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"193aa4073c8f07720f4dad4c76bba94f49402ad6e9772b86cc807888a397f60f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/history-independent-reconstructed-db2fda05/FormalResearch/HadwigerNelson/Moser.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Additional finite Moser-spindle certificates.
Upstream coordinates and obstruction are source-pinned in MoserSource.lean.
Implementation: Codex, directed by grwtsk contributors, 2026.
-/
import FormalResearch.HadwigerNelson.MoserSource
import Mathlib.Data.Fin.SuccPred


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MoserFourColor.Variant193aa4073c8f07720f4dad4c76bba94f49402ad6e9772b86cc807888a397f60f

namespace FormalResearch.HadwigerNelson

/-- The explicit four-color assignment, in upstream vertex order 0–6. -/
def moserFourColor : Fin 7 → Fin 4 := ![0, 1, 2, 0, 1, 2, 3]

/-- The displayed assignment separates every listed spindle edge. -/
theorem moserFourColor_proper {i j : Fin 7} (h : (i, j) ∈ moserEdges) :
    moserFourColor i ≠ moserFourColor j := by
  revert i j
  decide

/-- Exactly four colors are needed for the graph with the eleven listed edges. -/
theorem moser_listed_graph_exact_four :
    (∃ f : Fin 7 → Fin 4, ∀ i j, (i, j) ∈ moserEdges → f i ≠ f j) ∧
    ¬ ∃ f : Fin 7 → Fin 3, ∀ i j, (i, j) ∈ moserEdges → f i ≠ f j := by
  constructor
  · exact ⟨moserFourColor, fun _ _ h ↦ moserFourColor_proper h⟩
  · rintro ⟨f, hf⟩
    exact moser_not_three_colorable f hf


lemma radicalProduct_bounds : 5 < Real.sqrt 3 * Real.sqrt 11 ∧
    Real.sqrt 3 * Real.sqrt 11 < 6 := by
  have h3 := Real.sq_sqrt (show (0 : ℝ) ≤ 3 by norm_num)
  have h11 := Real.sq_sqrt (show (0 : ℝ) ≤ 11 by norm_num)
  have hp : (Real.sqrt 3 * Real.sqrt 11)^2 = 33 := by
    calc _ = (Real.sqrt 3)^2 * (Real.sqrt 11)^2 := by ring
         _ = 33 := by rw [h3, h11]; norm_num
  have hn : 0 ≤ Real.sqrt 3 * Real.sqrt 11 := by positivity
  constructor <;> nlinarith

set_option maxHeartbeats 1600000 in
-- Expanding and normalizing all 49 ordered pairs exceeds the default tactic budget.
lemma moser_normSq_unit_iff (i j : Fin 7) :
    Complex.normSq (moserPoint i - moserPoint j) = 1 ↔
    (i, j) ∈ moserEdges ∨ (j, i) ∈ moserEdges := by
  have h3 := Real.sq_sqrt (show (0 : ℝ) ≤ 3 by norm_num)
  have h11 := Real.sq_sqrt (show (0 : ℝ) ≤ 11 by norm_num)
  obtain ⟨hlo, hhi⟩ := radicalProduct_bounds
  fin_cases i <;> fin_cases j <;>
    norm_num [Fin.ext_iff, moserEdges, moserPoint, moserA, moserB, moserT, moserU,
      Complex.normSq_apply, Complex.mul_re, Complex.mul_im,
      Complex.div_ofReal_re, Complex.div_ofReal_im, Complex.sub_re, Complex.sub_im,
      Complex.add_re, Complex.add_im] <;>
    (try ring_nf) <;> norm_num [h3, h11] <;> intro h <;> nlinarith

set_option maxHeartbeats 1600000 in
-- The finite distinctness proof normalizes the same 49 coordinate differences.
lemma moserPoint_injective : Function.Injective moserPoint := by
  intro i j h
  have hs : Complex.normSq (moserPoint i - moserPoint j) = 0 := by rw [h, sub_self]; simp
  have h3 := Real.sq_sqrt (show (0 : ℝ) ≤ 3 by norm_num)
  have h11 := Real.sq_sqrt (show (0 : ℝ) ≤ 11 by norm_num)
  obtain ⟨hlo, hhi⟩ := radicalProduct_bounds
  fin_cases i <;> fin_cases j <;> try rfl
  all_goals
    norm_num [moserPoint, moserA, moserB, moserT, moserU,
      Complex.normSq_apply, Complex.mul_re, Complex.mul_im,
      Complex.div_ofReal_re, Complex.div_ofReal_im, Complex.sub_re, Complex.sub_im,
      Complex.add_re, Complex.add_im] at hs <;>
      (try ring_nf at hs) <;> norm_num [h3, h11] at hs <;> nlinarith


/-- Unit distance is exactly the undirected eleven-edge relation. -/
theorem moser_unit_iff_edge (i j : Fin 7) :
    ‖moserPoint i - moserPoint j‖ = 1 ↔
    (i, j) ∈ moserEdges ∨ (j, i) ∈ moserEdges := by
  constructor
  · intro h
    apply (moser_normSq_unit_iff i j).mp
    rw [Complex.normSq_eq_norm_sq, h]
    norm_num
  · rintro (h | h)
    · exact moser_edge_unit h
    · rw [norm_sub_rev]
      exact moser_edge_unit h

/-- Colorability of the full unit-distance graph on the seven source points. -/
def FinitePointColorable (n : ℕ) : Prop :=
  ∃ f : Fin 7 → Fin n, ∀ i j, ‖moserPoint i - moserPoint j‖ = 1 → f i ≠ f j

lemma finitePointColorable_mono {m n : ℕ} (hmn : m ≤ n)
    (hm : FinitePointColorable m) : FinitePointColorable n := by
  obtain ⟨f, hf⟩ := hm
  refine ⟨fun i ↦ Fin.castLE hmn (f i), ?_⟩
  intro i j hij heq
  exact hf i j hij (Fin.castLE_injective hmn heq)

/-- The displayed four-color witness separates all geometric unit-distance pairs. -/
theorem moserFourColor_unit_proper {i j : Fin 7}
    (h : ‖moserPoint i - moserPoint j‖ = 1) :
    moserFourColor i ≠ moserFourColor j := by
  rcases (moser_unit_iff_edge i j).mp h with h | h
  · exact moserFourColor_proper h
  · exact (moserFourColor_proper h).symm

/-- Exactly four colors are necessary and sufficient for the seven-point graph. -/
theorem moser_unit_graph_exact_four :
    FinitePointColorable 4 ∧ ∀ n : ℕ, n < 4 → ¬ FinitePointColorable n := by
  constructor
  · exact ⟨moserFourColor, fun _ _ h ↦ moserFourColor_unit_proper h⟩
  · intro n hn hc
    obtain ⟨f, hf⟩ := finitePointColorable_mono (Nat.le_of_lt_succ hn) hc
    exact moser_not_three_colorable f (fun _ _ h ↦ hf _ _ (moser_edge_unit h))

/-- A finite-coloring of the entire Euclidean plane, with no regularity restriction. -/
def PlaneColorable (n : ℕ) : Prop :=
  ∃ f : ℂ → Fin n, ∀ z w : ℂ, ‖z - w‖ = 1 → f z ≠ f w

/-- The unrestricted exact-plane question, stated as a proposition rather than an axiom. -/
def ExactPlaneChromaticNumber (n : ℕ) : Prop :=
  PlaneColorable n ∧ ∀ m : ℕ, m < n → ¬ PlaneColorable m

/-- Restricting a plane coloring to the spindle rules out three colors for the plane. -/
theorem plane_not_three_colorable : ¬ PlaneColorable 3 := by
  rintro ⟨f, hf⟩
  exact moser_not_three_colorable (fun i ↦ f (moserPoint i))
    (fun _ _ h ↦ hf _ _ (moser_edge_unit h))

end FormalResearch.HadwigerNelson
