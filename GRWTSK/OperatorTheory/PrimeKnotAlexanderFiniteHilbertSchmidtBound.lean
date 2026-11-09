/-
Copyright (c) 2026 grwtsk contributors. MIT.
MATHEMATICAL_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_SEPARATE_KERNEL_REPLAY_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTIC_REVIEW_NOT_RUN.
-/
import GRWTSK.OperatorTheory.PrimeKnotAlexanderWeightedCompressions
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Analysis.CStarAlgebra.Matrix

/-!
# Finite Hilbert--Schmidt bounds supplying the countable Alexander incidence operator

## Exact sources and consumers

The [weighted finite compression](PrimeKnotAlexanderWeightedCompressions.lean)
supplies weightedEntry, SnapshotVertex, and SnapshotHilbert. Its
[Alexander incidence supplier](PrimeKnotAlexanderSpectralTriple.lean) supplies
the genuine Source, tagged Vertex, and real symmetric 0/1 edgeWeight.
Unlike the [unweighted Euclidean triple](PrimeKnotAlexanderEuclideanDifferential.lean),
the present finite matrices retain the factors
  B(i,j) = edgeWeight(s,i,j) * 2^(-code(i)-code(j)-2).
No knot equivalence or Alexander invariance is inferred from the source type.

For any finite F ⊆ V and injective code : V → Nat, the new formal
finite-mass result is
  Σ_{i∈F} (1/4)^(code(i)+1) ≤ 1/3.
The source-specific finite Hilbert--Schmidt result is
  Σ_{i,j∈F} ‖B(i,j)‖² ≤ 1/9.
Both constants are independent of F. The finite matrix can be
regarded as a complex-linear continuous operator on EuclideanSpace.

## Mathematical countable extension (WRITTEN, not formalized in Lean here)

Let V = Prime ⊕ Knot with an injective code c : V → Nat and put
H = ℓ²(V,ℂ), q_i = 2^(-c(i)-1) and
b_ij = edgeWeight(s,i,j) q_i q_j.
The injection implies S := Σ_i q_i² ≤ 1/3 by comparison with the
geometric series Σ_{n≥0} 4^(-n-1) = 1/3.

For x of finite support, define (B₀x)_i = Σ_{j∈supp x} b_ij x_j.
Each sum is finite and exactly returns to the original Alexander
source kernel. Because |b_ij|≤q_i q_j, Cauchy--Schwarz gives
  |(B₀x)_i|² ≤ q_i² S ‖x‖².
Summing over i proves B₀x∈H and
  ‖B₀x‖² ≤ S² ‖x‖², hence ‖B₀x‖ ≤ (1/3)‖x‖.
The finite-support subspace is dense in H. Its bounded complex-linear
B₀ therefore has a unique continuous complex-linear extension
B : H →L[ℂ] H, with ‖B‖ ≤ S ≤ 1/3.
For every finitely supported x the equality
  (Bx)_i = Σ_{j∈supp x} b_ij x_j
holds exactly, not merely asymptotically. For arbitrary x∈H,
the coordinate series Σ_j b_ij x_j is absolutely convergent by
Cauchy--Schwarz, and continuity of each coordinate evaluation
gives the same series as (Bx)_i. Symmetry and reality of b_ij show
B is self-adjoint using finite-support density.

This is a complete mathematical bounded-extension argument, but no
lp-valued B or source-return theorem is claimed as a Lean declaration
in this file. The new Lean scope is its finite uniform supplier and
the finite matrix, not the completed countable operator.

## Obstructions and future formalization

The missing formal bridge is a complex ℓ² finite-support domain,
Cauchy--Schwarz and geometric summability for its exact kernel,
the bounded-extension theorem into the complete lp Hilbert carrier,
and the full coordinate-return proof. Reuse Mathlib's lp.single,
lp.memℓp, and continuous-linear-map extension interfaces.
The source [DiagonalHilbertDomain](../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/DiagonalHilbertDomain.lean)
is a real Hilbert multiplier candidate, not a substitute for the complex
countable B. The separate unbounded diagonal D₀ is NOT constructed here,
and finite diagonal compressions are not an operator-norm convergent
sequence in B(H).

