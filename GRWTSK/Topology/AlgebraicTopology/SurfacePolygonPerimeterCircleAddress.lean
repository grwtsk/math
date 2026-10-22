/-
Copyright (c) 2026 R.A. Jacob Martone. Released under the MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
AddCircle and its real topological homeomorphisms: Oliver Nash and
Mathlib contributors, retaining their upstream attribution.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#889. Exact parent draft PR #872 head:
ee12e3e28b496d907802515628c84d4de0d37cb2.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
import Mathlib.Topology.Instances.AddCircle.Real
import Mathlib.Tactic

/-!
# A source-preserving continuous angular address on the polygon perimeter

The inherited unpaired cyclic perimeter P_k is the genuine topological
quotient of exactly 4(k+2) oriented unit intervals by their endpoint
seams. It has not been proved homeomorphic to the standard circle.

This file introduces ONE precise, source-bound step toward that
homeomorphism: every handle and every signed side receives its exact
index in the cyclic polygon order; a side at tangential parameter t
maps to the additive circle ℝ/(4(k+2))ℤ at angle index+t.

The three within-handle seams have equal real addresses. The
last-to-next-handle seam either has equal real addresses or runs
from the actual period N back to zero. The latter uses Mathlib's
TRUE quotient group theorem AddCircle.coe_period, not a false real
equality N=0.

Hence the angle map descends to a TRUE continuous function from the
original UnpairedPerimeter k to AddCircle N, then to the canonical
UnitAddCircle by an IMPORTED Mathlib rescaling homeomorphism.

Two distinct original corner source positions have distinct circle
addresses but their images under the previous perimeterAttach map
are the same paired-boundary vertex, exhibiting strict source loss.

OPEN: The angle map's global injectivity/surjectivity and therefore
the intended homeomorphism P_k ≃ₜ S¹. The fact that Mathlib has a
homeomorphism AddCircle N ≃ₜ UnitAddCircle does not prove our new
source quotient P_k is homeomorphic to that circle.

No genuine closed disk, cone-to-D² equivalence, CW-manifold surface,
cellular-chain comparison, van Kampen/Hurewicz, hyperbolic geodesic,
Selberg/Weil-Petersson, GUE, Chowla, zeta divisor or RH result.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleAddress

open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment

/-- The same finite signed side index as in #868 has the discrete
topology; its real interval parameter is not discretized. -/
local instance cornerDiscreteTopology (k : ℕ) :
    TopologicalSpace (PolygonCorner k) := ⊥

local instance cornerDiscrete (k : ℕ) :
    DiscreteTopology (PolygonCorner k) := ⟨rfl⟩

/-- The ordinal of each actual handle in the standard original order:
first=0, second=1, extra j=2+j. -/
def handleOrdinal (k : ℕ) : Handle k → ℕ
  | Sum.inl i => i.val
  | Sum.inr j => 2 + j.val

/-- The ordinal of the original directed side in the complete ordered
polygon word, retaining the exact first/second/extra handle IDs. -/
def directedSideOrdinal (k : ℕ) (c : PolygonCorner k) : ℕ :=
  4 * handleOrdinal k c.1 + c.2.val

/-- Exact circle period in real units: the 4g DIRECTED polygon sides,
not 2g unoriented generators. -/
def angularPeriod (k : ℕ) : ℝ :=
  (4 * (k + 2) : ℕ)

theorem angularPeriod_pos (k : ℕ) : 0 < angularPeriod k := by
  unfold angularPeriod
  positivity

theorem angularPeriod_ne_zero (k : ℕ) :
    angularPeriod k ≠ 0 :=
  ne_of_gt (angularPeriod_pos k)

/-- The actual handle successor advances the ordinal by one,
EXCEPT at the last handle where it wraps from g-1 to zero. -/
theorem handleOrdinal_next_or_wrap (k : ℕ) (h : Handle k) :
    handleOrdinal k (nextHandle k h) = handleOrdinal k h + 1 ∨
      (handleOrdinal k h + 1 = k + 2 ∧
        handleOrdinal k (nextHandle k h) = 0) := by
  cases h with
  | inl i =>
      fin_cases i
      · left
        simp [handleOrdinal, nextHandle, secondHandle]
      · by_cases hk : k = 0
        · subst k
          right
          simp [handleOrdinal, nextHandle, firstHandle]
        · left
          have hp : 0 < k := Nat.pos_of_ne_zero hk
          simp [handleOrdinal, nextHandle, hp]
  | inr j =>
      by_cases hj : j.val + 1 < k
      · left
        simp [handleOrdinal, nextHandle, hj]
        omega
      · right
        constructor
        · simp only [handleOrdinal]
          omega
        · simp [handleOrdinal, nextHandle, hj, firstHandle]

