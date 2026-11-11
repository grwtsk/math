/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported Mathlib results retain their upstream authorship and license. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.RationalEnclosureCertificates
import Mathlib.Topology.Instances.Rat
import Mathlib.Topology.Constructions

/-!
# Rational sign witnesses for an enclosed real matrix

MSC2020: 15A63, 65G20; consumer RP-OC-06, math issue #1806.
Uses Program 10's existing rational Packet, guard and PSD checker. The only
new executable test is a strictly negative rational quadratic upper bound.
A source enclosure is a separate mathematical premise, never a Boolean field.
Failure to accept is inconclusive. The completeness theorem is conditional on
sound enclosures with arbitrarily small vectorwise error budgets; it gives no
runtime bound, contour evaluator, or arithmetic zero. No simplicity is assumed.

FORMAL_SOURCE_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom
audit and independent review NOT_RUN. Pinned dependencies and declaration-level
arguments are in the adjacent provenance records. No new axioms or proof holes.
-/

set_option autoImplicit false
open scoped BigOperators

namespace GRWTSK.RationalHermiteSignCertificates

open GRWTSK.HermiteMomentCertificates
open GRWTSK.LinearAlgebra.RationalEnclosureCertificates

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- Finite quadratic evaluation is continuous, without a symmetry premise. -/
theorem continuous_quadraticValue (H : Matrix ι ι ℝ) :
    Continuous (quadraticValue H) := by
  unfold quadraticValue
  fun_prop

/-- Strictly negative real directions admit rational coefficient witnesses.
The finite product topology supplies coordinatewise open neighborhoods. -/
theorem exists_rational_negative (H : Matrix ι ι ℝ)
    (hnegative : ∃ x : ι → ℝ, quadraticValue H x < 0) :
    ∃ q : ι → ℚ, quadraticValue H (fun i => (q i : ℝ)) < 0 := by
  classical
  obtain ⟨x, hx⟩ := hnegative
  have hopen : IsOpen {y : ι → ℝ | quadraticValue H y < 0} :=
    isOpen_lt (continuous_quadraticValue H) continuous_const
  obtain ⟨U, hU, hsub⟩ := isOpen_pi_iff'.mp hopen x hx
  have hrat : ∀ i : ι, ∃ q : ℚ, (q : ℝ) ∈ U i := by
    intro i
    exact (Rat.denseRange_cast : DenseRange ((↑) : ℚ → ℝ)).exists_mem_open
      (hU i).1 ⟨x i, (hU i).2⟩
  choose q hq using hrat
  exact ⟨q, hsub (fun i _ => hq i)⟩

/-- Rational vectors suffice for the exact quadratic sign, not just basis vectors. -/
theorem nonnegative_iff_rational (H : Matrix ι ι ℝ) :
    Nonnegative H ↔ ∀ q : ι → ℚ, 0 ≤ quadraticValue H (fun i => (q i : ℝ)) := by
  constructor
  · intro h q
    exact h _
  · intro h x
    by_contra hx
    obtain ⟨q, hq⟩ := exists_rational_negative H ⟨x, lt_of_not_ge hx⟩
    exact (not_lt_of_ge (h q)) hq

/-- Fully rational upper endpoint, including every entrywise error term. -/
def negativeUpper (P : Packet ι) (q : ι → ℚ) : ℚ :=
  (∑ i, ∑ j, q i * P.center i j * q j) +
    ∑ i, ∑ j, P.radius i j * |q i * q j|

/-- Reuse the Packet guard. No source identity or enclosure is guessed here. -/
def negativeCheck (P : Packet ι) (q : ι → ℚ) : Bool :=
  decide P.Guard && decide (negativeUpper P q < 0)

/-- Exact rational-to-real conversion of the complete upper bound. -/
theorem negativeUpper_cast (P : Packet ι) (q : ι → ℚ) :
    (negativeUpper P q : ℝ) =
      quadraticValue (fun i j => (P.center i j : ℝ)) (fun i => (q i : ℝ)) +
      errorBudget (fun i j => (P.radius i j : ℝ)) (fun i => (q i : ℝ)) := by
  unfold negativeUpper quadraticValue errorBudget
  push_cast <;> rfl