The prior weighted module passed its targeted pinned Lean 4.34.1 build
at math commit 7c35ce03b631477684ff6b96f8d09d3b73172f4c (issue #1709).
That build is not verification evidence for the declarations below.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander
namespace WeightedIncidenceBound

variable {Prime Knot : Type*}

/-- The exact squared weight of the source factor 2^(-code(i)-1). -/
def squareMassWeight (code : Vertex Prime Knot → ℕ) (i : Vertex Prime Knot) : ℝ :=
  (1 / 4 : ℝ) ^ (code i + 1)

/-- The source's squared weights are nonnegative for every enumeration. -/
theorem squareMassWeight_nonneg (code : Vertex Prime Knot → ℕ)
    (i : Vertex Prime Knot) : 0 ≤ squareMassWeight code i := by
  unfold squareMassWeight
  positivity

/-- A uniform geometric square-mass budget, independent of finite F.
Injectivity prevents repetitions of the same geometric-series index. -/
theorem finite_squareMass_le_third (code : Vertex Prime Knot → ℕ)
    (hcode : Function.Injective code) (F : Finset (Vertex Prime Knot)) :
    (∑ i ∈ F, squareMassWeight code i) ≤ (1 / 3 : ℝ) := by
  classical
  let r : ℝ := 1 / 4
  have hr0 : 0 ≤ r := by dsimp [r]; norm_num
  have hr1 : r < 1 := by dsimp [r]; norm_num
  have hbase : Summable (fun n : ℕ => r ^ n) :=
    summable_geometric_of_lt_one hr0 hr1
  have hshift : Summable (fun n : ℕ => r ^ (n + 1)) := by
    simpa only [pow_succ] using hbase.mul_right r
  have hsum : (∑' n : ℕ, r ^ (n + 1)) = (1 / 3 : ℝ) := by
    calc
      _ = (∑' n : ℕ, r ^ n) * r := by
        simp_rw [pow_succ]
        rw [tsum_mul_right]
      _ = 1 / 3 := by
        rw [tsum_geometric_of_lt_one hr0 hr1]
        dsimp [r]
        norm_num
  change (∑ i ∈ F, r ^ (code i + 1)) ≤ (1 / 3 : ℝ)
  calc
    _ = ∑ n ∈ F.image code, r ^ (n + 1) := by
      rw [Finset.sum_image (fun i _ j _ hij => hcode hij)]
    _ ≤ ∑' n : ℕ, r ^ (n + 1) :=
      hshift.sum_le_tsum (F.image code) (fun n _ => pow_nonneg hr0 _)
    _ = 1 / 3 := hsum

/-- The rank-one square-mass envelope is uniformly at most 1/9.
No matrix norm or source invariance is assumed in this lemma. -/
theorem finite_rankOne_squared_le_ninth (code : Vertex Prime Knot → ℕ)
    (hcode : Function.Injective code) (F : Finset (Vertex Prime Knot)) :
    (∑ i ∈ F, ∑ j ∈ F,
      squareMassWeight code i * squareMassWeight code j) ≤ (1 / 9 : ℝ) := by
  let S : ℝ := ∑ i ∈ F, squareMassWeight code i
  have hS0 : 0 ≤ S := Finset.sum_nonneg (fun i _ => squareMassWeight_nonneg code i)
  have hS : S ≤ (1 / 3 : ℝ) := finite_squareMass_le_third code hcode F
  calc
    _ = S ^ 2 := by
      dsimp [S]
      simp only [pow_two, Finset.sum_mul, Finset.mul_sum]
    _ ≤ (1 / 3 : ℝ) ^ 2 := pow_le_pow_left₀ hS0 hS 2
    _ = 1 / 9 := by norm_num

/-- The actual source incidence entry, interpreted as a complex finite matrix.
Mathlib supplies its bounded complex-linear map without changing the kernel. -/
noncomputable def finiteMatrix (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot)) :
    Matrix (SnapshotVertex F) (SnapshotVertex F) ℂ :=
  fun i j => weightedEntry s code i.1 j.1

/-- A genuinely continuous complex-linear finite Hilbert operator.
This finite operator is NOT yet the bounded extension on countable ℓ². -/
noncomputable def finiteOperator (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot)) :
    SnapshotHilbert F →L[ℂ] SnapshotHilbert F := by
  classical
  exact Matrix.toEuclideanCLM (finiteMatrix s code F)

/-- Matrix entries preserve the source-weighted complex kernel exactly. -/
@[simp] theorem finiteMatrix_apply (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (F : Finset (Vertex Prime Knot))
    (i j : SnapshotVertex F) :
    finiteMatrix s code F i j = weightedEntry s code i.1 j.1 := rfl

/-- The source incidence is either zero or one, including both tags. -/
theorem edgeWeight_bounds (s : Source Prime Knot)
    (i j : Vertex Prime Knot) :
    0 ≤ edgeWeight s i j ∧ edgeWeight s i j ≤ 1 := by
  classical
  cases i with
  | inl p =>
      cases j with
      | inl p' => simp [edgeWeight]
      | inr k =>
          by_cases h : Linked s p k <;> simp [edgeWeight, h]
  | inr k =>
      cases j with
      | inl p =>
          by_cases h : Linked s p k <;> simp [edgeWeight, h]
      | inr k' => simp [edgeWeight]

/-- The exact complex coefficient is dominated by the rank-one majorant. -/
theorem weightedEntry_norm_le (s : Source Prime Knot)
    (code : Vertex Prime Knot → ℕ) (i j : Vertex Prime Knot) :
    ‖weightedEntry s code i j‖ ≤
      (1 / 2 : ℝ) ^ (code i + 1) * (1 / 2 : ℝ) ^ (code j + 1) := by
  have he := edgeWeight_bounds s i j
  have hnorm : ‖weightedEntry s code i j‖ =
      edgeWeight s i j * (1 / 2 : ℝ) ^ (code i + code j + 2) := by
    simp [weightedEntry, norm_mul, norm_pow, norm_inv, Complex.norm_real,
      Real.norm_eq_abs, abs_of_nonneg he.1]
  calc
    _ = edgeWeight s i j * (1 / 2 : ℝ) ^ (code i + code j + 2) := hnorm
    _ ≤ (1 / 2 : ℝ) ^ (code i + code j + 2) := by
      simpa using mul_le_mul_of_nonneg_right he.2 (pow_nonneg (by norm_num) _)
    _ = (1 / 2 : ℝ) ^ (code i + 1) * (1 / 2 : ℝ) ^ (code j + 1) := by
      rw [show code i + code j + 2 = (code i + 1) + (code j + 1) by omega, pow_add]

/-- The square of a half-weight is the geometric square-mass weight. -/
theorem halfWeight_sq (code : Vertex Prime Knot → ℕ) (i : Vertex Prime Knot) :
    ((1 / 2 : ℝ) ^ (code i + 1)) ^ 2 = squareMassWeight code i := by
  unfold squareMassWeight
  rw [← pow_mul, Nat.mul_comm (code i + 1) 2, pow_mul]
  norm_num

/-- The actual finite source has a uniform squared Hilbert--Schmidt
coefficient bound; the countable B operator extension is still separate. -/
theorem finite_source_squared_HS_le_ninth
    (s : Source Prime Knot) (code : Vertex Prime Knot → ℕ)
    (hcode : Function.Injective code) (F : Finset (Vertex Prime Knot)) :
    (∑ i ∈ F, ∑ j ∈ F, ‖weightedEntry s code i j‖ ^ 2) ≤ (1 / 9 : ℝ) := by
  have hpoint (i j : Vertex Prime Knot) :
      ‖weightedEntry s code i j‖ ^ 2 ≤
        squareMassWeight code i * squareMassWeight code j := by
    have h := pow_le_pow_left₀ (norm_nonneg _)
      (weightedEntry_norm_le s code i j) 2
    rw [mul_pow, halfWeight_sq code i, halfWeight_sq code j] at h
    exact h
  calc
    _ ≤ ∑ i ∈ F, ∑ j ∈ F,
          squareMassWeight code i * squareMassWeight code j := by
      apply Finset.sum_le_sum
      intro i _
      apply Finset.sum_le_sum
      intro j _
      exact hpoint i j
    _ ≤ 1 / 9 := finite_rankOne_squared_le_ninth code hcode F

end WeightedIncidenceBound
end GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander
