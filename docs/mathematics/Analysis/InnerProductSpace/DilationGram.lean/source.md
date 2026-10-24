# Complete source: GRWTSK.Analysis.InnerProductSpace.DilationGram

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6f70fee1ac6edaf24dccb14c8f63341d7d4554e` · SHA-256 `5b78e07cc3177a7fbbd5c8ea9a941ca0cd2d50e57b14fc497bc9c381ddc6421b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.InnerProductSpace.CompactResidualNormalization
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.MeasureTheory.Group.Integral

/-!
# Gram geometry of the literal normalized arithmetic source

The vectors are translations of `ArithmeticSupplier.normalizedSource`. The
matrix uses its literal correlation and retains every ordered mixed term.
Square integrability follows from the actual positive-radius normalization.
No arithmetic growth estimate, supplier estimate, or RH assertion is supplied.

Research direction: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceGram

open MeasureTheory
open ArithmeticSupplier

noncomputable section

def sourceVector (A : ℝ) (n : ℕ) (x : ℝ) : ℝ :=
  normalizedSource A (x - Real.log (n : ℝ))

def sourceGram (A : ℝ) (m n : ℕ) : ℝ :=
  correlation A (Real.log ((m : ℝ) / (n : ℝ)))

def weightedSource (A : ℝ) (s : Finset ℕ) (w : ℕ → ℝ) (x : ℝ) : ℝ :=
  ∑ n ∈ s, w n * sourceVector A n x

def sourceEnergy (A : ℝ) (s : Finset ℕ) (w : ℕ → ℝ) : ℝ :=
  ∫ x : ℝ, (weightedSource A s w x) ^ 2

theorem normalized_source_measurable (A : ℝ) : Measurable (normalizedSource A) := by
  exact (SourceNormalization.normalized_source_continuous A).measurable

theorem source_gram_eq_integral {A : ℝ} {m n : ℕ} (hm : 0 < m) (hn : 0 < n) :
    sourceGram A m n = ∫ x : ℝ, sourceVector A m x * sourceVector A n x := by
  have hm0 : (m : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hm)
  have hn0 : (n : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hn)
  unfold sourceGram correlation sourceVector
  rw [Real.log_div hm0 hn0]
  rw [← integral_sub_right_eq_self
    (fun x : ℝ ↦ normalizedSource A x *
      normalizedSource A (x - (Real.log (m : ℝ) - Real.log (n : ℝ))))
    (Real.log (n : ℝ))]
  apply integral_congr_ae
  filter_upwards [] with x
  have arg : x - Real.log (n : ℝ) -
      (Real.log (m : ℝ) - Real.log (n : ℝ)) = x - Real.log (m : ℝ) := by ring
  rw [arg, mul_comm]

theorem source_gram_symm {A : ℝ} {m n : ℕ} (hm : 0 < m) (hn : 0 < n) :
    sourceGram A m n = sourceGram A n m := by
  rw [source_gram_eq_integral hm hn, source_gram_eq_integral hn hm]
  apply integral_congr_ae
  filter_upwards [] with x
  exact mul_comm _ _

theorem source_vector_memLp {A : ℝ}
    (hA : 0 < A) (n : ℕ) :
    MemLp (sourceVector A n) 2 volume := by
  apply (memLp_two_iff_integrable_sq
    (((normalized_source_measurable A).comp
      (measurable_id.sub measurable_const)).aestronglyMeasurable)).2
  exact (SourceNormalization.normalized_source_square_integrable_of_pos hA).comp_sub_right
    (Real.log (n : ℝ))

theorem source_vectors_product_integrable {A : ℝ}
    (hA : 0 < A) (m n : ℕ) :
    Integrable (fun x : ℝ ↦ sourceVector A m x * sourceVector A n x) := by
  exact (source_vector_memLp hA m).integrable_mul
    (source_vector_memLp hA n)

theorem source_gram_diagonal (A : ℝ) (n : ℕ) :
    sourceGram A n n = ∫ x : ℝ, normalizedSource A x ^ 2 := by
  simp only [sourceGram, Real.log_div_self, correlation, sub_zero, pow_two]

theorem source_gram_diagonal_eq_one {A : ℝ} (hA : 0 < A) (n : ℕ) :
    sourceGram A n n = 1 := by
  rw [source_gram_diagonal]
  exact SourceNormalization.normalized_source_square_integral_of_pos hA

