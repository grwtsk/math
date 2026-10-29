/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's topological unitary results retain Jireh Loreaux and Bhavik Mehta's
upstream authorship and Apache-2.0 license. Other imports retain their licenses. -/
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.YangMillsAndOtherGaugeTheoriesInQuantumFieldTheory.SU2Wilson
import Mathlib.Analysis.Complex.Basic
import Mathlib.Topology.Algebra.Star.Unitary
import Mathlib.Topology.Instances.Matrix
import Mathlib.Topology.MetricSpace.ProperSpace

/-!
# The actual compact topological group SU(2)

The carrier is the maintained special-unitary matrix subtype. Inversion is
conjugate transpose, hence continuous in its inherited matrix topology. The
carrier is closed by the unitary equations and determinant-one condition. Its
entries lie in the closed complex unit disk by actual matrix unitarity. The
finite matrix product of these disks is compact, so its closed SU(2) subset is
compact. These are proved instances, not assumed compactness or Haar fields.

The consumer is normalized compact-group Haar measure for the finite Wilson
regulator. No continuum, reflection-positivity or spectral assertion follows.

SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.GaugeTheory.SU2Topology

open GRWTSK.Geometry.GaugeTheory.SU2Wilson

/-- Actual matrix inversion on SU(2) is the continuous matrix star map. -/
instance continuousInvSU2 : ContinuousInv SU2 where
  continuous_inv := by
    apply continuous_induced_rng.mpr
    change Continuous (fun g : SU2 => star (g.val : Mat2))
    exact continuous_subtype_val.star

/-- Multiplication is inherited from the matrix submonoid; inversion was
proved continuous above. -/
instance topologicalGroupSU2 : IsTopologicalGroup SU2 where

/-- The special-unitary carrier is closed in the actual complex matrices. -/
theorem isClosed_su2 :
    IsClosed (Matrix.specialUnitaryGroup (Fin 2) ℂ : Set Mat2) := by
  have hset : (Matrix.specialUnitaryGroup (Fin 2) ℂ : Set Mat2) =
      (unitary Mat2 : Set Mat2) ∩ {A : Mat2 | A.det = 1} := by
    ext A
    exact Matrix.mem_specialUnitaryGroup_iff
  rw [hset]
  exact isClosed_unitary.inter
    (isClosed_eq (continuous_id.matrix_det) continuous_const)

/-- The closed SU(2) subset lies in the compact product of four actual closed
complex unit disks. No surrogate parameter space or finite group is used. -/
theorem isCompact_su2 :
    IsCompact (Matrix.specialUnitaryGroup (Fin 2) ℂ : Set Mat2) := by
  have hbox : IsCompact ((Metric.closedBall (0 : ℂ) 1).matrix : Set Mat2) :=
    (isCompact_closedBall (0 : ℂ) 1).matrix
  apply hbox.of_isClosed_subset isClosed_su2
  intro A hA
  change ∀ i j, A i j ∈ Metric.closedBall (0 : ℂ) 1
  intro i j
  rw [Metric.mem_closedBall, dist_zero_right]
  exact entry_norm_le_one (⟨A, hA⟩ : SU2) i j

/-- Compactness of the actual special-unitary subtype supplies the local
compactness needed by the normalized Haar construction. -/
instance compactSpaceSU2 : CompactSpace SU2 :=
  isCompact_iff_compactSpace.mp isCompact_su2

end GRWTSK.Geometry.GaugeTheory.SU2Topology
