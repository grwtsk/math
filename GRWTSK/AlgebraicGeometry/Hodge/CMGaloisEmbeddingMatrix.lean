/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.AlgebraicGeometry.Hodge.CMRegularBaseChange
import Mathlib.RingTheory.Discriminant
import Mathlib.FieldTheory.Galois.Basic

/-!
# Galois embeddings matrix over the field itself

For a finite Galois extension E/k, the automorphism-indexed embeddings matrix
of any k-basis is square. The trace-as-sum-of-automorphisms identity shows that
the scalar-extended trace matrix is M M^T. Nondegeneracy of the trace form
therefore forces det(M) != 0.

This is the finite linear-algebra input needed to prove that the canonical
evaluation map E tensor_k E -> functions on Gal(E/k) is an equivalence.
-/

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.CMGaloisEmbeddingMatrix

open Matrix Module

noncomputable section

variable (k E : Type*) [Field k] [Field E] [Algebra k E]
  [FiniteDimensional k E] [IsGalois k E]

local notation "n" => Module.finrank k E

/-- Reindex the rational Galois group by Fin(finrank k E). -/
noncomputable def galIndexEquiv : Fin n ≃ (E ≃ₐ[k] E) :=
  Fintype.equivOfCardEq <| by
    rw [Fintype.card_fin, Fintype.card_eq_nat_card,
      IsGalois.card_aut_eq_finrank k E]

/-- The square matrix of Galois conjugates of the selected finite basis. -/
noncomputable def embeddingMatrix : Matrix (Fin n) (Fin n) E :=
  Matrix.of fun i j =>
    galIndexEquiv k E j (Module.finBasis k E i)

@[simp]
theorem embeddingMatrix_apply (i j : Fin n) :
    embeddingMatrix k E i j =
      galIndexEquiv k E j (Module.finBasis k E i) := rfl

/-- The scalar-extended trace matrix factors as the embeddings matrix times
its transpose. -/
theorem traceMatrix_map_eq_mul_trans :
    (Algebra.traceMatrix k (Module.finBasis k E)).map (algebraMap k E) =
      embeddingMatrix k E * (embeddingMatrix k E)ᵀ := by
  classical
  ext i j
  simp only [RingHom.mapMatrix_apply, Algebra.traceMatrix_apply,
    Matrix.mul_apply, Matrix.transpose_apply, embeddingMatrix_apply]
  rw [Algebra.trace_eq_sum_automorphisms]
  rw [← Equiv.sum_comp (galIndexEquiv k E)]
  simp

/-- The Galois embeddings matrix is nonsingular. -/
theorem embeddingMatrix_det_ne_zero :
    (embeddingMatrix k E).det ≠ 0 := by
  classical
  have htrace :
      (Algebra.traceMatrix k (Module.finBasis k E)).det ≠ 0 := by
    rw [Algebra.traceMatrix_of_basis]
    exact det_traceForm_ne_zero k (Module.finBasis k E)
  have htraceMap :
      ((Algebra.traceMatrix k (Module.finBasis k E)).map
        (algebraMap k E)).det ≠ 0 := by
    rw [RingHom.map_det]
    exact map_ne_zero_of_injective (algebraMap k E).injective htrace
  rw [traceMatrix_map_eq_mul_trans k E, Matrix.det_mul,
    Matrix.det_transpose] at htraceMap
  exact fun hdet => htraceMap (by rw [hdet, zero_mul])

end

end GRWTSK.AlgebraicGeometry.Hodge.CMGaloisEmbeddingMatrix
