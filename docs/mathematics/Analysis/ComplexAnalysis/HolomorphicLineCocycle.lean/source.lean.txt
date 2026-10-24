import GRWTSK.Analysis.Complex.HolomorphicIndexedCoverGluing
import GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology
import Mathlib.Topology.VectorBundle.Basic
import Mathlib.Tactic.NormNum

/-!
# Complex line bundles from holomorphic transition cocycles

The transition from chart `i` to chart `j` multiplies a coordinate by `g i j`.
Every transition is an actual holomorphic section on the exact overlap. Identity and triple
compatibility imply invertibility there. Ambient openness and coverage construct Mathlib's
`VectorBundleCore`, including its genuine total-space topology and local linear trivializations.

This is not a claim that the bundle is globally trivial, has a selected metric, or represents a
specified Picard/K-theory class. Mathlib's core fibers are definitionally copies of the model
fiber: this alone is NOT an endpoint, source-identity, or global-trivialization certificate.
-/

namespace GRWTSK.Analysis.Complex.HolomorphicLineCocycle

open GRWTSK.Analysis.Complex.HolomorphicRestriction
open GRWTSK.Analysis.Complex.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.Complex.HolomorphicEvaluationTopology (constantSection)

universe u

noncomputable section

/-- The canonical ambient representative retains the section's actual differentiability proof. -/
theorem ambientRepresentative_differentiableOn (A : Domain) (f : HolomorphicSection A) :
    DifferentiableOn ℂ (ambientRepresentative A (f : Section A)) A.carrier := by
  rcases f.property with ⟨F, hF, hEq⟩
  apply hF.congr
  intro z hz
  exact (ambientRepresentative_apply A (f : Section A) z hz).trans (hEq ⟨z, hz⟩).symm

/-- Chart-to-chart holomorphic transition data with the full triple-overlap law. -/
structure Cocycle {ι : Type u} (D : IndexedDomainCover ι) where
  transition : ∀ i j, HolomorphicSection (D.overlap i j)
  diagonal : ∀ i (z : ℂ) (hi : z ∈ (D.U i).carrier),
    (transition i i : Section (D.overlap i i)) ⟨z, hi, hi⟩ = 1
  compose : ∀ i j k (z : ℂ)
    (hi : z ∈ (D.U i).carrier) (hj : z ∈ (D.U j).carrier) (hk : z ∈ (D.U k).carrier),
    (transition j k : Section (D.overlap j k)) ⟨z, hj, hk⟩ *
        (transition i j : Section (D.overlap i j)) ⟨z, hi, hj⟩ =
      (transition i k : Section (D.overlap i k)) ⟨z, hi, hk⟩

namespace Cocycle

variable {ι : Type u} {D : IndexedDomainCover ι}

/-- The exact chart domain as an open subset of the selected base subtype. -/
def chartSet (D : IndexedDomainCover ι) (i : ι) : Set D.X.carrier :=
  {x | x.1 ∈ (D.U i).carrier}

/-- Extend only to make Mathlib's total transition function; off-overlap values have no authority. -/
def scalar (C : Cocycle D) (i j : ι) (x : D.X.carrier) : ℂ :=
  ambientRepresentative (D.overlap i j) (C.transition i j : Section (D.overlap i j)) x.1

theorem scalar_apply (C : Cocycle D) (i j : ι) (x : D.X.carrier)
    (hi : x.1 ∈ (D.U i).carrier) (hj : x.1 ∈ (D.U j).carrier) :
    C.scalar i j x = (C.transition i j : Section (D.overlap i j)) ⟨x.1, hi, hj⟩ :=
  ambientRepresentative_apply _ _ _ ⟨hi, hj⟩

@[simp]
theorem scalar_self (C : Cocycle D) (i : ι) (x : D.X.carrier)
    (hi : x.1 ∈ (D.U i).carrier) : C.scalar i i x = 1 := by
  rw [C.scalar_apply i i x hi hi]
  exact C.diagonal i x.1 hi