/-- The last directed edge of a handle ends at the next handle's
first side ordinal, or at the real period N before wrapping to zero.
This is an exact natural-number combinatorial theorem. -/
theorem directedSideOrdinal_next_or_period (k : ℕ) (h : Handle k) :
    directedSideOrdinal k (h, 3) + 1 =
      directedSideOrdinal k (nextHandle k h, 0) ∨
      (directedSideOrdinal k (h, 3) + 1 = 4 * (k + 2) ∧
        directedSideOrdinal k (nextHandle k h, 0) = 0) := by
  rcases handleOrdinal_next_or_wrap k h with hnext | ⟨hlast, hzero⟩
  · left
    dsimp only [directedSideOrdinal]
    omega
  · right
    constructor
    · dsimp only [directedSideOrdinal]
      omega
    · dsimp only [directedSideOrdinal]
      omega

/-- Every original directed side starts before N, and its unit-length
end coordinate is at most N. These are source IDs, not inferred angles. -/
theorem directedSideOrdinal_bound (k : ℕ) (c : PolygonCorner k) :
    directedSideOrdinal k c < 4 * (k + 2) := by
  rcases c with ⟨h, i⟩
  have hi : i.val < 4 := i.isLt
  have hh : handleOrdinal k h < k + 2 := by
    cases h with
    | inl j =>
        simp [handleOrdinal]
        omega
    | inr j =>
        simp [handleOrdinal]
        omega
  dsimp only [directedSideOrdinal]
  omega

/-- The source-oriented real angle of any original directed edge point,
as an ACTUAL class in Mathlib's additive circle with period N. -/
def sourceAngularAddress (k : ℕ) (p : BoundaryPoint k) :
    AddCircle (angularPeriod k) :=
  (((directedSideOrdinal k p.1 : ℝ) + (p.2 : ℝ) : ℝ) :
    AddCircle (angularPeriod k))

/-- Equality of real endpoint addresses produces equality of their
actual additive-circle values; the angular quotient itself is real. -/
theorem sourceAngularAddress_of_next_ordinal (k : ℕ)
    (c d : PolygonCorner k)
    (h : directedSideOrdinal k c + 1 = directedSideOrdinal k d) :
    sourceAngularAddress k (c, 1) = sourceAngularAddress k (d, 0) := by
  have heq : (directedSideOrdinal k c : ℝ) + 1 =
      (directedSideOrdinal k d : ℝ) + 0 := by
    exact_mod_cast h
  simpa [sourceAngularAddress] using
    congrArg (fun v : ℝ => (v : AddCircle (angularPeriod k))) heq

/-- First three local side seams have identical REAL endpoint
coordinates, not merely equal values after a quotient. -/
theorem localSideOrdinal_seam01 (k : ℕ) (h : Handle k) :
    directedSideOrdinal k (h, 0) + 1 =
      directedSideOrdinal k (h, 1) := by
  simp [directedSideOrdinal]

theorem localSideOrdinal_seam12 (k : ℕ) (h : Handle k) :
    directedSideOrdinal k (h, 1) + 1 =
      directedSideOrdinal k (h, 2) := by
  simp [directedSideOrdinal]

theorem localSideOrdinal_seam23 (k : ℕ) (h : Handle k) :
    directedSideOrdinal k (h, 2) + 1 =
      directedSideOrdinal k (h, 3) := by
  simp [directedSideOrdinal]

/-- The cyclic last-to-next seam is where the REAL endpoints can be
N and 0. Mathlib's actual AddCircle.coe_period proves their images
equal; we never use the false real equation N=0. -/
theorem sourceAngularAddress_cyclic_seam (k : ℕ) (h : Handle k) :
    sourceAngularAddress k ((h, 3), 1) =
      sourceAngularAddress k ((nextHandle k h, 0), 0) := by
  rcases directedSideOrdinal_next_or_period k h with hnext | ⟨hlast, hzero⟩
  · exact sourceAngularAddress_of_next_ordinal k _ _ hnext
  · have hreal : (directedSideOrdinal k (h, 3) : ℝ) + 1 =
        angularPeriod k := by
      simp only [angularPeriod]
      exact_mod_cast hlast
    calc
      sourceAngularAddress k ((h, 3), 1) =
          ((angularPeriod k : ℝ) : AddCircle (angularPeriod k)) := by
        unfold sourceAngularAddress
        simpa using
          congrArg (fun v : ℝ => (v : AddCircle (angularPeriod k))) hreal
      _ = 0 := AddCircle.coe_period _
      _ = sourceAngularAddress k ((nextHandle k h, 0), 0) := by
        simp [sourceAngularAddress, hzero]