theorem finite_weighted_source_square {ι : Type*} (A : ℝ) (s : Finset ι)
    (label : ι → ℕ) (w : ι → ℝ) (x : ℝ) :
    (∑ n ∈ s, w n * sourceVector A (label n) x) ^ 2 =
      ∑ m ∈ s, ∑ n ∈ s,
        (w m * w n) * (sourceVector A (label m) x * sourceVector A (label n) x) := by
  simp only [pow_two, Finset.sum_mul, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro m _
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- The full ordered double sum is obtained by integrating the literal square.
The index family can repeat labels; every original vector is retained. -/
theorem finite_source_energy_eq_gram {ι : Type*} {A : ℝ}
    (hA : 0 < A)
    (s : Finset ι) (label : ι → ℕ) (w : ι → ℝ)
    (positive : ∀ n ∈ s, 0 < label n) :
    (∫ x : ℝ, (∑ n ∈ s, w n * sourceVector A (label n) x) ^ 2) =
      ∑ m ∈ s, ∑ n ∈ s, (w m * w n) * sourceGram A (label m) (label n) := by
  have mixedIntegrable (m n : ι) : Integrable (fun x : ℝ ↦
      (w m * w n) * (sourceVector A (label m) x * sourceVector A (label n) x)) :=
    (source_vectors_product_integrable hA (label m) (label n)).const_mul _
  simp_rw [finite_weighted_source_square]
  rw [integral_finsetSum s (fun m _ ↦
    integrable_finsetSum s (fun n _ ↦ mixedIntegrable m n))]
  apply Finset.sum_congr rfl
  intro m hm
  rw [integral_finsetSum s (fun n _ ↦ mixedIntegrable m n)]
  apply Finset.sum_congr rfl
  intro n hn
  rw [integral_const_mul, source_gram_eq_integral (positive m hm) (positive n hn)]

theorem finite_weighted_source_square_integrable {ι : Type*} {A : ℝ}
    (hA : 0 < A)
    (s : Finset ι) (label : ι → ℕ) (w : ι → ℝ) :
    Integrable (fun x : ℝ ↦ (∑ n ∈ s, w n * sourceVector A (label n) x) ^ 2) := by
  simp_rw [finite_weighted_source_square]
  apply integrable_finsetSum s
  intro m _
  apply integrable_finsetSum s
  intro n _
  exact (source_vectors_product_integrable hA (label m) (label n)).const_mul _

theorem finite_source_gram_nonnegative {ι : Type*} {A : ℝ}
    (hA : 0 < A)
    (s : Finset ι) (label : ι → ℕ) (w : ι → ℝ)
    (positive : ∀ n ∈ s, 0 < label n) :
    0 ≤ ∑ m ∈ s, ∑ n ∈ s, (w m * w n) * sourceGram A (label m) (label n) := by
  rw [← finite_source_energy_eq_gram hA s label w positive]
  exact integral_nonneg (fun x ↦ sq_nonneg _)

theorem source_energy_eq_gram {A : ℝ}
    (hA : 0 < A)
    (s : Finset ℕ) (w : ℕ → ℝ) (positive : ∀ n ∈ s, 0 < n) :
    sourceEnergy A s w = ∑ m ∈ s, ∑ n ∈ s, (w m * w n) * sourceGram A m n :=
  finite_source_energy_eq_gram hA s id w positive

theorem source_energy_nonnegative (A : ℝ) (s : Finset ℕ) (w : ℕ → ℝ) :
    0 ≤ sourceEnergy A s w := integral_nonneg (fun _x ↦ sq_nonneg _)

def sourceGramMatrix {ι : Type*} (A : ℝ) (label : ι → ℕ) : Matrix ι ι ℝ :=
  fun m n ↦ sourceGram A (label m) (label n)

/-- The literal correlation matrix is positive semidefinite for every finite
positive integer family. No profile, vector, or mixed term is replaced. -/
theorem source_gram_matrix_positive_semidefinite {ι : Type*} [Finite ι] {A : ℝ}
    (hA : 0 < A)
    (label : ι → ℕ) (positive : ∀ n, 0 < label n) :
    (sourceGramMatrix A label).PosSemidef := by
  classical
  let _ := Fintype.ofFinite ι
  apply Matrix.PosSemidef.of_dotProduct_mulVec_nonneg
  · ext m n
    simpa only [sourceGramMatrix, Matrix.conjTranspose_apply, star_trivial] using
      source_gram_symm (positive n) (positive m)
  · intro w
    have nonnegative := finite_source_gram_nonnegative hA Finset.univ label w
      (fun n _ ↦ positive n)
    simpa only [sourceGramMatrix, Matrix.mulVec, dotProduct, Pi.star_apply, star_trivial,
      Finset.mul_sum, mul_assoc, mul_left_comm, mul_comm] using nonnegative

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.SourceGram
```
