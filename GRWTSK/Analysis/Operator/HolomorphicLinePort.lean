import GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSections

/-!
# Descent of operators through holomorphic line-bundle charts

Pointwise continuous-linear fiber operators descend only with the exact overlap intertwining
law. Their basewise continuity, holomorphic-section preservation, metric compatibility and
unbounded domains are different obligations. A holomorphic multiplication operator supplies a
concrete producer for section preservation; no general analytic regularity is assumed from the
mere existence of a fiber operator.
-/

namespace GRWTSK.Analysis.Operator.HolomorphicLinePort

open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle

universe u

noncomputable section

variable {ι : Type u} {D : IndexedDomainCover ι}

/-- A local operator family whose actual chart maps intertwine on every overlap. -/
structure CompatibleOperators (C : Cocycle D) where
  localOp : ∀ i, (D.U i).carrier → ℂ →L[ℂ] ℂ
  intertwines : ∀ i j (x : D.X.carrier)
    (hi : x.1 ∈ (D.U i).carrier) (hj : x.1 ∈ (D.U j).carrier) (a : ℂ),
    localOp j ⟨x.1, hj⟩ (C.scalar i j x * a) =
      C.scalar i j x * localOp i ⟨x.1, hi⟩ a

namespace CompatibleOperators

variable {C : Cocycle D}

/-- The operator on the exact fiber, in the preferred chart chosen by the bundle core. -/
def descend (A : CompatibleOperators C) (hOpen : D.IsOpenCover) (x : D.X.carrier) :
    (C.vectorBundleCore hOpen).Fiber x →L[ℂ] (C.vectorBundleCore hOpen).Fiber x :=
  A.localOp (D.select x) ⟨x.1, D.select_mem x⟩

/-- Every chart sees its own declared operator; the preferred chart does not change the result. -/
theorem coordinate_descend (A : CompatibleOperators C) (hOpen : D.IsOpenCover)
    (i : ι) (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier)
    (a : (C.vectorBundleCore hOpen).Fiber x) :
    ((C.vectorBundleCore hOpen).localTriv i ⟨x, A.descend hOpen x a⟩).2 =
      A.localOp i ⟨x.1, hi⟩ (((C.vectorBundleCore hOpen).localTriv i ⟨x, a⟩).2) :=
  (A.intertwines (D.select x) i x (D.select_mem x) hi a).symm

/-- Chart equations uniquely determine the descended operator on each actual fiber. -/
theorem descend_unique (A : CompatibleOperators C) (hOpen : D.IsOpenCover)
    (T : ∀ x, (C.vectorBundleCore hOpen).Fiber x →L[ℂ] (C.vectorBundleCore hOpen).Fiber x)
    (hT : ∀ i (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier)
      (a : (C.vectorBundleCore hOpen).Fiber x),
      ((C.vectorBundleCore hOpen).localTriv i ⟨x, T x a⟩).2 =
        A.localOp i ⟨x.1, hi⟩ (((C.vectorBundleCore hOpen).localTriv i ⟨x, a⟩).2)) :
    T = A.descend hOpen := by
  funext x
  apply ContinuousLinearMap.ext
  intro a
  have h := hT (D.select x) x (D.select_mem x) a
  change C.scalar (D.select x) (D.select x) x * T x a =
    A.localOp (D.select x) ⟨x.1, D.select_mem x⟩
      (C.scalar (D.select x) (D.select x) x * a) at h
  simpa only [C.scalar_self (D.select x) x (D.select_mem x), one_mul] using h

def identity (C : Cocycle D) : CompatibleOperators C where
  localOp _ _ := ContinuousLinearMap.id ℂ ℂ
  intertwines := by intros; rfl

/-- Composition retains the exact same cocycle and every intermediate chart equation. -/
def comp (A B : CompatibleOperators C) : CompatibleOperators C where
  localOp i z := (B.localOp i z).comp (A.localOp i z)
  intertwines := by
    intro i j x hi hj a
    change B.localOp j ⟨x.1, hj⟩ (A.localOp j ⟨x.1, hj⟩ (C.scalar i j x * a)) =
      C.scalar i j x * B.localOp i ⟨x.1, hi⟩ (A.localOp i ⟨x.1, hi⟩ a)
    rw [A.intertwines i j x hi hj a,
      B.intertwines i j x hi hj (A.localOp i ⟨x.1, hi⟩ a)]

