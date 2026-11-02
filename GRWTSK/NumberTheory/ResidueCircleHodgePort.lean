/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.

SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
This leaf is deliberately not imported by GRWTSK.lean.
It has not been checked by Lean, Lake, fresh kernel replay, or axiom audit.
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.CyclicResidueHodge
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FramedFiberPort
import Mathlib.Topology.Instances.AddCircle.Real

/-!
# First residue-class circle-port energy bridge

The finite base is the ordered cyclic residue graph `ZMod q`. Its sampled
positions have intrinsic addresses in the period-one circle `UnitAddCircle`.
The unbounded real-line lift, winding count, continuous bundle gluing, and
holonomy are separate targets, not purported consequences of this address.

Keep the original arithmetic observable: full additive/gcd reconstruction
includes nonunit residues. Orthogonality of the pointwise unit/nonunit
selectors does *not* imply orthogonality after cyclic differentiation; the
mixed edge term is retained, with its sign.

This first finite port operates on real one-dimensional fibers. Its energy
law requires an explicit square-preservation hypothesis. It does not by
itself give a bundle, an algebraic cycle, an identification with a rational
CM Hodge class, or a nontrivial Hodge-theoretic realization map. The richer
operator/adjoint transport belongs to the imported `HodgePort` interface.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Farey.ResidueCircleHodgePort

open scoped BigOperators
open GRWTSK.Geometry.Hodge.FiniteGraphCellular
open GRWTSK.NumberTheory.Farey.CyclicResidueHodge
open GRWTSK.NumberTheory.Farey.ResidueChannelDecomposition

variable (q : ℕ) [NeZero q]

/-- The canonical q-torsion sample address on the additive circle, expressed
using the canonical ZMod representative. This is a sample map, not a chart
homeomorphism or a universal-cover equivalence. -/
def residuePhase (r : ZMod q) : UnitAddCircle :=
  ((r.val : ℝ) / (q : ℝ) : UnitAddCircle)

/-- Exact reconstruction retains the complete complex signal, including
all gcd strata, nonunits, and phases. -/
theorem complete_gcd_reconstruction (f : ZMod q → ℂ) :
    (fun r => ∑ d in q.divisors, gcdStratumPart q d f r) = f :=
  sum_gcdStratumPart q f

/-- Rational-to-real extension commutes with the actual oriented cyclic
coboundary. No Hodge class or cycle-class assertion is used. -/
theorem rational_coboundary_cast (f : ZMod q → ℚ) :
    (cyclicIncidence q).coboundary ℝ (fun r => (f r : ℝ)) =
      (fun r => (((cyclicIncidence q).coboundary ℚ f r : ℚ) : ℝ)) := by
  simpa only [OrientedIncidence.castCochain] using
    (cyclicIncidence q).cast_coboundary f

/-- Actual positive cyclic graph energy, not a new quadratic source. -/
def tubeEnergy (f : ZMod q → ℝ) : ℝ :=
  (cyclicIncidence q).energy f

/-- The complete signed inner-product cross-energy of two finite edge
signals. It is not pointwise multiplication of residue selectors. -/
def mixedTubeEnergy (f g : ZMod q → ℝ) : ℝ :=
  ∑ r : ZMod q,
    (cyclicIncidence q).coboundary ℝ f r *
      (cyclicIncidence q).coboundary ℝ g r

/-- Source cyclic energy is nonnegative. -/
theorem tubeEnergy_nonneg (f : ZMod q → ℝ) :
    0 ≤ tubeEnergy q f :=
  cyclic_energy_nonneg q f

/-- The zero-energy (parallel) sections are exactly those with matching
values across every cyclic edge. This is the elementary harmonic-tube kernel
for the untwisted finite circle, not a claim about geometric (p,p)-classes. -/
theorem tubeEnergy_eq_zero_iff_parallel (f : ZMod q → ℝ) :
    tubeEnergy q f = 0 ↔ ∀ r : ZMod q, f (r + 1) = f r := by
  simpa [tubeEnergy, cyclicIncidence] using
    (cyclicIncidence q).energy_eq_zero_iff_edge_eq f

/-- Exact polarization identity, including both ordered cross contributions.
This is the fundamental energy ledger for a residue-sector decomposition. -/
theorem tubeEnergy_add (f g : ZMod q → ℝ) :
    tubeEnergy q (f + g) =
      tubeEnergy q f + tubeEnergy q g + 2 * mixedTubeEnergy q f g := by
  classical
  unfold tubeEnergy mixedTubeEnergy OrientedIncidence.energy
  simp only [OrientedIncidence.coboundary_apply, Pi.add_apply]
  calc
    (∑ r : ZMod q,
      (f (r + 1) + g (r + 1) - (f r + g r)) ^ 2) =
        ∑ r : ZMod q,
          ((f (r + 1) - f r) ^ 2 +
            (g (r + 1) - g r) ^ 2 +
            2 * ((f (r + 1) - f r) * (g (r + 1) - g r))) := by
      apply Finset.sum_congr rfl
      intro r _
      ring
    _ = _ := by
      simp only [Finset.sum_add_distrib, ← Finset.mul_sum]

/-- Pointwise unit selector on the real form of the original signal. -/
def unitReal (f : ZMod q → ℝ) : ZMod q → ℝ :=
  fun r => if IsUnit r then f r else 0

/-- Complementary nonunit selector on the real form. -/
def nonunitReal (f : ZMod q → ℝ) : ZMod q → ℝ :=
  fun r => if IsUnit r then 0 else f r

/-- Unit and nonunit signals reconstruct the original source exactly. -/
theorem unitReal_add_nonunitReal (f : ZMod q → ℝ) :
    unitReal q f + nonunitReal q f = f := by
  classical
  funext r
  by_cases hr : IsUnit r <;> simp [unitReal, nonunitReal, hr]

/-- Complete unit/nonunit energy accounting. In general the mixed energy
is NOT zero: selector orthogonality is not derivative orthogonality. -/
theorem tubeEnergy_unit_nonunit (f : ZMod q → ℝ) :
    tubeEnergy q f =
      tubeEnergy q (unitReal q f) +
        tubeEnergy q (nonunitReal q f) +
          2 * mixedTubeEnergy q (unitReal q f) (nonunitReal q f) := by
  calc
    tubeEnergy q f =
        tubeEnergy q (unitReal q f + nonunitReal q f) := by
      rw [unitReal_add_nonunitReal q f]
    _ = _ := tubeEnergy_add q (unitReal q f) (nonunitReal q f)

/-- A simple real linear fiber port, applied at each cyclic sample. -/
def transportSignal (U : ℝ →ₗ[ℝ] ℝ) (f : ZMod q → ℝ) :
    ZMod q → ℝ :=
  fun r => U (f r)

/-- Under an explicit isometric (square-preserving) port hypothesis, the
entire cyclic edge energy transports exactly. This does not assume that an
arbitrary port is unitary. -/
theorem tubeEnergy_transport
    (U : ℝ →ₗ[ℝ] ℝ)
    (hU : ∀ x : ℝ, (U x) ^ 2 = x ^ 2)
    (f : ZMod q → ℝ) :
    tubeEnergy q (transportSignal q U f) = tubeEnergy q f := by
  classical
  unfold tubeEnergy OrientedIncidence.energy
  apply Finset.sum_congr rfl
  intro r _
  change (U (f (r + 1)) - U (f r)) ^ 2 =
    (f (r + 1) - f r) ^ 2
  rw [← map_sub]
  exact hU (f (r + 1) - f r)

end GRWTSK.NumberTheory.Farey.ResidueCircleHodgePort