/-- The angular address respects precisely the FOUR unpaired
perimeter seam constructors, including the genuine final wrap. -/
theorem sourceAngularAddress_respects_step (k : ℕ)
    {p q : BoundaryPoint k} (h : PerimeterSeamStep k p q) :
    sourceAngularAddress k p = sourceAngularAddress k q := by
  cases h with
  | seam01 h =>
      exact sourceAngularAddress_of_next_ordinal k _ _
        (localSideOrdinal_seam01 k h)
  | seam12 h =>
      exact sourceAngularAddress_of_next_ordinal k _ _
        (localSideOrdinal_seam12 k h)
  | seam23 h =>
      exact sourceAngularAddress_of_next_ordinal k _ _
        (localSideOrdinal_seam23 k h)
  | seamNext h =>
      exact sourceAngularAddress_cyclic_seam k h

/-- Full source EqvGen compatibility; without this a map on the
disjoint original intervals would NOT descend to the real perimeter. -/
theorem sourceAngularAddress_respects_connected (k : ℕ)
    {p q : BoundaryPoint k} (h : PerimeterConnected k p q) :
    sourceAngularAddress k p = sourceAngularAddress k q := by
  induction h with
  | rel p q hpq => exact sourceAngularAddress_respects_step k hpq
  | refl p => rfl
  | symm p q _ ih => exact ih.symm
  | trans p q r _ _ ih1 ih2 => exact ih1.trans ih2

