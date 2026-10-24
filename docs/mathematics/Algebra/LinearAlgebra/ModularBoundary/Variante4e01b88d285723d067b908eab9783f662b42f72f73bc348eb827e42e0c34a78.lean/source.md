# Complete source: GRWTSK.Algebra.LinearAlgebra.ModularBoundary.Variante4e01b88d285723d067b908eab9783f662b42f72f73bc348eb827e42e0c34a78

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab6e49c343feab7454fd0849f7aa0ce24f68f6f0` · SHA-256 `1d0b6e2ef00505b2f2242e9f61916206cbefba5b20ed63312a7df68c114ec903`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.BoundaryChart.Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.BoundaryChart.Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.ModularBoundary.Phase
import FormalResearch.PositiveAtlas.Grassmannian.BraidCoordinates
import FormalResearch.PositiveAtlas.Grassmannian.ToeplitzChart24
import FormalResearch.PositiveAtlas.Grassmannian.PivotFixtures
import FormalResearch.PositiveAtlas.Grassmannian.IntrinsicGrassmannian

/-!
# A modular boundary as an actual positive Grassmannian chart

The fixed frame has ordered minors (1,1,1,1,1+d,d). Rank remains two at d=0.
Intrinsic positivity is compared to actual full-rank representatives, not
redefined to mean d>0. The braid identity includes this particular boundary:
its denominators stay nonzero even when one factor weight vanishes.
-/


namespace GRWTSK.Algebra.LinearAlgebra.BoundaryChart.Variant9307517165099eb66611ab067a1642f5a1f2a3b3f2aa8286dfed36690e6b5f59

namespace FormalResearch.PositiveAtlas.ModularBoundary

open FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

/-- The existing signed Gr(2,4) chart with a single varying boundary coordinate. -/
def boundaryChart (d : ℝ) : Chart24 := ⟨1, 1, 1, 1 + d⟩

/-- All six coordinates are actual determinants of the chart frame. -/
theorem boundaryChart_coordinates (d : ℝ) :
    (boundaryChart d).coordinates = ⟨1, 1, 1, 1, 1 + d, d⟩ := by
  rw [Chart24.coordinates_eq]
  simp [boundaryChart]

/-- The increasing selection of the last two columns. -/
def lastPair : Fin 2 ↪o Fin 4 := pairColumns24 2 3 (by decide)

/-- The boundary variable is an ordered minor, with its sign retained. -/
theorem boundaryChart_lastMinor (d : ℝ) :
    orderedMinor (boundaryChart d).matrix lastPair = d := by
  rw [orderedMinor_two]
  change minor₂ (boundaryChart d).matrix 2 3 = d
  norm_num [boundaryChart, Chart24.matrix, minor₂,
    Matrix.cons_val_two, Matrix.cons_val_three, Matrix.vecHead, Matrix.vecTail]

/-- The plane does not lose rank when the boundary minor vanishes. -/
theorem boundaryChart_rank (d : ℝ) : (boundaryChart d).matrix.rank = 2 :=
  Chart24.matrix_rank _

/-- Every nonnegative parameter gives a nonnegative ordered-minor frame. -/
theorem boundaryChart_nonnegative (d : ℝ) (hd : 0 ≤ d) :
    AllOrderedMinorsNonneg (boundaryChart d).matrix := by
  apply PluckerCoordinates24.allOrderedMinorsNonneg_of_nonnegative
  change (boundaryChart d).coordinates.Nonnegative
  rw [boundaryChart_coordinates]
  exact ⟨by norm_num, by norm_num, by norm_num, by norm_num, by linarith, hd⟩

/-- Strict positivity of all ordered minors is exactly d>0. -/
theorem boundaryChart_positive_iff (d : ℝ) :
    AllOrderedMinorsPos (boundaryChart d).matrix ↔ 0 < d := by
  constructor
  · intro h
    simpa only [boundaryChart_lastMinor] using h lastPair
  · intro hd
    apply PluckerCoordinates24.allOrderedMinorsPos_of_strictlyPositive
    change (boundaryChart d).coordinates.StrictlyPositive
    rw [boundaryChart_coordinates]
    exact ⟨by norm_num, by norm_num, by norm_num, by norm_num, by linarith, hd⟩

/-- The full-rank frame whose intrinsic plane is used below. -/
def boundaryFrame (d : ℝ) : FullRankFrame 2 4 :=
  ⟨(boundaryChart d).matrix, boundaryChart_rank d⟩

/-- An actual two-dimensional real subspace, not merely a coordinate tuple. -/
def boundaryPlane (d : ℝ) : IntrinsicPlane 2 4 := representedPlane (boundaryFrame d)

/-- Nonnegative frame coordinates certify intrinsic nonnegativity. -/
theorem boundaryPlane_nonnegative (d : ℝ) (hd : 0 ≤ d) :
    IntrinsicNonnegative (boundaryPlane d) :=
  ⟨boundaryFrame d, rfl, boundaryChart_nonnegative d hd⟩

/-- Intrinsic positivity cannot hide a vanishing minor by changing the row basis. -/
theorem boundaryPlane_positive_iff (d : ℝ) (hd : 0 ≤ d) :
    IntrinsicPositive (boundaryPlane d) ↔ 0 < d := by
  constructor
  · rintro ⟨B, hB, hpos⟩
    have hr : frameRowSpace B.val = frameRowSpace (boundaryChart d).matrix :=
      congrArg Subtype.val hB
    obtain ⟨t, ht, hmin⟩ :=
      (frameRowSpace_eq_iff_orderedMinor_proportional B.val (boundaryChart d).matrix
        B.property (boundaryChart_rank d)).mp hr
    have hne : orderedMinor (boundaryChart d).matrix lastPair ≠ 0 := by
      rw [hmin lastPair]
      exact mul_ne_zero ht (ne_of_gt (hpos lastPair))
    rw [boundaryChart_lastMinor] at hne
    exact lt_of_le_of_ne hd (Ne.symm hne)
  · intro hp
    exact ⟨boundaryFrame d, rfl, (boundaryChart_positive_iff d).mpr hp⟩

/-- The modular arithmetic plane from the actual character's chord. -/
def arithmeticPlane (p : ℕ) [NeZero p] (n : ℕ) : IntrinsicPlane 2 4 :=
  boundaryPlane (defect p n)

/-- The arithmetic family always lies in the nonnegative locus. -/
theorem arithmeticPlane_nonnegative (p : ℕ) [NeZero p] (n : ℕ) :
    IntrinsicNonnegative (arithmeticPlane p n) :=
  boundaryPlane_nonnegative _ (defect_nonneg p n)

/-- Nondivisibility is precisely intrinsic strict positivity of the constructed plane. -/
theorem arithmeticPlane_positive_iff (p : ℕ) [NeZero p] (n : ℕ) :
    IntrinsicPositive (arithmeticPlane p n) ↔ ¬ p ∣ n := by
  rw [arithmeticPlane, boundaryPlane_positive_iff _ (defect_nonneg p n), defect_pos_iff]

/-- Divisibility gives a nonnegative, nonpositive full-rank boundary plane. -/
theorem arithmeticPlane_boundary_iff (p : ℕ) [NeZero p] (n : ℕ) :
    (IntrinsicNonnegative (arithmeticPlane p n) ∧
      ¬ IntrinsicPositive (arithmeticPlane p n)) ↔ p ∣ n := by
  simp only [arithmeticPlane_nonnegative, arithmeticPlane_positive_iff,
    true_and, not_not]

/-- The four exact descriptions of modular failure are equivalent. -/
theorem phase_polynomial_minor (p : ℕ) [NeZero p] (n : ℕ) :
    (phase p n = 1 ↔ p ∣ n) ∧
    (pairedQuadratic p n 1 = 0 ↔ p ∣ n) ∧
    (orderedMinor (boundaryChart (defect p n)).matrix lastPair = 0 ↔ p ∣ n) := by
  exact ⟨phase_eq_one_iff p n, pairedQuadratic_one_eq_zero_iff p n,
    by rw [boundaryChart_lastMinor, defect_eq_zero_iff]⟩

/-- The first reduced-word weights, including their particular zero boundary. -/
def boundaryWeights (d : ℝ) : Braid.Weights :=
  ⟨1 / (1 + d), 1 + d, d / (1 + d)⟩

/-- The weights are strictly positive exactly when the boundary parameter is. -/
theorem boundaryWeights_positive (d : ℝ) (hd : 0 < d) :
    (boundaryWeights d).Positive := by
  dsimp [boundaryWeights, Braid.Weights.Positive]
  exact ⟨div_pos (by norm_num) (by linarith), by linarith,
    div_pos hd (by linarith)⟩

/-- The endpoint sum stays one, including d=0. -/
theorem boundaryWeights_sum (d : ℝ) (hd : 0 ≤ d) :
    (boundaryWeights d).a + (boundaryWeights d).c = 1 := by
  have hs : 1 + d ≠ 0 := by linarith
  dsimp [boundaryWeights]
  field_simp [hs]

/-- The actual weighted mutation has the simple second-chart coordinates (d,1,1). -/
theorem boundaryWeights_mutate (d : ℝ) (hd : 0 ≤ d) :
    Braid.mutate (boundaryWeights d) = ⟨d, 1, 1⟩ := by
  have hs : 1 + d ≠ 0 := by linarith
  have he := boundaryWeights_sum d hd
  apply Braid.Weights.ext
  · change (boundaryWeights d).b * (boundaryWeights d).c /
      ((boundaryWeights d).a + (boundaryWeights d).c) = d
    rw [he]
    dsimp [boundaryWeights]
    field_simp [hs]
  · exact he
  · change (boundaryWeights d).a * (boundaryWeights d).b /
      ((boundaryWeights d).a + (boundaryWeights d).c) = 1
    rw [he]
    dsimp [boundaryWeights]
    field_simp [hs]

/-- This boundary is reversible; a general nonnegative extension is not asserted. -/
theorem boundaryWeights_mutate_back (d : ℝ) :
    Braid.mutate (⟨d, 1, 1⟩ : Braid.Weights) = boundaryWeights d := by
  apply Braid.Weights.ext <;> simp [Braid.mutate, boundaryWeights, add_comm]

/-- The same repository braid theorem proves equality including modular failure. -/
theorem boundary_weighted_braid (d : ℝ) (hd : 0 ≤ d) :
    Braid.x₁ (1 / (1 + d)) * Braid.x₂ (1 + d) * Braid.x₁ (d / (1 + d)) =
      Braid.x₂ d * Braid.x₁ 1 * Braid.x₂ 1 := by
  have he := Braid.weighted_braid (boundaryWeights d)
    (by rw [boundaryWeights_sum d hd]; norm_num)
  rw [boundaryWeights_mutate d hd] at he
  exact he

/-- The common represented matrix. -/
def boundaryWord (d : ℝ) : Matrix (Fin 3) (Fin 3) ℝ :=
  Braid.x₂ d * Braid.x₁ 1 * Braid.x₂ 1

/-- Matrix multiplication recovers the source whose signed graph is the boundary chart. -/
theorem boundaryWord_eq (d : ℝ) :
    boundaryWord d = !![1, 1, 1; 0, 1, 1 + d; 0, 0, 1] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [boundaryWord, Braid.x₁, Braid.x₂, Matrix.mul_apply, Fin.sum_univ_succ]

/-- The selected two-by-two block has determinant equal to the boundary parameter. -/
theorem boundaryWord_block_det (d : ℝ) :
    Matrix.det ((boundaryWord d).submatrix ![0, 1] ![1, 2]) = d := by
  rw [boundaryWord_eq]
  norm_num [Matrix.det_fin_two, Matrix.submatrix, Matrix.cons_val_two,
    Matrix.vecHead, Matrix.vecTail]

/-- Extracting the block and applying the preceding signed graph gives this exact frame. -/
theorem boundaryWord_signedGraph (d : ℝ) :
    SignedGraph.frame ((boundaryWord d).submatrix ![0, 1] ![1, 2]) =
      (boundaryChart d).matrix := by
  rw [signedGraph_two_eq_chart, boundaryWord_eq]
  apply congrArg Chart24.matrix
  apply Chart24.ext <;> norm_num [squareChart24, boundaryChart, Matrix.submatrix,
    Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail]

/-- The signed-graph plane is the same intrinsic subspace, not merely a matching tuple. -/
theorem boundaryWord_plane (d : ℝ) :
    SignedGraph.plane ((boundaryWord d).submatrix ![0, 1] ![1, 2]) = boundaryPlane d := by
  apply Subtype.ext
  change frameRowSpace
    (SignedGraph.frame ((boundaryWord d).submatrix ![0, 1] ![1, 2])) =
      frameRowSpace (boundaryChart d).matrix
  rw [boundaryWord_signedGraph]

/-- The relative split is reflected about one half without changing the represented matrix. -/
theorem boundary_relative_half (d : ℝ) (hd : 0 ≤ d) :
    Braid.relativeHalf (boundaryWeights d) = 1 / (1 + d) ∧
    Braid.relativeHalf (Braid.mutate (boundaryWeights d)) =
      1 - Braid.relativeHalf (boundaryWeights d) := by
  have hs : 1 + d ≠ 0 := by linarith
  have hfirst : Braid.relativeHalf (boundaryWeights d) = 1 / (1 + d) := by
    unfold Braid.relativeHalf
    rw [boundaryWeights_sum d hd]
    simp [boundaryWeights]
  refine ⟨hfirst, ?_⟩
  rw [boundaryWeights_mutate d hd, hfirst]
  dsimp [Braid.relativeHalf]
  field_simp [hs, show d + 1 ≠ 0 by linarith]
  ring

end

end FormalResearch.PositiveAtlas.ModularBoundary
```