/-- Acceptance returns strict negativity of the TRUE enclosed real matrix. -/
theorem negativeCheck_sound (P : Packet ι) (q : ι → ℚ) (H : Matrix ι ι ℝ)
    (hencloses : Encloses P H) (hcheck : negativeCheck P q = true) :
    quadraticValue H (fun i => (q i : ℝ)) < 0 := by
  have hq : negativeUpper P q < 0 :=
    of_decide_eq_true (Bool.and_eq_true.mp hcheck).2
  have hr : (negativeUpper P q : ℝ) < 0 := by exact_mod_cast hq
  rw [negativeUpper_cast] at hr
  exact negative_of_errorBudget H _ _ _ hencloses hr

/-- Conditional finite-certificate completeness. A midpoint error and its added
radius cost at most TWICE the vectorwise budget. No precision monotonicity is used. -/
theorem exists_accepted_of_negative (H : Matrix ι ι ℝ) (P : ℕ → Packet ι)
    (hguard : ∀ k, (P k).Guard) (hencloses : ∀ k, Encloses (P k) H)
    (hsmall : ∀ (q : ι → ℚ) (δ : ℝ), 0 < δ → ∃ k,
      errorBudget (fun i j => ((P k).radius i j : ℝ)) (fun i => (q i : ℝ)) < δ)
    (hnegative : ∃ x : ι → ℝ, quadraticValue H x < 0) :
    ∃ (q : ι → ℚ) (k : ℕ), negativeCheck (P k) q = true := by
  obtain ⟨q, hq⟩ := exists_rational_negative H hnegative
  obtain ⟨k, hk⟩ := hsmall q (-quadraticValue H (fun i => (q i : ℝ)) / 2)
    (by linarith)
  have hcenter := quadraticValue_le_add_errorBudget
    (fun i j => ((P k).center i j : ℝ)) H
    (fun i j => ((P k).radius i j : ℝ)) (fun i => (q i : ℝ))
    (fun i j => by simpa only [abs_sub_comm] using hencloses k i j)
  have hupper : (negativeUpper (P k) q : ℝ) < 0 := by
    rw [negativeUpper_cast]
    linarith
  have hrat : negativeUpper (P k) q < 0 := by exact_mod_cast hupper
  refine ⟨q, k, ?_⟩
  simp [negativeCheck, hguard k, hrat]

/-- Any explicitly surjective enumeration reaches the accepted rational packet.
Surjectivity and total enclosure production are not inferred from a heuristic. -/
theorem exists_accepted_on_schedule (P : ℕ → Packet ι)
    (schedule : ℕ → (ι → ℚ) × ℕ) (hfair : Function.Surjective schedule)
    (haccepted : ∃ q k, negativeCheck (P k) q = true) :
    ∃ t, negativeCheck (P (schedule t).2) (schedule t).1 = true := by
  obtain ⟨q, k, hk⟩ := haccepted
  obtain ⟨t, ht⟩ := hfair (q, k)
  exact ⟨t, by simpa only [ht] using hk⟩

/-- A wholly synthetic rational two-point control, not an arithmetic zero list. -/
def pairPacket (r : ℚ) : Packet (Fin 2) where
  center := !![2, 0; 0, -2]
  radius := fun _ _ => r
  metric := 1
  tolerance := 0

/-- Zero-radius data for the imaginary pair has an accepted negative direction. -/
theorem pairPacket_accepts : negativeCheck (pairPacket 0) ![0, 1] = true := by
  decide

/-- An upper endpoint equal to zero is not a strict negative certificate. -/
theorem pairPacket_boundary_rejected :
    negativeCheck (pairPacket 2) ![0, 1] = false := by
  decide

/-- Negative radii are rejected even when the arithmetic upper value is negative. -/
theorem pairPacket_invalid_radius_rejected :
    negativeCheck (pairPacket (-1)) ![0, 1] = false := by
  decide

end GRWTSK.RationalHermiteSignCertificates
