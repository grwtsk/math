# Complete source: GRWTSK.Topology.GeneralTopology.PivotBounds.Variant54b4cfddfe9a5bff4c7178de249507db7a2afb1dc37638a7c7568593f70fe995

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0f0ba302aff47a11fd33db86e8caaba2364f70d` · SHA-256 `f7097450606d6014b8942cdb8aa088191228d5773325b85bb19d2cc178b58d99`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.CardOrderedPivots.Variantc5e2eef400cf6091ff4c04261aaa2f5f244da487f68b87ae942a0d5e2015cbce","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5e2eef400cf6091ff4c04261aaa2f5f244da487f68b87ae942a0d5e2015cbce","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.CardOrderedPivots.Variantc5e2eef400cf6091ff4c04261aaa2f5f244da487f68b87ae942a0d5e2015cbce","mathematical_subject":"Topology.GeneralTopology","original_sha256":"c5e2eef400cf6091ff4c04261aaa2f5f244da487f68b87ae942a0d5e2015cbce","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/atlas-ghh-descent-20261007/FormalResearch/PositiveAtlas/Grassmannian/PivotBounds.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Grassmannian.PivotTransitions
import FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Topology.Instances.Real.Lemmas
import Mathlib.Topology.Instances.Matrix

/-!
# Ordered pivot margins and Euclidean operator budgets

Column subsets are enumerated once, increasingly. The all-functions
Cauchy--Binet identity is converted to this enumeration by the unique
increasing-selection/permutation decomposition, retaining its factorial.
The Euclidean operator consequences are proved separately in `PivotOperatorBounds`.

Human direction, theorem selection, and evaluation: grwtsk contributors.
AI-assisted formal implementation: OpenAI Codex, ATLAS-GHH-DESCENT-20261007.
-/


namespace GRWTSK.Topology.GeneralTopology.CardOrderedPivots.Variantc5e2eef400cf6091ff4c04261aaa2f5f244da487f68b87ae942a0d5e2015cbce

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

open scoped Matrix

variable {k n : ℕ}

/-- The prescribed finite family indexes every column subset exactly once. -/
noncomputable instance orderedPivotFintype : Fintype (Fin k ↪o Fin n) :=
  Fintype.ofEquiv (Set.powersetCard (Fin n) k) Set.powersetCard.ofFinEmbEquiv.symm

/-- Increasing pivot count is the binomial coefficient, including dimension edges. -/
theorem card_orderedPivots : Fintype.card (Fin k ↪o Fin n) = n.choose k := by
  rw [← Nat.card_eq_fintype_card,
    Nat.card_congr Set.powersetCard.ofFinEmbEquiv, Set.powersetCard.card]
  simp

/-- Increasing pivots with a permutation enumerate all injective selections exactly once. -/
def orderedPermutationEquiv :
    ((Fin k ↪o Fin n) × Equiv.Perm (Fin k)) ≃
      {c : Fin k → Fin n // Function.Injective c} :=
  Equiv.ofBijective
    (fun p => ⟨fun i => p.1 (p.2 i), p.1.injective.comp p.2.injective⟩) (by
      constructor
      · intro p q hpq
        have he : (fun i => p.1 (p.2 i)) = fun i => q.1 (q.2 i) :=
          congrArg Subtype.val hpq
        have hr : Set.range p.1 = Set.range q.1 := by
          simpa only [← Function.comp_def, Set.range_comp, Equiv.range_eq_univ,
            Set.image_univ] using congrArg Set.range he
        have hI : p.1 = q.1 :=
          RelEmbedding.ext (fun i => congrFun (p.1.strictMono.range_inj q.1.strictMono |>.mp hr) i)
        have hp : p.2 = q.2 := by
          apply Equiv.ext
          intro i
          apply q.1.injective
          simpa only [hI] using congrFun he i
        exact Prod.ext hI hp
      · intro c
        obtain ⟨I, e, he⟩ := exists_ordered_selection c.val c.property
        exact ⟨(I, e), Subtype.ext (funext fun i => (he i).symm)⟩)

/-- A permutation changes the determinant sign, and leaves its square unchanged. -/
theorem columnMinor_comp_perm_sq (A : Matrix (Fin k) (Fin n) ℝ)
    (I : Fin k ↪o Fin n) (e : Equiv.Perm (Fin k)) :
    columnMinor A (fun i => I (e i)) ^ 2 = orderedMinor A I ^ 2 := by
  rw [columnMinor_comp_perm, mul_pow]
  have hs : (Equiv.Perm.sign e : ℝ) ^ 2 = 1 := by
    norm_cast
    simp
  rw [hs, one_mul]
  rfl

/-- Conversion of squared minors from tuples to unique increasing subsets. -/
theorem sum_columnMinor_sq (A : Matrix (Fin k) (Fin n) ℝ) :
    (∑ c : Fin k → Fin n, columnMinor A c ^ 2) =
      (k.factorial : ℝ) * ∑ I : Fin k ↪o Fin n, orderedMinor A I ^ 2 := by
  classical
  have hs : (∑ c : Fin k → Fin n, columnMinor A c ^ 2) =
      ∑ c : {c : Fin k → Fin n // Function.Injective c}, columnMinor A c.val ^ 2 := by
    rw [← Finset.sum_toFinset_eq_subtype
      (fun c : Fin k → Fin n => Function.Injective c) (fun c => columnMinor A c ^ 2)]
    symm
    apply Finset.sum_subset (Finset.subset_univ _)
    intro c _ hc
    have h : ¬ Function.Injective c := by simpa using hc
    rw [columnMinor_eq_zero_of_not_injective A c h, zero_pow (by decide : 2 ≠ 0)]
  rw [hs, ← orderedPermutationEquiv.sum_comp]
  change (∑ p : (Fin k ↪o Fin n) × Equiv.Perm (Fin k),
    columnMinor A (fun i => p.1 (p.2 i)) ^ 2) = _
  rw [Fintype.sum_prod_type]
  simp only [columnMinor_comp_perm_sq, Finset.sum_const, Finset.card_univ,
    Fintype.card_perm, Fintype.card_fin, nsmul_eq_mul]
  rw [Finset.mul_sum]

/-- Cauchy--Binet squared-minor identity for orthonormal rows. -/
theorem sum_orderedMinor_sq_eq_one (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) :
    (∑ I : Fin k ↪o Fin n, orderedMinor A I ^ 2) = 1 := by
  have h := Toeplitz.cauchyBinet_all_functions A A.transpose
  have ht (c : Fin k → Fin n) :
      A.transpose.submatrix c id = (columnSubmatrix A c).transpose := rfl
  simp only [ht, Matrix.det_transpose] at h
  change (k.factorial : ℝ) * Matrix.det (A * A.transpose) =
    ∑ c : Fin k → Fin n, columnMinor A c * columnMinor A c at h
  simp only [← pow_two] at h
  rw [hA, Matrix.det_one, sum_columnMinor_sq] at h
  exact (mul_left_cancel₀ (by positivity : (k.factorial : ℝ) ≠ 0) h).symm

/-- At least one ordered pivot has squared determinant at least `1 / choose n k`. -/
theorem exists_orderedMinor_sq_margin (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) :
    ∃ I : Fin k ↪o Fin n, 1 / (n.choose k : ℝ) ≤ orderedMinor A I ^ 2 := by
  classical
  have hs := sum_orderedMinor_sq_eq_one A hA
  have hn : Nonempty (Fin k ↪o Fin n) := by
    by_contra h
    have : IsEmpty (Fin k ↪o Fin n) := not_nonempty_iff.mp h
    simp at hs
  have hcard : 0 < (n.choose k : ℝ) := by
    have hc := Fintype.card_pos_iff.mpr hn
    rw [card_orderedPivots] at hc
    exact_mod_cast hc
  by_contra! h
  have ht : (∑ I : Fin k ↪o Fin n, orderedMinor A I ^ 2) <
      ∑ _I : Fin k ↪o Fin n, 1 / (n.choose k : ℝ) :=
    Finset.sum_lt_sum_of_nonempty Finset.univ_nonempty (fun i _ => h i)
  simp only [Finset.sum_const, Finset.card_univ, card_orderedPivots, nsmul_eq_mul] at ht
  rw [hs, mul_one_div_cancel hcard.ne'] at ht
  exact (lt_irrefl (1 : ℝ)) ht

/-- The explicit determinant margin uses the positive square root of the pivot count. -/
theorem exists_orderedMinor_margin (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) :
    ∃ I : Fin k ↪o Fin n, (Real.sqrt (n.choose k : ℝ))⁻¹ ≤ |orderedMinor A I| := by
  obtain ⟨I, hI⟩ := exists_orderedMinor_sq_margin A hA
  refine ⟨I, ?_⟩
  have hn : 0 ≤ (n.choose k : ℝ) := by positivity
  have hi : 0 ≤ (Real.sqrt (n.choose k : ℝ))⁻¹ := by positivity
  have hs : ((Real.sqrt (n.choose k : ℝ))⁻¹) ^ 2 = 1 / (n.choose k : ℝ) := by
    rw [inv_pow, Real.sq_sqrt hn, one_div]
  apply (sq_le_sq₀ hi (abs_nonneg _)).mp
  simpa only [hs, sq_abs] using hI

/-- A determinant margin is invariant under row changes with determinant of magnitude one. -/
theorem abs_columnMinor_mul_left (O : Matrix (Fin k) (Fin k) ℝ)
    (A : Matrix (Fin k) (Fin n) ℝ) (c : Fin k → Fin n)
    (hO : |O.det| = 1) :
    |columnMinor (O * A) c| = |columnMinor A c| := by
  rw [columnMinor_mul_left, abs_mul, hO, one_mul]

/-- Orthonormality rules out the over-dimensional locus. -/
theorem orthonormalRows_dimension_le (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) : k ≤ n := by
  obtain ⟨I, _⟩ := exists_orderedMinor_margin A hA
  simpa only [Fintype.card_fin] using Fintype.card_le_of_injective I I.injective

/-- Explicit strict threshold; no continuous choice of a single pivot is used. -/
def controlledPivotThreshold (k n : ℕ) : ℝ :=
  (2 * Real.sqrt (n.choose k : ℝ))⁻¹

/-- Open controlled pivot domains on the actual matrix presentation. -/
def controlledPivotDomain (I : Fin k ↪o Fin n) : Set (Matrix (Fin k) (Fin n) ℝ) :=
  {A | controlledPivotThreshold k n < |orderedMinor A I|}

/-- The threshold family is an open family in the matrix-entry topology. -/
theorem isOpen_controlledPivotDomain (I : Fin k ↪o Fin n) :
    IsOpen (controlledPivotDomain I) := by
  apply isOpen_lt continuous_const
  apply Continuous.abs
  apply Continuous.matrix_det
  exact continuous_matrix (fun i j =>
    (continuous_apply (I j)).comp (continuous_apply i))

/-- The prescribed open controlled family covers every orthonormal frame. -/
theorem controlledPivotDomain_cover (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) :
    ∃ I : Fin k ↪o Fin n, A ∈ controlledPivotDomain I := by
  have hcount : 0 < (n.choose k : ℝ) := by
    exact_mod_cast Nat.choose_pos (orthonormalRows_dimension_le A hA)
  have hs : 0 < Real.sqrt (n.choose k : ℝ) := Real.sqrt_pos.mpr hcount
  obtain ⟨I, hI⟩ := exists_orderedMinor_margin A hA
  refine ⟨I, ?_⟩
  change (2 * Real.sqrt (n.choose k : ℝ))⁻¹ < |orderedMinor A I|
  apply lt_of_lt_of_le _ hI
  apply inv_strictAnti₀ hs
  nlinarith

/-- Orthogonal matrices have determinant magnitude one, retaining orientation reversal. -/
theorem abs_det_eq_one_of_orthogonal (O : Matrix (Fin k) (Fin k) ℝ)
    (hO : O * O.transpose = 1) : |O.det| = 1 := by
  have h := congrArg Matrix.det hO
  rw [Matrix.det_mul, Matrix.det_transpose, Matrix.det_one] at h
  have hs : |O.det| ^ 2 = 1 := by rw [sq_abs, pow_two]; exact h
  nlinarith [abs_nonneg O.det]

/-- Controlled cover membership is invariant under replacement of an orthonormal row basis. -/
theorem controlledPivotDomain_orthogonal_iff (O : Matrix (Fin k) (Fin k) ℝ)
    (hO : O * O.transpose = 1) (A : Matrix (Fin k) (Fin n) ℝ)
    (I : Fin k ↪o Fin n) :
    O * A ∈ controlledPivotDomain I ↔ A ∈ controlledPivotDomain I := by
  change controlledPivotThreshold k n < |columnMinor (O * A) I| ↔
    controlledPivotThreshold k n < |columnMinor A I|
  rw [abs_columnMinor_mul_left O A I (abs_det_eq_one_of_orthogonal O hO)]


end

end FormalResearch.PositiveAtlas.Grassmannian
```