@[simp]
theorem descend_identity (hOpen : D.IsOpenCover) (x : D.X.carrier) :
    (identity C).descend hOpen x = ContinuousLinearMap.id ℂ _ := rfl

@[simp]
theorem descend_comp (A B : CompatibleOperators C) (hOpen : D.IsOpenCover)
    (x : D.X.carrier) :
    (A.comp B).descend hOpen x = (B.descend hOpen x).comp (A.descend hOpen x) := rfl

/-- Holomorphic preservation is a separate local analytic law, not automatic from fiber linearity. -/
def PreservesHolomorphy (A : CompatibleOperators C) : Prop :=
  ∀ i (f : HolomorphicSection (D.U i)),
    ExtendsHolomorphically (D.U i) (fun z => A.localOp i z ((f : Section (D.U i)) z))

/-- Lift an operator to actual holomorphic bundle sections using its explicit analytic law. -/
def mapSection (A : CompatibleOperators C) (hOpen : D.IsOpenCover)
    (hA : A.PreservesHolomorphy) (s : BundleSection C hOpen) : BundleSection C hOpen where
  value x := A.descend hOpen x (s.value x)
  holomorphic := by
    intro i
    have heq : (fun z : (D.U i).carrier => chartCoordinate C hOpen
        (fun x => A.descend hOpen x (s.value x)) i ⟨z.1, D.subset i z.2⟩) =
        (fun z => A.localOp i z ((s.localize.sectionAt i : Section (D.U i)) z)) := by
      funext z
      exact A.coordinate_descend hOpen i ⟨z.1, D.subset i z.2⟩ z.2 _
    rw [heq]
    exact hA i (s.localize.sectionAt i)

/-- The lifted section is continuous in the actual total-space topology. -/
theorem mapSection_continuous (A : CompatibleOperators C) (hOpen : D.IsOpenCover)
    (hA : A.PreservesHolomorphy) (s : BundleSection C hOpen) :
    Continuous (fun x =>
      (⟨x, (A.mapSection hOpen hA s).value x⟩ : (C.vectorBundleCore hOpen).TotalSpace)) :=
  (A.mapSection hOpen hA s).continuous_totalSection

/-- A concrete producer: multiplication by a global holomorphic scalar section. -/
def multiplication (C : Cocycle D) (f : HolomorphicSection D.X) : CompatibleOperators C where
  localOp i z := (f : Section D.X) ⟨z.1, D.subset i z.2⟩ • ContinuousLinearMap.id ℂ ℂ
  intertwines := by
    intro i j x hi hj a
    change (f : Section D.X) x * (C.scalar i j x * a) =
      C.scalar i j x * ((f : Section D.X) x * a)
    exact mul_left_comm _ _ _

/-- Holomorphy of multiplication is proved by the existing section-ring product closure. -/
theorem multiplication_preservesHolomorphy (f : HolomorphicSection D.X) :
    (multiplication C f).PreservesHolomorphy := by
  intro i g
  exact ((GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing.restrictionRingHom (D.xTo i) f) *
    g).property

end CompatibleOperators

namespace Fixtures

open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle.Fixtures

/-- Equal-dimensional local operators can still disagree on an overlap. -/
def badLocalOp (i : Bool) (_ : (twoCharts.U i).carrier) : ℂ →L[ℂ] ℂ :=
  if i then ContinuousLinearMap.id ℂ ℂ else 0

/-- Zero in one chart and identity in the other cannot define one descended operator. -/
theorem badLocalOp_no_descent :
    ¬ ∃ A : CompatibleOperators (Cocycle.identity twoCharts), A.localOp = badLocalOp := by
  rintro ⟨A, hA⟩
  have h := A.intertwines false true ⟨0, Set.mem_univ _⟩
    (Set.mem_univ _) (Set.mem_univ _) 1
  rw [hA] at h
  rw [(Cocycle.identity twoCharts).scalar_apply false true ⟨0, Set.mem_univ _⟩
    (Set.mem_univ _) (Set.mem_univ _)] at h
  simpa [badLocalOp, Cocycle.identity] using h

end Fixtures
end
end GRWTSK.Analysis.Operator.HolomorphicLinePort
