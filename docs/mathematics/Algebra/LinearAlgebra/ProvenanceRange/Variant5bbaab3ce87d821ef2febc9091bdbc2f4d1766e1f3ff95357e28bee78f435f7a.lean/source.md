# Complete source: GRWTSK.Algebra.LinearAlgebra.ProvenanceRange.Variant5bbaab3ce87d821ef2febc9091bdbc2f4d1766e1f3ff95357e28bee78f435f7a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb1cc6e1b6415f47cdd5ad18ec2e6a0af6cb305a` · SHA-256 `5bbaab3ce87d821ef2febc9091bdbc2f4d1766e1f3ff95357e28bee78f435f7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.NullCrossAnnihilation
import Mathlib.Analysis.Matrix.Hermitian
import Mathlib.Analysis.InnerProductSpace.Projection.FiniteDimensional

/-!
# Provenance cross range

This module closes the finite-dimensional range step in the singular Phase-II
Schur analysis.

For a symmetric matrix A, the range of the associated Euclidean linear map is
the orthogonal complement of its kernel.  Therefore any vector orthogonal to
every kernel vector lies in the range of A.

Combined with null-provenance cross annihilation, every cross-block vector B u
of a positive semidefinite block form lies in the range of the provenance block
A.  This removes the conceptual range obstruction independently of any
particular generalized-inverse implementation.
-/

namespace FormalResearch.PositiveAtlas

universe u v

variable {ι : Type u} {κ : Type v}
variable [Fintype ι] [DecidableEq ι]
variable [Fintype κ] [DecidableEq κ]

/-- For a symmetric finite real matrix, every vector orthogonal to the kernel
lies in the matrix range. -/
theorem symmetric_mulVec_mem_range_of_kernel_orthogonal
    (A : Matrix ι ι ℝ) (hA : A.IsSymm) (y : ι → ℝ)
    (hy : ∀ p : ι → ℝ, A.mulVec p = 0 → p ⬝ᵥ y = 0) :
    y ∈ LinearMap.range A.mulVecLin := by
  let T := A.toEuclideanLin
  have hT : T.IsSymmetric := by
    rw [Matrix.isSymmetric_toEuclideanLin_iff]
    exact Matrix.isHermitian_iff_isSymm.mpr hA
  let yE : EuclideanSpace ℝ ι := WithLp.toLp 2 y
  have hyOrth : yE ∈ (LinearMap.ker T)ᗮ := by
    rw [Submodule.mem_orthogonal]
    intro x hx
    have hx0 : A.mulVec (WithLp.ofLp x) = 0 := by
      have hTx : T x = 0 := LinearMap.mem_ker.mp hx
      have hTx' := congrArg WithLp.ofLp hTx
      simpa [T, Matrix.ofLp_toLpLin] using hTx'
    have hdot := hy (WithLp.ofLp x) hx0
    simpa [yE, EuclideanSpace.inner_eq_star_dotProduct] using hdot
  have hyDouble : yE ∈ (LinearMap.range T)ᗮᗮ := by
    rw [hT.orthogonal_range]
    exact hyOrth
  have hyRange : yE ∈ LinearMap.range T := by
    have h := hyDouble
    rw [Submodule.orthogonal_orthogonal_eq_closure,
      Submodule.topologicalClosure_eq_self] at h
    exact h
  rcases hyRange with ⟨q, hq⟩
  refine ⟨WithLp.ofLp q, ?_⟩
  have hq' := congrArg WithLp.ofLp hq
  simpa [T, yE, Matrix.ofLp_toLpLin] using hq'

/-- The provenance matrix of a compatible positive block form is symmetric. -/
theorem compatible_provenanceMatrix_isSymm
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ)))
    (A : Matrix ι ι ℝ)
    (hA : ∀ p q,
      G.form (provenanceInclusion p) (provenanceInclusion q) =
        p ⬝ᵥ A.mulVec q) :
    A.IsSymm := by
  apply Matrix.IsSymm.ext
  intro i j
  let ei : ι → ℝ := Pi.single i 1
  let ej : ι → ℝ := Pi.single j 1
  have hsymm :=
    G.symmetric (provenanceInclusion ei) (provenanceInclusion ej)
  rw [hA, hA] at hsymm
  simp [ei, ej, Matrix.mulVec_single_one] at hsymm
  exact hsymm.symm

/-- Positive block geometry forces every cross-block vector to lie in the range
of the provenance block. -/
theorem cross_mem_provenance_range
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ)))
    (A : Matrix ι ι ℝ) (B : Matrix ι κ ℝ)
    (hA : ∀ p q,
      G.form (provenanceInclusion p) (provenanceInclusion q) =
        p ⬝ᵥ A.mulVec q)
    (hB : ∀ p u,
      G.form (provenanceInclusion p) (autonomousInclusion u) =
        p ⬝ᵥ B.mulVec u)
    (u : κ → ℝ) :
    B.mulVec u ∈ LinearMap.range A.mulVecLin := by
  apply symmetric_mulVec_mem_range_of_kernel_orthogonal
    A (compatible_provenanceMatrix_isSymm G A hA) (B.mulVec u)
  intro p hp
  exact matrix_kernel_cross_orthogonal G A B hA hB p hp u

/-- Equivalently, every autonomous input has an explicit provenance preimage for
its cross-block vector. -/
theorem exists_provenance_solution
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ)))
    (A : Matrix ι ι ℝ) (B : Matrix ι κ ℝ)
    (hA : ∀ p q,
      G.form (provenanceInclusion p) (provenanceInclusion q) =
        p ⬝ᵥ A.mulVec q)
    (hB : ∀ p u,
      G.form (provenanceInclusion p) (autonomousInclusion u) =
        p ⬝ᵥ B.mulVec u)
    (u : κ → ℝ) :
    ∃ p : ι → ℝ, A.mulVec p = B.mulVec u := by
  rcases cross_mem_provenance_range G A B hA hB u with ⟨p, hp⟩
  exact ⟨p, hp⟩

end FormalResearch.PositiveAtlas
```