/-- Actual continuity of the unquotiented circle address from the
genuine disjoint union of 4g real intervals. The finite source
ordinal varies continuously because its index topology is discrete. -/
theorem sourceAngularAddress_continuous (k : ℕ) :
    Continuous (sourceAngularAddress k) := by
  have hindex : Continuous
      (fun c : PolygonCorner k => (directedSideOrdinal k c : ℝ)) :=
    continuous_of_discreteTopology
  have hreal : Continuous
      (fun p : BoundaryPoint k =>
        (directedSideOrdinal k p.1 : ℝ) + (p.2 : ℝ)) :=
    (hindex.comp continuous_fst).add
      (continuous_subtype_val.comp continuous_snd)
  exact (AddCircle.continuous_mk' (angularPeriod k)).comp hreal

/-- The sought SOURCE-SPECIFIC continuous map from the real cyclic
unpaired perimeter to the already formalized additive circle. It is
a Quotient.lift, NOT a claim of a homeomorphism. -/
def perimeterAngle (k : ℕ) :
    UnpairedPerimeter k → AddCircle (angularPeriod k) :=
  Quotient.lift (sourceAngularAddress k) (by
    intro p q h
    exact sourceAngularAddress_respects_connected k h)

theorem perimeterAngle_continuous (k : ℕ) :
    Continuous (perimeterAngle k) := by
  apply Continuous.quotient_lift (sourceAngularAddress_continuous k)

/-- Exact commuting angular formula on EVERY original directed
edge and every tangential point, without loss of generator labels. -/
@[simp] theorem perimeterAngle_projection (k : ℕ)
    (p : BoundaryPoint k) :
    perimeterAngle k (perimeterProjection k p) =
      sourceAngularAddress k p := rfl

/-- Its cyclic endpoint compatibility in the REAL additive circle,
including the final last-to-first seam. -/
theorem perimeterAngle_cyclic_endpoint (k : ℕ) (h : Handle k) :
    perimeterAngle k (perimeterEdgeMap k h 3 1) =
      perimeterAngle k (perimeterEdgeMap k (nextHandle k h) 0 0) := by
  rw [perimeter_seam_next k h]

/-- The upstream library, not the present source, constructs an
actual HOMEOMORPHISM of each nonzero-period additive circle with the
standard real circle modulo the integers. -/
def periodCircleHomeomorph (k : ℕ) :
    AddCircle (angularPeriod k) ≃ₜ UnitAddCircle :=
  AddCircle.homeomorphAddCircle (angularPeriod k) (1 : ℝ)
    (angularPeriod_ne_zero k) (by norm_num)

/-- Continuous map from the original cyclic perimeter to the
standard topological additive unit circle ℝ/ℤ; continuity is obtained
by composing the real source map with an IMPORTED homeomorphism. -/
def perimeterUnitAngle (k : ℕ) :
    UnpairedPerimeter k → UnitAddCircle :=
  (periodCircleHomeomorph k) ∘ (perimeterAngle k)

theorem perimeterUnitAngle_continuous (k : ℕ) :
    Continuous (perimeterUnitAngle k) :=
  (periodCircleHomeomorph k).continuous.comp
    (perimeterAngle_continuous k)

/-- First original polygon corner has additive-circle coordinate
zero, witnessed at the actual original first signed side. -/
theorem firstCorner_angle_zero (k : ℕ) :
    perimeterAngle k
      (perimeterProjection k ((firstHandle k, (0 : Fin 4)), 0)) = 0 := by
  simp [perimeterAngle_projection, sourceAngularAddress,
    directedSideOrdinal, handleOrdinal, firstHandle]

/-- The START of the second directed source edge is one full angular
unit away in the period-N circle, not collapsed by cyclic seam gluing. -/
theorem nextCorner_angle_one (k : ℕ) :
    perimeterAngle k
      (perimeterProjection k ((firstHandle k, (1 : Fin 4)), 0)) =
        ((1 : ℝ) : AddCircle (angularPeriod k)) := by
  simp [perimeterAngle_projection, sourceAngularAddress,
    directedSideOrdinal, handleOrdinal, firstHandle]

/-- Period N=4(k+2) is at least 8, so the real representative 1
lies in the actual [0,N) fundamental domain. -/
theorem one_mem_circle_fundamental_domain (k : ℕ) :
    (1 : ℝ) ∈ Set.Ico 0 (angularPeriod k) := by
  constructor
  · norm_num
  · unfold angularPeriod
    exact_mod_cast (show 1 < 4 * (k + 2) by omega)

/-- Using Mathlib's actual fundamental-domain injectivity theorem,
the circle coordinate one is NONZERO modulo its true period N. -/
theorem angle_one_ne_zero (k : ℕ) :
    (((1 : ℝ) : AddCircle (angularPeriod k))) ≠ 0 := by
  let : Fact (0 < angularPeriod k) := ⟨angularPeriod_pos k⟩
  intro hz
  have h := (AddCircle.coe_eq_zero_iff_of_mem_Ico
    (one_mem_circle_fundamental_domain k)).mp hz
  norm_num at h

/-- Two original signed polygon corners have DIFFERENT angular
addresses in the unpaired perimeter. The coordinate map is therefore
nonconstant for every genus g≥2. -/
theorem distinct_first_corner_angles (k : ℕ) :
    perimeterAngle k
        (perimeterProjection k ((firstHandle k, (0 : Fin 4)), 0)) ≠
      perimeterAngle k
        (perimeterProjection k ((firstHandle k, (1 : Fin 4)), 0)) := by
  rw [firstCorner_angle_zero, nextCorner_angle_one]
  exact Ne.symm (angle_one_ne_zero k)

/-- However those SAME two source corners are identified in the
PAIRED boundary quotient by the authentic old corner-pairing theorem.
The angular map distinguishes information before attachment that
the true attaching-direction map loses. -/
theorem distinct_angles_same_attached_vertex (k : ℕ) :
    (perimeterAngle k
        (perimeterProjection k ((firstHandle k, (0 : Fin 4)), 0)) ≠
      perimeterAngle k
        (perimeterProjection k ((firstHandle k, (1 : Fin 4)), 0))) ∧
      (perimeterAttach k
        (perimeterProjection k ((firstHandle k, (0 : Fin 4)), 0)) =
       perimeterAttach k
        (perimeterProjection k ((firstHandle k, (1 : Fin 4)), 0))) := by
  refine ⟨distinct_first_corner_angles k, ?_⟩
  simp only [perimeterAttach_projection]
  exact all_original_corners_same_topological_vertex k _ _

/-- Genus two: the canonical angle map has a full period of eight
original DIRECTED polygon edge intervals, with a nonzero class 1. -/
theorem genusTwo_angular_period : angularPeriod 0 = 8 := by
  norm_num [angularPeriod]

/-- Genus three: the corresponding full period is twelve, with a
genuine additional source handle pair. -/
theorem genusThree_angular_period : angularPeriod 1 = 12 := by
  norm_num [angularPeriod]

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleAddress
