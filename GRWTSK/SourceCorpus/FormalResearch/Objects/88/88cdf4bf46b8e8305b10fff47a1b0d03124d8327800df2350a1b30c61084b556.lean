import FormalResearch.PositiveAtlas.Grassmannian.PivotBounds
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.Basis.Submodule

/-!
# Actual orthonormal frame representatives

Every intrinsic dimension-k subspace obtains an actual orthonormal-row
matrix from an orthonormal basis of its Euclidean image. This construction
does not assume an orthonormal representative or a canonical basis algorithm.

Human direction, theorem selection, and evaluation: grwtsk contributors.
AI-assisted formal implementation: OpenAI Codex, ATLAS-GHH-DESCENT-20261007.
-/

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

variable {k n : ℕ}

/-- Every intrinsic plane is represented by actual orthonormal matrix rows. -/
theorem exists_orthonormal_frame_of_intrinsicPlane (P : IntrinsicPlane k n) :
    ∃ A : FullRankFrame k n,
      representedPlane A = P ∧ A.val * A.val.transpose = 1 := by
  classical
  let e : (Fin n → ℝ) ≃ₗ[ℝ] EuclideanSpace ℝ (Fin n) :=
    (WithLp.linearEquiv 2 ℝ (Fin n → ℝ)).symm
  let W : Submodule ℝ (EuclideanSpace ℝ (Fin n)) := P.val.map e.toLinearMap
  let t : P.val ≃ₗ[ℝ] W := e.submoduleMap P.val
  have hW : Module.finrank ℝ W = k := t.finrank_eq.symm.trans P.property
  let b : OrthonormalBasis (Fin k) ℝ W :=
    (stdOrthonormalBasis ℝ W).reindex (finCongr hW)
  let bP : Module.Basis (Fin k) ℝ P.val := b.toBasis.map t.symm
  let A : Matrix (Fin k) (Fin n) ℝ := fun i j => (bP i).val j
  have hspace : frameRowSpace A = P.val := by
    change Submodule.span ℝ (Set.range (fun i => (bP i).val)) = P.val
    calc
      _ = (Submodule.span ℝ (Set.range bP)).map P.val.subtype := by
        rw [Submodule.map_span, ← Set.range_comp]
        rfl
      _ = (⊤ : Submodule ℝ P.val).map P.val.subtype := by rw [bP.span_eq]
      _ = P.val := by rw [Submodule.map_top, P.val.range_subtype]
  have hgram : A * A.transpose = 1 := by
    ext i j
    have he : inner ℝ (b j) (b i) = (A * A.transpose) i j := by
      change inner ℝ (WithLp.toLp 2 (A j)) (WithLp.toLp 2 (A i)) = _
      simpa only [Matrix.conjTranspose_eq_transpose_of_trivial] using
        inner_matrix_row_row A A j i
    rw [← he, Matrix.one_apply]
    simpa only [eq_comm] using orthonormal_iff_ite.mp b.orthonormal j i
  have hrank : A.rank = k := by
    rw [Matrix.rank_eq_finrank_span_row]
    change Module.finrank ℝ (frameRowSpace A) = k
    rw [hspace]
    exact P.property
  exact ⟨⟨A, hrank⟩, Subtype.ext hspace, hgram⟩

/-- Two actual orthonormal presentations differ by an actual orthogonal row change. -/
theorem exists_orthogonal_rowChange_of_orthonormal_frames
    (A B : FullRankFrame k n) (hA : A.val * A.val.transpose = 1)
    (hB : B.val * B.val.transpose = 1) (hspace : representedPlane A = representedPlane B) :
    ∃ O : Matrix (Fin k) (Fin k) ℝ,
      O * O.transpose = 1 ∧ B.val = O * A.val := by
  obtain ⟨O, _, hO⟩ := exists_rowChange_of_frameRowSpace_eq A.val B.val B.property
    ((representedPlane_eq_iff A B).mp hspace)
  refine ⟨O, ?_, hO⟩
  calc
    O * O.transpose = O * (A.val * A.val.transpose) * O.transpose := by
      rw [hA, Matrix.mul_one]
    _ = (O * A.val) * (O * A.val).transpose := by
      rw [Matrix.transpose_mul]
      simp only [Matrix.mul_assoc]
    _ = B.val * B.val.transpose := by rw [← hO]
    _ = 1 := hB

/-- Controlled pivots reach every intrinsic plane through an actual orthonormal representative. -/
theorem intrinsicPlane_controlled_orthonormal_pivot (P : IntrinsicPlane k n) :
    ∃ A : FullRankFrame k n, ∃ I : Fin k ↪o Fin n,
      representedPlane A = P ∧ A.val * A.val.transpose = 1 ∧
        A.val ∈ controlledPivotDomain I := by
  obtain ⟨A, hAP, hA⟩ := exists_orthonormal_frame_of_intrinsicPlane P
  obtain ⟨I, hI⟩ := controlledPivotDomain_cover A.val hA
  exact ⟨A, I, hAP, hA, hI⟩

/-- The margin condition agrees on every orthonormal presentation of the same plane. -/
theorem controlledPivotDomain_orthonormal_representative_iff
    (A B : FullRankFrame k n) (hA : A.val * A.val.transpose = 1)
    (hB : B.val * B.val.transpose = 1) (hspace : representedPlane A = representedPlane B)
    (I : Fin k ↪o Fin n) :
    B.val ∈ controlledPivotDomain I ↔ A.val ∈ controlledPivotDomain I := by
  obtain ⟨O, hO, hBA⟩ :=
    exists_orthogonal_rowChange_of_orthonormal_frames A B hA hB hspace
  rw [hBA]
  exact controlledPivotDomain_orthogonal_iff O hO A.val I

end

end FormalResearch.PositiveAtlas.Grassmannian
