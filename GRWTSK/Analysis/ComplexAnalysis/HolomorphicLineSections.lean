import GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle

/-!
# Holomorphic sections of the realized line bundle

Twisted local scalar data are identified with sections of the actual dependent Mathlib bundle
whose chart coordinates satisfy the existing holomorphy predicate. Continuity into the total
space is proved from these local witnesses. No global frame, global nonzero section, or metric
is assumed. Identity transitions recover the preceding indexed scalar gluing construction.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle

open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing (HolomorphicSection)

universe u

noncomputable section

variable {ι : Type u} {D : IndexedDomainCover ι}

/-- A matching family with the declared, possibly nonidentity, chart transition. -/
structure TwistedFamily (C : Cocycle D) where
  sectionAt : D.Family
  matching : ∀ i j (x : D.X.carrier)
    (hi : x.1 ∈ (D.U i).carrier) (hj : x.1 ∈ (D.U j).carrier),
    (sectionAt j : Section (D.U j)) ⟨x.1, hj⟩ =
      C.scalar i j x * (sectionAt i : Section (D.U i)) ⟨x.1, hi⟩

/-- The coordinate of a section in the actual local trivialization, not a free scalar alias. -/
def chartCoordinate (C : Cocycle D) (hOpen : D.IsOpenCover)
    (s : ∀ x, (C.vectorBundleCore hOpen).Fiber x) (i : ι) (x : D.X.carrier) : ℂ :=
  ((C.vectorBundleCore hOpen).localTriv i ⟨x, s x⟩).2

@[simp]
theorem chartCoordinate_apply (C : Cocycle D) (hOpen : D.IsOpenCover)
    (s : ∀ x, (C.vectorBundleCore hOpen).Fiber x) (i : ι) (x : D.X.carrier) :
    chartCoordinate C hOpen s i x = C.scalar (D.select x) i x * s x := rfl

/-- A section with chartwise holomorphy; total-space continuity is a derived theorem below. -/
structure BundleSection (C : Cocycle D) (hOpen : D.IsOpenCover) where
  value : ∀ x, (C.vectorBundleCore hOpen).Fiber x
  holomorphic : ∀ i, ExtendsHolomorphically (D.U i)
    (fun z => chartCoordinate C hOpen value i ⟨z.1, D.subset i z.2⟩)

namespace TwistedFamily

variable {C : Cocycle D}

/-- Recovering every local section determines the entire matching-family record. -/
theorem ext_sectionAt {s t : TwistedFamily C} (h : s.sectionAt = t.sectionAt) : s = t := by
  cases s
  cases t
  cases h
  rfl

/-- A fiber element in the preferred chart at the exact selected basepoint. -/
def realizeValue (s : TwistedFamily C) (hOpen : D.IsOpenCover) :
    ∀ x, (C.vectorBundleCore hOpen).Fiber x :=
  fun x => (s.sectionAt (D.select x) : Section (D.U (D.select x)))
    ⟨x.1, D.select_mem x⟩

/-- All chart coordinates are recovered, not only the one selected by choice. -/
theorem realize_coordinate (s : TwistedFamily C) (hOpen : D.IsOpenCover)
    (i : ι) (x : D.X.carrier) (hi : x.1 ∈ (D.U i).carrier) :
    chartCoordinate C hOpen (s.realizeValue hOpen) i x =
      (s.sectionAt i : Section (D.U i)) ⟨x.1, hi⟩ :=
  (s.matching (D.select x) i x (D.select_mem x) hi).symm

/-- Construction of a chart-holomorphic section of the realized vector bundle. -/
def realize (s : TwistedFamily C) (hOpen : D.IsOpenCover) : BundleSection C hOpen where
  value := s.realizeValue hOpen
  holomorphic := by
    intro i
    have h : (fun z : (D.U i).carrier =>
        chartCoordinate C hOpen (s.realizeValue hOpen) i ⟨z.1, D.subset i z.2⟩) =
        (s.sectionAt i : Section (D.U i)) := by
      funext z
      exact s.realize_coordinate hOpen i _ z.2
    rw [h]
    exact (s.sectionAt i).property

