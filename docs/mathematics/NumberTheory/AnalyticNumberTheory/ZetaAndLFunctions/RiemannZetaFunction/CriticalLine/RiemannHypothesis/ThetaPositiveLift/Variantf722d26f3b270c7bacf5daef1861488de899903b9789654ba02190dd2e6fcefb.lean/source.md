# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variantf722d26f3b270c7bacf5daef1861488de899903b9789654ba02190dd2e6fcefb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f800c92af212121ac90208265fd4f60f1d94b38` · SHA-256 `b3f684b1e0ed65e738b5abd3211a3e8a049ff3074ae86e2f2827cfed53b80a17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PermutationCrossesCut.Variantd5b59718934f3d8c08bc955e29df1e938a3a4d80b05d468c500f5be2f870f0d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d5b59718934f3d8c08bc955e29df1e938a3a4d80b05d468c500f5be2f870f0d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PermutationCrossesCut.Variantd5b59718934f3d8c08bc955e29df1e938a3a4d80b05d468c500f5be2f870f0d7","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"d5b59718934f3d8c08bc955e29df1e938a3a4d80b05d468c500f5be2f870f0d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/d5b59718934f3d8c08bc955e29df1e938a3a4d80b05d468c500f5be2f870f0d7.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaTailOrientation
import FormalResearch.PositiveAtlas.Grassmannian.QuadraticMinors

/-!
# Structural reduction of the theta-lift boundary selections

These results use only the zero extension below the Toeplitz diagonal. They
classify the non-separated selections into vanishing minors, exact ordered block
products, and a residual overlapping class. Source-specific positivity of that
residual class is still required; it is not implied by the classification.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PermutationCrossesCut.Variantd5b59718934f3d8c08bc955e29df1e938a3a4d80b05d468c500f5be2f870f0d7

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
open FormalResearch.PositiveAtlas.Grassmannian.Toeplitz
noncomputable section

/-- A permutation cannot inject a closed prefix into its strictly shorter open prefix. -/
theorem permutation_crosses_cut {k : ℕ} (σ : Equiv.Perm (Fin k)) (i : Fin k) :
    ∃ j : Fin k, j ≤ i ∧ i ≤ σ j := by
  by_contra h
  have hmap : Set.MapsTo σ (Finset.Iic i : Set (Fin k)) (Finset.Iio i : Set (Fin k)) := by
    intro j hj
    simp only [Finset.mem_coe, Finset.mem_Iic] at hj
    simp only [Finset.mem_coe, Finset.mem_Iio]
    exact lt_of_not_ge (fun hle => h ⟨j, hj, hle⟩)
  have hc := Finset.card_le_card_of_injOn σ hmap σ.injective.injOn
  simp only [Fin.card_Iic, Fin.card_Iio] at hc
  omega

