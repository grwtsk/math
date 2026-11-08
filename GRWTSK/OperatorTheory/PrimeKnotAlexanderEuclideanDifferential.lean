/-
Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.OperatorTheory.PrimeKnotAlexanderSpectralTriple
import Mathlib.Analysis.InnerProductSpace.PiL2

/-!
# Euclidean realization and spectral differential of the Alexander incidence core

Source: [finite incidence core](PrimeKnotAlexanderSpectralTriple.lean).
`spectralDifferential_leibniz` reuses its `commutator_leibniz`; the
Euclidean realization below supplies the actual L2 carrier. The ordinary finite function
space has the product/sup norm by default; the actual L2 Hilbert norm must
instead come from EuclideanSpace. The original algebraic source distinguishes
Alexander polynomial divisibility from knot isotopy.

The finite mathematical triple is (C^V, L2(V,C), D), with faithful diagonal
action and Hermitian incidence. Its operator domain is the whole finite
Hilbert space. Compact resolvent and boundedness follow in finite dimension
but are not yet separately Lean-packaged as continuous/compact operator
proofs. No kernel verification is inferred.

The unweighted finite Dirac is NOT the compression of the separately
described infinite weighted D0+B operator. Such an approximation requires
the actual weights and compatible finite compressions.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander

section Finite
variable {Prime Knot : Type*} [Fintype Prime] [Fintype Knot]

/-- An actual finite-dimensional complex Hilbert carrier. -/
abbrev EuclideanHilbert (Prime Knot : Type*) :=
  EuclideanSpace ℂ (Vertex Prime Knot)

/-- Pointwise multiplication on the Euclidean Hilbert space. -/
def euclideanAct (a : Algebra Prime Knot) (ξ : EuclideanHilbert Prime Knot) :
    EuclideanHilbert Prime Knot :=
  WithLp.toLp 2 (fun i => a i * ξ i)

/-- The exact source incidence matrix on the Euclidean Hilbert space. -/
def euclideanDirac (s : Source Prime Knot) (ξ : EuclideanHilbert Prime Knot) :
    EuclideanHilbert Prime Knot :=
  WithLp.toLp 2 (fun i =>
    ∑ j : Vertex Prime Knot, (edgeWeight s i j : ℂ) * ξ j)

@[simp] theorem euclideanAct_apply (a : Algebra Prime Knot)
    (ξ : EuclideanHilbert Prime Knot) (i : Vertex Prime Knot) :
    euclideanAct a ξ i = a i * ξ i := rfl

@[simp] theorem euclideanDirac_apply (s : Source Prime Knot)
    (ξ : EuclideanHilbert Prime Knot) (i : Vertex Prime Knot) :
    euclideanDirac s ξ i =
      ∑ j : Vertex Prime Knot, (edgeWeight s i j : ℂ) * ξ j := rfl

/-- Algebra multiplication is faithfully represented. -/
theorem euclideanAct_mul (a b : Algebra Prime Knot)
    (ξ : EuclideanHilbert Prime Knot) :
    euclideanAct a (euclideanAct b ξ) =
      euclideanAct (fun i => a i * b i) ξ := by
  apply PiLp.ext
  intro i
  simp [euclideanAct, mul_assoc]

theorem euclideanAct_one (ξ : EuclideanHilbert Prime Knot) :
    euclideanAct (fun _ => (1 : ℂ)) ξ = ξ := by
  apply PiLp.ext
  intro i
  simp [euclideanAct]

theorem euclideanAct_injective :
    Function.Injective
      (fun a : Algebra Prime Knot =>
        euclideanAct (Prime := Prime) (Knot := Knot) a) := by
  intro a b hab
  funext i
  let oneVector : EuclideanHilbert Prime Knot :=
    WithLp.toLp 2 (fun _ => (1 : ℂ))
  have h := congrArg (fun f => f oneVector) hab
  have hi := congrArg (fun v : EuclideanHilbert Prime Knot => v i) h
  simpa [oneVector, euclideanAct] using hi

theorem euclidean_finiteDimensional :
    FiniteDimensional ℂ (EuclideanHilbert Prime Knot) := inferInstance

theorem euclidean_complete :
    CompleteSpace (EuclideanHilbert Prime Knot) := inferInstance