end TwistedFamily

namespace BundleSection

variable {C : Cocycle D} {hOpen : D.IsOpenCover}

theorem ext_value {s t : BundleSection C hOpen} (h : s.value = t.value) : s = t := by
  cases s
  cases t
  cases h
  rfl

/-- Read local holomorphic sections from the realized bundle, retaining the cocycle equations. -/
def localize (s : BundleSection C hOpen) : TwistedFamily C where
  sectionAt i := ⟨fun z => chartCoordinate C hOpen s.value i ⟨z.1, D.subset i z.2⟩,
    s.holomorphic i⟩
  matching := by
    intro i j x hi hj
    change C.scalar (D.select x) j x * s.value x =
      C.scalar i j x * (C.scalar (D.select x) i x * s.value x)
    rw [← mul_assoc, C.scalar_comp (D.select x) i j x (D.select_mem x) hi hj]

/-- Continuity of each chart coordinate is derived from its own holomorphy witness. -/
theorem chartCoordinate_continuousOn (s : BundleSection C hOpen) (i : ι) :
    ContinuousOn (chartCoordinate C hOpen s.value i) (Cocycle.chartSet D i) := by
  rcases s.holomorphic i with ⟨F, hF, hEq⟩
  have h : ContinuousOn (fun x : D.X.carrier => F x.1) (Cocycle.chartSet D i) :=
    hF.continuousOn.comp continuous_subtype_val.continuousOn (fun _ hx => hx)
  apply h.congr
  intro x hx
  exact (hEq ⟨x.1, hx⟩).symm

/-- Chartwise holomorphy gives continuity into the actual glued total-space topology. -/
theorem continuous_totalSection (s : BundleSection C hOpen) :
    Continuous (fun x => (⟨x, s.value x⟩ : (C.vectorBundleCore hOpen).TotalSpace)) := by
  apply continuous_iff_continuousAt.mpr
  intro x
  apply (FiberBundle.continuousAt_section ℂ x).mpr
  change ContinuousAt (chartCoordinate C hOpen s.value (D.select x)) x
  exact (s.chartCoordinate_continuousOn (D.select x)).continuousAt
    (((hOpen.member_open (D.select x)).preimage continuous_subtype_val).mem_nhds
      (D.select_mem x))

end BundleSection

/-- Twisted local data and genuine chart-holomorphic bundle sections are mutually recoverable. -/
def sectionEquiv (C : Cocycle D) (hOpen : D.IsOpenCover) :
    TwistedFamily C ≃ BundleSection C hOpen where
  toFun s := s.realize hOpen
  invFun s := s.localize
  left_inv := by
    intro s
    apply TwistedFamily.ext_sectionAt
    funext i
    apply Subtype.ext
    funext z
    exact s.realize_coordinate hOpen i ⟨z.1, D.subset i z.2⟩ z.2
  right_inv := by
    intro s
    apply BundleSection.ext_value
    funext x
    change C.scalar (D.select x) (D.select x) x * s.value x = s.value x
    rw [C.scalar_self (D.select x) x (D.select_mem x), one_mul]

/-- Identity transitions convert ordinary indexed matching to twisted matching. -/
def identityTwistedFamily (s : D.Family) (h : D.Matching s) :
    TwistedFamily (Cocycle.identity D) where
  sectionAt := s
  matching := by
    intro i j x hi hj
    rw [(Cocycle.identity D).scalar_apply i j x hi hj]
    change (s j : Section (D.U j)) ⟨x.1, hj⟩ =
      1 * (s i : Section (D.U i)) ⟨x.1, hi⟩
    rw [one_mul]
    exact (D.matching_apply s h i j x.1 hi hj).symm

/-- The identity-cocycle realization recovers the preceding scalar indexed glue exactly. -/
theorem identity_realization_eq_scalar_glue (hOpen : D.IsOpenCover)
    (s : D.Family) (h : D.Matching s) (x : D.X.carrier) :
    (identityTwistedFamily s h).realizeValue hOpen x =
      (D.glue hOpen s h : Section D.X) x := rfl

end
end GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