/-- Any ordered diagonal violation kills every Leibniz term of the Toeplitz minor. -/
theorem minor_eq_zero_of_diagonal_violation (a : ℕ → ℝ) {k : ℕ}
    (r c : Fin k ↪o ℕ) (i : Fin k) (hi : c i < r i) :
    minor a r c = 0 := by
  change Matrix.det (Matrix.of fun i j : Fin k => entry a (r i) (c j)) = 0
  rw [Matrix.det_apply']
  apply Finset.sum_eq_zero
  intro σ _
  obtain ⟨j, hj, hσj⟩ := permutation_crosses_cut σ i
  have hz : entry a (r (σ j)) (c j) = 0 :=
    entry_below a ((c.monotone hj).trans_lt (hi.trans_le (r.monotone hσj)))
  have hp : (∏ l : Fin k, entry a (r (σ l)) (c l)) = 0 :=
    Finset.prod_eq_zero (Finset.mem_univ j) hz
  exact mul_eq_zero_of_right _ hp

/-- For a nonempty selection, the last row and first column decide separation. -/
theorem separated_iff_last_le_first {n : ℕ} (r c : Fin (n + 1) ↪o ℕ) :
    Separated r c ↔ r (Fin.last n) ≤ c 0 := by
  constructor
  · rintro ⟨h⟩
    exact h.row_le_column _ _
  · intro h
    refine ⟨⟨r (Fin.last n), ?_, ?_⟩⟩
    · intro i
      exact r.monotone (Fin.le_last i)
    · intro j
      exact h.trans (c.monotone (Fin.zero_le j))

/-- An ordered gap makes the lower-left block zero and factors the determinant
without introducing a permutation sign. -/
theorem minor_split_at_gap (a : ℕ → ℝ) {k : ℕ}
    (r c : Fin k ↪o ℕ) (l : ℕ) (hl0 : 0 < l) (hl : l < k)
    (hgap : c ⟨l - 1, by omega⟩ < r ⟨l, hl⟩) :
    minor a r c =
      minor a (Quadratic.take r l hl.le) (Quadratic.take c l hl.le) *
      minor a (Quadratic.drop r l) (Quadratic.drop c l) := by
  apply Quadratic.det_split _ l hl.le
  left
  intro i j
  apply entry_below
  have hj : (⟨j.val, by omega⟩ : Fin k) ≤ ⟨l - 1, by omega⟩ := by
    change j.val ≤ l - 1
    have := j.isLt
    omega
  have hi : (⟨l, hl⟩ : Fin k) ≤ ⟨l + i.val, by omega⟩ := by
    change l ≤ l + i.val
    omega
  exact (c.monotone hj).trans_lt (hgap.trans_le (r.monotone hi))

/-- A non-separated selection is either structurally zero, reducible at an
ordered gap, or a diagonally feasible overlapping residual selection. -/
theorem boundary_classification {n : ℕ} (r c : Fin (n + 1) ↪o ℕ)
    (hboundary : ¬ Separated r c) :
    (∃ i, c i < r i) ∨
      (∃ i : Fin n, c i.castSucc < r i.succ) ∨
        ((∀ i, r i ≤ c i) ∧
          (∀ i : Fin n, r i.succ ≤ c i.castSucc) ∧
            c 0 < r (Fin.last n)) := by
  by_cases hdiag : ∀ i, r i ≤ c i
  · by_cases hoverlap : ∀ i : Fin n, r i.succ ≤ c i.castSucc
    · exact Or.inr (Or.inr ⟨hdiag, hoverlap,
        lt_of_not_ge (fun h => hboundary ((separated_iff_last_le_first r c).mpr h))⟩)
    · obtain ⟨i, hi⟩ := not_forall.mp hoverlap
      exact Or.inr (Or.inl ⟨i, lt_of_not_ge hi⟩)
  · obtain ⟨i, hi⟩ := not_forall.mp hdiag
    exact Or.inl ⟨i, lt_of_not_ge hi⟩

/-- At rank two every non-separated minor is triangular, so only coefficient
nonnegativity is needed for its boundary case. -/
theorem boundary_two_nonnegative (a : ℕ → ℝ) (ha : ∀ n, 0 ≤ a n)
    (r c : Fin 2 ↪o ℕ) (hboundary : ¬ Separated r c) :
    0 ≤ minor a r c := by
  have hgap : c 0 < r 1 := by
    exact lt_of_not_ge (fun h => hboundary ((separated_iff_last_le_first r c).mpr h))
  have hentry (i j : ℕ) : 0 ≤ entry a i j := by
    unfold entry
    split_ifs
    · exact ha _
    · exact le_rfl
  change 0 ≤ Matrix.det (Matrix.of fun i j : Fin 2 => entry a (r i) (c j))
  rw [Matrix.det_fin_two]
  simp only [Matrix.of_apply]
  rw [entry_below a hgap]
  simpa using mul_nonneg (hentry (r 0) (c 0)) (hentry (r 1) (c 1))

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