/-- The source Hermitian incidence has a genuinely complex adjoint identity. -/
theorem dirac_complex_pairing_selfAdjoint (s : Source Prime Knot)
    (ξ η : Hilbert Prime Knot) :
    pairing (dirac s ξ) η = pairing ξ (dirac s η) := by
  classical
  simp only [pairing, dirac]
  calc
    (∑ i : Vertex Prime Knot,
      star (∑ j : Vertex Prime Knot, (edgeWeight s i j : ℂ) * ξ j) * η i) =
        ∑ i : Vertex Prime Knot,
          ∑ j : Vertex Prime Knot,
            star ((edgeWeight s i j : ℂ) * ξ j) * η i := by
              apply Finset.sum_congr rfl
              intro i _
              rw [star_sum, Finset.sum_mul]
    _ = ∑ i : Vertex Prime Knot,
          ∑ j : Vertex Prime Knot,
            star (ξ j) * (edgeWeight s j i : ℂ) * η i := by
              apply Finset.sum_congr rfl
              intro i _
              apply Finset.sum_congr rfl
              intro j _
              rw [star_mul, edgeWeight_hermitian]
    _ = ∑ j : Vertex Prime Knot,
          ∑ i : Vertex Prime Knot,
            star (ξ j) * (edgeWeight s j i : ℂ) * η i := by
              rw [Finset.sum_comm]
    _ = ∑ j : Vertex Prime Knot,
          star (ξ j) *
            (∑ i : Vertex Prime Knot, (edgeWeight s j i : ℂ) * η i) := by
              apply Finset.sum_congr rfl
              intro j _
              rw [Finset.mul_sum]
              apply Finset.sum_congr rfl
              intro i _
              ring

/-- Coordinate pairing agrees with the actual Euclidean inner product. -/
theorem euclidean_inner_eq_pairing (ξ η : EuclideanHilbert Prime Knot) :
    inner ℂ ξ η = pairing (fun i => ξ i) (fun i => η i) := by
  classical
  simp [EuclideanSpace.inner_eq_star_dotProduct, dotProduct, pairing, mul_comm]

/-- The finite Dirac is symmetric on the actual complex Hilbert space. -/
theorem euclideanDirac_selfAdjoint (s : Source Prime Knot)
    (ξ η : EuclideanHilbert Prime Knot) :
    inner ℂ (euclideanDirac s ξ) η =
      inner ℂ ξ (euclideanDirac s η) := by
  rw [euclidean_inner_eq_pairing, euclidean_inner_eq_pairing]
  exact
    (dirac_complex_pairing_selfAdjoint s
      (fun i => ξ i) (fun i => η i))

/-- The involution corresponds to the Hilbert adjoint action. -/
theorem euclideanAct_star (a : Algebra Prime Knot)
    (ξ η : EuclideanHilbert Prime Knot) :
    inner ℂ (euclideanAct a ξ) η =
      inner ℂ ξ (euclideanAct (fun i => star (a i)) η) := by
  rw [euclidean_inner_eq_pairing, euclidean_inner_eq_pairing]
  exact
    (act_star a (fun i => ξ i) (fun i => η i))

/-- Algebraic noncommutative differential, recovering the original operator. -/
def spectralDifferential (s : Source Prime Knot) (a : Algebra Prime Knot)
    (ξ : Hilbert Prime Knot) : Hilbert Prime Knot := commutator s a ξ

/-- The differential kills scalar constants. -/
theorem spectralDifferential_const (s : Source Prime Knot)
    (c : ℂ) (ξ : Hilbert Prime Knot) :
    spectralDifferential s (fun _ => c) ξ = 0 := by
  funext i
  simp [spectralDifferential, commutator_formula]

/-- Leibniz for the actual diagonal representation and incidence operator. -/
theorem spectralDifferential_leibniz (s : Source Prime Knot)
    (a b : Algebra Prime Knot) (ξ : Hilbert Prime Knot) :
    spectralDifferential s (fun i => a i * b i) ξ =
      (fun i => spectralDifferential s a (act b ξ) i +
        act a (spectralDifferential s b ξ) i) := by
  exact commutator_leibniz s a b ξ

/-- A point-observable differential detects precisely the source incidence. -/
theorem linked_iff_point_differential (s : Source Prime Knot)
    (p : Prime) (k : Knot) :
    spectralDifferential s (delta (Sum.inr k))
      (delta (Sum.inr k)) (Sum.inl p) ≠ 0 ↔ Linked s p k := by
  rw [show spectralDifferential s (delta (Sum.inr k))
      (delta (Sum.inr k)) (Sum.inl p) =
        commutator s (delta (Sum.inr k)) (delta (Sum.inr k)) (Sum.inl p) from rfl,
      commutator_delta]
  simpa [delta] using (edgeWeight_ne_zero_iff s p k)

end Finite
end GRWTSK.Analysis.OperatorTheory.SpectralTheory.PrimeKnotAlexander