theorem scalar_comp (C : Cocycle D) (i j k : ι) (x : D.X.carrier)
    (hi : x.1 ∈ (D.U i).carrier) (hj : x.1 ∈ (D.U j).carrier)
    (hk : x.1 ∈ (D.U k).carrier) :
    C.scalar j k x * C.scalar i j x = C.scalar i k x := by
  rw [C.scalar_apply j k x hj hk, C.scalar_apply i j x hi hj,
    C.scalar_apply i k x hi hk]
  exact C.compose i j k x.1 hi hj hk

/-- Invertibility on overlaps follows from the actual cocycle, rather than from a label. -/
theorem scalar_inverse (C : Cocycle D) (i j : ι) (x : D.X.carrier)
    (hi : x.1 ∈ (D.U i).carrier) (hj : x.1 ∈ (D.U j).carrier) :
    C.scalar j i x * C.scalar i j x = 1 :=
  (C.scalar_comp i j i x hi hj hi).trans (C.scalar_self i x hi)

theorem scalar_ne_zero (C : Cocycle D) (i j : ι) (x : D.X.carrier)
    (hi : x.1 ∈ (D.U i).carrier) (hj : x.1 ∈ (D.U j).carrier) :
    C.scalar i j x ≠ 0 := by
  intro hz
  have h := C.scalar_inverse i j x hi hj
  rw [hz, mul_zero] at h
  exact zero_ne_one h

/-- Continuity is derived from holomorphy of the same overlap section. -/
theorem scalar_continuousOn (C : Cocycle D) (i j : ι) :
    ContinuousOn (C.scalar i j) (chartSet D i ∩ chartSet D j) := by
  have h := (ambientRepresentative_differentiableOn (D.overlap i j)
    (C.transition i j)).continuousOn
  exact h.comp continuous_subtype_val.continuousOn (fun _ hx => hx)

/-- The actual complex-linear coordinate change. -/
def coordChange (C : Cocycle D) (i j : ι) (x : D.X.carrier) : ℂ →L[ℂ] ℂ :=
  C.scalar i j x • ContinuousLinearMap.id ℂ ℂ

@[simp]
theorem coordChange_apply (C : Cocycle D) (i j : ι) (x : D.X.carrier) (a : ℂ) :
    C.coordChange i j x a = C.scalar i j x * a := rfl

/-- A genuine Mathlib vector-bundle core, not merely a proposed bundle interface. -/
def vectorBundleCore (C : Cocycle D) (hOpen : D.IsOpenCover) :
    VectorBundleCore ℂ D.X.carrier ℂ ι where
  baseSet := chartSet D
  isOpen_baseSet i := (hOpen.member_open i).preimage continuous_subtype_val
  indexAt := D.select
  mem_baseSet_at := D.select_mem
  coordChange := C.coordChange
  coordChange_self := by
    intro i x hi a
    rw [C.coordChange_apply, C.scalar_self i x hi, one_mul]
  continuousOn_coordChange := by
    intro i j
    exact (C.scalar_continuousOn i j).smul continuousOn_const
  coordChange_comp := by
    intro i j k x hx a
    simp only [coordChange_apply]
    rw [← mul_assoc, C.scalar_comp i j k x hx.1.1 hx.1.2 hx.2]

/-- The projection has the topology constructed by Mathlib's core, not the product topology. -/
theorem projection_continuous (C : Cocycle D) (hOpen : D.IsOpenCover) :
    Continuous (C.vectorBundleCore hOpen).proj :=
  (C.vectorBundleCore hOpen).continuous_proj

theorem projection_isOpenMap (C : Cocycle D) (hOpen : D.IsOpenCover) :
    IsOpenMap (C.vectorBundleCore hOpen).proj :=
  (C.vectorBundleCore hOpen).isOpenMap_proj

/-- An actual local continuous linear frame, defined only with chart-membership evidence. -/
def localFrame (C : Cocycle D) (hOpen : D.IsOpenCover) (i : ι) (x : D.X.carrier)
    (hi : x.1 ∈ (D.U i).carrier) : (C.vectorBundleCore hOpen).Fiber x ≃L[ℂ] ℂ :=
  ((C.vectorBundleCore hOpen).localTriv i).continuousLinearEquivAt ℂ x hi

