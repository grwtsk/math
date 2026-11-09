/-
Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / SOURCE_BOUND_ELABORATION: issue #1709 /
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
Hilbert space. `euclideanActCLM`, `euclideanDiracCLM` and `euclideanCommutatorCLM`
package the bounded operators. `euclideanDiracCLM_mem_resolventSet` and
`euclideanResolvent_isCompact`, together with both inverse equations,
supply compact resolvent for every nonreal parameter. These finite results
supply no separate fresh kernel replay or transitive axiom audit.

The unweighted finite Dirac is NOT the compression of the separately
described infinite weighted D0+B operator. Such an approximation requires
the actual weights and compatible finite compressions.
The [weighted finite-compression consumer](PrimeKnotAlexanderWeightedCompressions.lean)
retains those exact source weights, proves finite restriction/extension
coherence at candidate-source scope, and specifies the separate countable
Hilbert-domain and norm-tail obligations. Its Dirac is deliberately not
identified with euclideanDiracCLM.
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

/-! ## Bounded operators and compact resolvent

The continuous maps below retain the literal coordinate actions above.
Continuity follows from finite dimensionality, not from a change of norm.
Self-adjointness places the spectrum on the real axis. Thus for every
`z.im ≠ 0`, `z • 1 - D` is invertible; its inverse is compact because its
range is finite dimensional. We use Mathlib's `(z • 1 - D)⁻¹` convention,
which has the opposite sign to `(D - z • 1)⁻¹`. Both inverse equations are
recorded below. No infinite-dimensional approximation is inferred.
The nonreal hypothesis is essential for a uniform inverse statement: a
nonempty carrier with zero incidence has D = 0 and no inverse at z = 0.
Finite-dimensional compactness alone would not prove invertibility there.
The decisive premises shared with the core are finite dimensionality and
the exact Hermitian edge identity, not Alexander invariance. Independent
analytical review, separate fresh kernel replay and transitive axiom audit
remain NOT_RUN; source-bound elaboration observations are recorded in
[verification issue #1709](https://github.com/grwtsk/math/issues/1709).
-/

/-- The diagonal representation as a bounded complex-linear operator. -/
def euclideanActCLM (a : Algebra Prime Knot) :
    EuclideanHilbert Prime Knot →L[ℂ] EuclideanHilbert Prime Knot :=
  LinearMap.toContinuousLinearMap {
    toFun := euclideanAct a
    map_add' := by
      intro x y
      apply PiLp.ext
      intro i
      simp [euclideanAct, mul_add]
    map_smul' := by
      intro c x
      apply PiLp.ext
      intro i
      simp [euclideanAct, mul_left_comm] }

/-- The source incidence Dirac as a bounded complex-linear operator. -/
def euclideanDiracCLM (s : Source Prime Knot) :
    EuclideanHilbert Prime Knot →L[ℂ] EuclideanHilbert Prime Knot :=
  LinearMap.toContinuousLinearMap {
    toFun := euclideanDirac s
    map_add' := by
      intro x y
      apply PiLp.ext
      intro i
      simp only [euclideanDirac_apply, PiLp.add_apply, mul_add,
        Finset.sum_add_distrib]
    map_smul' := by
      intro c x
      apply PiLp.ext
      intro i
      simp only [euclideanDirac_apply, PiLp.smul_apply, smul_eq_mul]
      simp only [← Finset.mul_sum, mul_left_comm, RingHom.id_apply] }

@[simp] theorem euclideanActCLM_apply (a : Algebra Prime Knot)
    (ξ : EuclideanHilbert Prime Knot) :
    euclideanActCLM a ξ = euclideanAct a ξ := rfl

@[simp] theorem euclideanDiracCLM_apply (s : Source Prime Knot)
    (ξ : EuclideanHilbert Prime Knot) :
    euclideanDiracCLM s ξ = euclideanDirac s ξ := rfl

/-- The bounded representation remains faithful. -/
theorem euclideanActCLM_injective :
    Function.Injective (euclideanActCLM (Prime := Prime) (Knot := Knot)) := by
  intro a b h
  apply euclideanAct_injective
  funext ξ
  exact congrArg (fun T : EuclideanHilbert Prime Knot →L[ℂ]
    EuclideanHilbert Prime Knot => T ξ) h

/-- Multiplication is preserved in the bounded endomorphism algebra. -/
theorem euclideanActCLM_mul (a b : Algebra Prime Knot) :
    euclideanActCLM (fun i => a i * b i) = euclideanActCLM a * euclideanActCLM b := by
  ext ξ i
  exact congrArg (fun v : EuclideanHilbert Prime Knot => v i)
    (euclideanAct_mul a b ξ).symm

/-- The bounded representation is unital, also for an empty carrier. -/
theorem euclideanActCLM_one :
    euclideanActCLM (Prime := Prime) (Knot := Knot) (fun _ => 1) = 1 := by
  ext ξ i
  exact congrArg (fun v : EuclideanHilbert Prime Knot => v i) (euclideanAct_one ξ)

/-- The bounded package respects the complex Hilbert adjoint. -/
theorem euclideanActCLM_adjoint (a : Algebra Prime Knot) :
    (euclideanActCLM a).adjoint = euclideanActCLM (fun i => star (a i)) := by
  apply ContinuousLinearMap.ext
  intro ξ
  apply ext_inner_left ℂ
  intro η
  rw [ContinuousLinearMap.adjoint_inner_right]
  exact euclideanAct_star a η ξ

/-- Pointwise action has the usual bounded-operator estimate. -/
theorem euclideanActCLM_norm_le (a : Algebra Prime Knot)
    (ξ : EuclideanHilbert Prime Knot) :
    ‖euclideanActCLM a ξ‖ ≤ ‖euclideanActCLM a‖ * ‖ξ‖ :=
  (euclideanActCLM a).le_opNorm ξ

/-- The Dirac action has the usual bounded-operator estimate. -/
theorem euclideanDiracCLM_norm_le (s : Source Prime Knot)
    (ξ : EuclideanHilbert Prime Knot) :
    ‖euclideanDiracCLM s ξ‖ ≤ ‖euclideanDiracCLM s‖ * ‖ξ‖ :=
  (euclideanDiracCLM s).le_opNorm ξ

/-- The bounded package preserves the source complex adjoint identity. -/
theorem euclideanDiracCLM_isSelfAdjoint (s : Source Prime Knot) :
    IsSelfAdjoint (euclideanDiracCLM s) := by
  apply ContinuousLinearMap.isSelfAdjoint_iff_isSymmetric.mpr
  intro ξ η
  exact euclideanDirac_selfAdjoint s ξ η

/-- An explicit bounded extension of the commutator on its whole domain. -/
def euclideanCommutatorCLM (s : Source Prime Knot) (a : Algebra Prime Knot) :
    EuclideanHilbert Prime Knot →L[ℂ] EuclideanHilbert Prime Knot :=
  (euclideanDiracCLM s).comp (euclideanActCLM a) -
    (euclideanActCLM a).comp (euclideanDiracCLM s)

/-- The bounded commutator returns exactly to the original coordinate formula. -/
theorem euclideanCommutatorCLM_apply (s : Source Prime Knot)
    (a : Algebra Prime Knot) (ξ : EuclideanHilbert Prime Knot)
    (i : Vertex Prime Knot) :
    euclideanCommutatorCLM s a ξ i =
      commutator s a (fun j => ξ j) i := rfl

/-- Boundedness with the actual continuous operator norm. -/
theorem euclideanCommutatorCLM_norm_le (s : Source Prime Knot)
    (a : Algebra Prime Knot) (ξ : EuclideanHilbert Prime Knot) :
    ‖euclideanCommutatorCLM s a ξ‖ ≤ ‖euclideanCommutatorCLM s a‖ * ‖ξ‖ :=
  (euclideanCommutatorCLM s a).le_opNorm ξ

/-- Every nonreal shift is genuinely in the resolvent set. This also covers
an empty vertex carrier; no nonempty graph or incidence is assumed. -/
theorem euclideanDiracCLM_mem_resolventSet (s : Source Prime Knot)
    (z : ℂ) (hz : z.im ≠ 0) :
    z ∈ resolventSet ℂ (euclideanDiracCLM s) := by
  by_contra h
  have hs : z ∈ spectrum ℂ (euclideanDiracCLM s) := h
  exact hz ((euclideanDiracCLM_isSelfAdjoint s).im_eq_zero_of_mem_spectrum hs)

/-- Mathlib's resolvent is `(z • 1 - D)⁻¹`, not `(D - z • 1)⁻¹`.
At spectral points this definition alone is not an inverse claim. -/
def euclideanResolvent (s : Source Prime Knot) (z : ℂ) :
    EuclideanHilbert Prime Knot →L[ℂ] EuclideanHilbert Prime Knot :=
  resolvent (euclideanDiracCLM s) z

/-- The actual resolvent is compact at every nonreal parameter. -/
theorem euclideanResolvent_isCompact (s : Source Prime Knot)
    (z : ℂ) (_hz : z.im ≠ 0) :
    IsCompactOperator (euclideanResolvent s z) :=
  isCompactOperator_of_locallyCompactSpace_dom (euclideanResolvent s z)

/-- Left inverse equation certifying the resolvent's normalization. -/
theorem euclideanResolvent_left_inverse (s : Source Prime Knot)
    (z : ℂ) (hz : z.im ≠ 0) :
    (algebraMap ℂ (EuclideanHilbert Prime Knot →L[ℂ]
      EuclideanHilbert Prime Knot) z - euclideanDiracCLM s) *
      euclideanResolvent s z = 1 := by
  have h := euclideanDiracCLM_mem_resolventSet s z hz
  rw [euclideanResolvent, spectrum.resolvent_eq h]
  exact h.mul_val_inv

/-- Right inverse equation; compactness is attached to a two-sided inverse. -/
theorem euclideanResolvent_right_inverse (s : Source Prime Knot)
    (z : ℂ) (hz : z.im ≠ 0) :
    euclideanResolvent s z *
      (algebraMap ℂ (EuclideanHilbert Prime Knot →L[ℂ]
        EuclideanHilbert Prime Knot) z - euclideanDiracCLM s) = 1 := by
  have h := euclideanDiracCLM_mem_resolventSet s z hz
  rw [euclideanResolvent, spectrum.resolvent_eq h]
  exact h.val_inv_mul

/-- Compact resolvent as an actual two-sided inverse, with all hypotheses
visible. The finite carrier may be empty and the graph may be disconnected.
No conditional inverse at a spectral point can satisfy this theorem. -/
theorem euclidean_compactResolvent (s : Source Prime Knot)
    (z : ℂ) (hz : z.im ≠ 0) :
    ∃ R : EuclideanHilbert Prime Knot →L[ℂ] EuclideanHilbert Prime Knot,
      IsCompactOperator R ∧
      (algebraMap ℂ (EuclideanHilbert Prime Knot →L[ℂ]
        EuclideanHilbert Prime Knot) z - euclideanDiracCLM s) * R = 1 ∧
      R * (algebraMap ℂ (EuclideanHilbert Prime Knot →L[ℂ]
        EuclideanHilbert Prime Knot) z - euclideanDiracCLM s) = 1 :=
  ⟨euclideanResolvent s z, euclideanResolvent_isCompact s z hz,
    euclideanResolvent_left_inverse s z hz,
    euclideanResolvent_right_inverse s z hz⟩

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
