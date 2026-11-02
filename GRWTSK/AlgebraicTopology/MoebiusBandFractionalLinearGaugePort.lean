/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Geometry.SphereFourMobiusTorusPorts
import GRWTSK.AlgebraicTopology.MoebiusBandGaugePacking
import Mathlib.Tactic

/-!
# The existing fractional-linear torus view preserves disjointness

Distinguish a topological nonorientable Moebius BAND from a fractional-
linear Mobius circle map. The GRWTSK sphere-four source's view map is a
real inverse pair of fractional-linear transforms on two torus ports.
It is therefore a genuine equivalence of its ThreeTorus view carrier.

The equivalence preserves disjoint subsets. The source sphere index and
source payload are preserved separately by the existing lift/lower
ledger. No embedding of the Moebius band into R^3 or quantitative
packing theorem is inferred from this torus view equivalence.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.MoebiusBandFractionalLinearGaugePort

open GRWTSK.Geometry.SphereFourMobiusTorusPorts

/-- The real fractional-linear circle maps from the genuine
SphereFourThreeTorus source produce a bijective geometric view. -/
def torusMobiusView : ThreeTorus ≃ ThreeTorus where
  toFun := liftTorus
  invFun := lowerTorus
  left_inv := lowerTorus_liftTorus
  right_inv := liftTorus_lowerTorus

/-- For a bijective gauge, disjointness is an exact invariant. -/
theorem disjoint_image_iff {X Y : Type*} (e : X ≃ Y) (S T : Set X) :
    Disjoint (e '' S) (e '' T) ↔ Disjoint S T := by
  constructor
  · intro h
    apply Set.disjoint_left.mpr
    intro x hxS hxT
    exact (Set.disjoint_left.mp h)
      (Set.mem_image_of_mem e hxS)
      (Set.mem_image_of_mem e hxT)
  · intro h
    apply Set.disjoint_left.mpr
    intro y hyS hyT
    rcases hyS with ⟨x, hxS, rfl⟩
    rcases hyT with ⟨z, hzT, hzx⟩
    have hzx' : z = x := e.injective hzx
    exact (Set.disjoint_left.mp h hxS) (hzx' ▸ hzT)

/-- The actual geometric fractional-linear view cannot merge two
disjoint sets of torus points. -/
theorem torusMobiusView_preserves_disjoint (S T : Set ThreeTorus)
    (h : Disjoint S T) :
    Disjoint (liftTorus '' S) (liftTorus '' T) :=
  (disjoint_image_iff torusMobiusView S T).2 h

/-- The original four-sphere source port is recovered from the
visible, gauge-transformed torus view through the SOURCE ledger. -/
theorem torusView_source_port_roundtrip {m : ℕ} (p : SourcePort m) :
    lowerPort (liftPort p) = p := lowerPort_liftPort p

end GRWTSK.Topology.AlgebraicTopology.MoebiusBandFractionalLinearGaugePort