/-- The realized bundle's chart transition is exactly the supplied holomorphic multiplier. -/
theorem localFrame_transition (C : Cocycle D) (hOpen : D.IsOpenCover)
    (i j : ι) (x : D.X.carrier)
    (hi : x.1 ∈ (D.U i).carrier) (hj : x.1 ∈ (D.U j).carrier) (a : ℂ) :
    ((C.vectorBundleCore hOpen).localTriv i).coordChangeL ℂ
        ((C.vectorBundleCore hOpen).localTriv j) x a = C.scalar i j x * a := by
  exact ((C.vectorBundleCore hOpen).localTriv_coordChange_eq i j ⟨hi, hj⟩ a).trans rfl

/-- Identity transitions are one explicit fixture, not the default for an arbitrary cocycle. -/
def identity (D : IndexedDomainCover ι) : Cocycle D where
  transition i j := 1
  diagonal := by intros; rfl
  compose := by intros; exact one_mul 1

/-- Constant changes of local frame produce a valid coboundary cocycle. -/
def constantFrames (D : IndexedDomainCover ι) (frame : ι → ℂˣ) : Cocycle D where
  transition i j := constantSection (D.overlap i j) ((frame j * (frame i)⁻¹ : ℂˣ) : ℂ)
  diagonal := by
    intro i z hi
    change ((frame i * (frame i)⁻¹ : ℂˣ) : ℂ) = 1
    simp
  compose := by
    intro i j k z hi hj hk
    change ((frame k * (frame j)⁻¹ : ℂˣ) : ℂ) *
        ((frame j * (frame i)⁻¹ : ℂˣ) : ℂ) =
      ((frame k * (frame i)⁻¹ : ℂˣ) : ℂ)
    exact congrArg (fun a : ℂˣ => (a : ℂ)) (show
      (frame k * (frame j)⁻¹) * (frame j * (frame i)⁻¹) = frame k * (frame i)⁻¹ by
        simp [mul_assoc])

end Cocycle

namespace Fixtures

/-- Duplicated charts are allowed, but their fiber frames need not coincide. -/
def twoCharts : IndexedDomainCover Bool where
  X := GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.whole
  U _ := GRWTSK.Analysis.Complex.HolomorphicRestriction.Fixtures.whole
  subset _ := fun _ h => h
  cover := fun _ h => ⟨false, h⟩

def twoCharts_isOpen : twoCharts.IsOpenCover := ⟨fun _ => isOpen_univ⟩

def minusOneUnit : ℂˣ where
  val := -1
  inv := -1
  val_inv := by norm_num
  inv_val := by norm_num

def signFrame : Bool → ℂˣ
  | false => 1
  | true => minusOneUnit

/-- Nonidentity transition, but explicitly a coboundary: no nontrivial bundle class is claimed. -/
def signCocycle : Cocycle twoCharts := Cocycle.constantFrames twoCharts signFrame

theorem sign_transition_not_identity :
    (signCocycle.transition false true : Section (twoCharts.overlap false true))
      ⟨0, Set.mem_univ _, Set.mem_univ _⟩ ≠ 1 := by
  change ((minusOneUnit * (1 : ℂˣ)⁻¹ : ℂˣ) : ℂ) ≠ 1
  norm_num [minusOneUnit]

/-- Pairwise inverses alone do not ensure the triple-overlap law. -/
def pairwiseSigns (i j : Fin 3) : ℂ := if i = j then 1 else -1

theorem pairwiseSigns_inverse (i j : Fin 3) : pairwiseSigns j i * pairwiseSigns i j = 1 := by
  by_cases h : i = j
  · subst j; simp [pairwiseSigns]
  · simp [pairwiseSigns, h, Ne.symm h]

theorem pairwiseSigns_not_cocycle :
    pairwiseSigns 1 2 * pairwiseSigns 0 1 ≠ pairwiseSigns 0 2 := by
  norm_num [pairwiseSigns]

end Fixtures
end
end GRWTSK.Analysis.Complex.HolomorphicLineCocycle
