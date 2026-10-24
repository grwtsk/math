import GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSections
import Mathlib.Tactic.Ring

/-!
# Holomorphic changes of frame on a fixed indexed cover

A gauge is a family of units in the actual local holomorphic-section rings, satisfying the
oriented overlap equation between two exact cocycles. Both the forward and inverse multipliers
are therefore holomorphic. Gauge transport is not a metric, Picard-class, or arithmetic theorem.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGauge

open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle

universe u
noncomputable section

/-- Evaluation of a unit retains its exact local section and point. -/
def unitValue {A : Domain} (h : (HolomorphicSection A)ˣ) (z : A.carrier) : ℂ :=
  ((h : HolomorphicSection A) : Section A) z

@[simp] theorem unitValue_one (A : Domain) (z : A.carrier) :
    unitValue (1 : (HolomorphicSection A)ˣ) z = 1 := rfl

@[simp] theorem unitValue_mul {A : Domain} (h k : (HolomorphicSection A)ˣ)
    (z : A.carrier) : unitValue (h * k) z = unitValue h z * unitValue k z := rfl

@[simp] theorem unitValue_inv_mul {A : Domain} (h : (HolomorphicSection A)ˣ)
    (z : A.carrier) : unitValue h⁻¹ z * unitValue h z = 1 :=
  congrArg (fun f : HolomorphicSection A => (f : Section A) z) h.inv_val

@[simp] theorem unitValue_mul_inv {A : Domain} (h : (HolomorphicSection A)ˣ)
    (z : A.carrier) : unitValue h z * unitValue h⁻¹ z = 1 :=
  congrArg (fun f : HolomorphicSection A => (f : Section A) z) h.val_inv

/-- A chart gauge from `C` to `E`. Equal dimensions or point-map agreement cannot supply this law. -/
structure Gauge {ι : Type u} {D : IndexedDomainCover ι} (C E : Cocycle D) where
  frame : ∀ i, (HolomorphicSection (D.U i))ˣ
  compatible : ∀ i j (x : D.X.carrier)
    (hi : x.1 ∈ (D.U i).carrier) (hj : x.1 ∈ (D.U j).carrier),
    unitValue (frame j) ⟨x.1, hj⟩ * C.scalar i j x =
      E.scalar i j x * unitValue (frame i) ⟨x.1, hi⟩

namespace Gauge

variable {ι : Type u} {D : IndexedDomainCover ι} {C E F : Cocycle D}

theorem ext_frame {G H : Gauge C E} (h : G.frame = H.frame) : G = H := by
  cases G
  cases H
  cases h
  rfl

/-- Identity gauge; it does not replace a general transition function by one. -/
def identity (C : Cocycle D) : Gauge C C where
  frame _ := 1
  compatible := by intros; simp

/-- Inverse transport uses the inverse holomorphic unit in every chart. -/
def symm (G : Gauge C E) : Gauge E C where
  frame i := (G.frame i)⁻¹
  compatible := by
    intro i j x hi hj
    let a := unitValue (G.frame i) ⟨x.1, hi⟩
    let a' := unitValue (G.frame i)⁻¹ ⟨x.1, hi⟩
    let b := unitValue (G.frame j) ⟨x.1, hj⟩
    let b' := unitValue (G.frame j)⁻¹ ⟨x.1, hj⟩
    have haa : a * a' = 1 := unitValue_mul_inv _ _
    have hbb : b' * b = 1 := unitValue_inv_mul _ _
    have hg : b * C.scalar i j x = E.scalar i j x * a := G.compatible i j x hi hj
    change b' * E.scalar i j x = C.scalar i j x * a'
    calc
      b' * E.scalar i j x = (b' * (E.scalar i j x * a)) * a' := by
        simp only [mul_assoc, haa, mul_one]
      _ = (b' * (b * C.scalar i j x)) * a' := by rw [← hg]
      _ = C.scalar i j x * a' := by rw [← mul_assoc b' b, hbb, one_mul]

/-- Composition is `H` after `G`, and retains the exact middle cocycle. -/
def comp (G : Gauge C E) (H : Gauge E F) : Gauge C F where
  frame i := H.frame i * G.frame i
  compatible := by
    intro i j x hi hj
    simp only [unitValue_mul]
    calc
      (unitValue (H.frame j) ⟨x.1, hj⟩ * unitValue (G.frame j) ⟨x.1, hj⟩) *
          C.scalar i j x =
          unitValue (H.frame j) ⟨x.1, hj⟩ *
            (unitValue (G.frame j) ⟨x.1, hj⟩ * C.scalar i j x) := mul_assoc _ _ _
      _ = unitValue (H.frame j) ⟨x.1, hj⟩ *
          (E.scalar i j x * unitValue (G.frame i) ⟨x.1, hi⟩) := by
            rw [G.compatible i j x hi hj]
      _ = F.scalar i j x *
          (unitValue (H.frame i) ⟨x.1, hi⟩ * unitValue (G.frame i) ⟨x.1, hi⟩) := by
            rw [← mul_assoc, H.compatible i j x hi hj, mul_assoc]

@[simp] theorem comp_identity (G : Gauge C E) : G.comp (identity E) = G := by
  apply ext_frame
  funext i
  exact one_mul _

@[simp] theorem identity_comp (G : Gauge C E) : (identity C).comp G = G := by
  apply ext_frame
  funext i
  exact mul_one _

@[simp] theorem comp_symm (G : Gauge C E) : G.comp G.symm = identity C := by
  apply ext_frame
  funext i
  exact inv_mul_cancel (G.frame i)

@[simp] theorem symm_comp (G : Gauge C E) : G.symm.comp G = identity E := by
  apply ext_frame
  funext i
  exact mul_inv_cancel (G.frame i)

theorem comp_assoc {K : Cocycle D} (G : Gauge C E) (H : Gauge E F) (J : Gauge F K) :
    (G.comp H).comp J = G.comp (H.comp J) := by
  apply ext_frame
  funext i
  exact (mul_assoc _ _ _).symm

/-- Transport twisted local data through the specified gauge, including its exact overlap laws. -/
def mapFamily (G : Gauge C E) (s : TwistedFamily C) : TwistedFamily E where
  sectionAt i := (G.frame i : HolomorphicSection (D.U i)) * s.sectionAt i
  matching := by
    intro i j x hi hj
    change unitValue (G.frame j) ⟨x.1, hj⟩ *
        (s.sectionAt j : Section (D.U j)) ⟨x.1, hj⟩ =
      E.scalar i j x * (unitValue (G.frame i) ⟨x.1, hi⟩ *
        (s.sectionAt i : Section (D.U i)) ⟨x.1, hi⟩)
    rw [s.matching i j x hi hj, ← mul_assoc, G.compatible i j x hi hj, mul_assoc]

/-- Forward and inverse gauges give an equivalence, not an identification of the two cocycles. -/
def familyEquiv (G : Gauge C E) : TwistedFamily C ≃ TwistedFamily E where
  toFun := G.mapFamily
  invFun := G.symm.mapFamily
  left_inv := by
    intro s
    apply TwistedFamily.ext_sectionAt
    funext i
    change (↑((G.frame i)⁻¹) : HolomorphicSection (D.U i)) *
      ((G.frame i : HolomorphicSection (D.U i)) * s.sectionAt i) = s.sectionAt i
    rw [← mul_assoc, (G.frame i).inv_val, one_mul]
  right_inv := by
    intro s
    apply TwistedFamily.ext_sectionAt
    funext i
    change (G.frame i : HolomorphicSection (D.U i)) *
      ((↑((G.frame i)⁻¹) : HolomorphicSection (D.U i)) * s.sectionAt i) = s.sectionAt i
    rw [← mul_assoc, (G.frame i).val_inv, one_mul]

/-- The equivalence acts on the already constructed chart-holomorphic bundle sections. -/
def bundleSectionEquiv (G : Gauge C E) (hOpen : D.IsOpenCover) :
    BundleSection C hOpen ≃ BundleSection E hOpen :=
  ((sectionEquiv C hOpen).symm.trans G.familyEquiv).trans (sectionEquiv E hOpen)

/-- Exact local coordinates of the transported section. -/
theorem bundleSectionEquiv_coordinate (G : Gauge C E) (hOpen : D.IsOpenCover)
    (s : BundleSection C hOpen) (i : ι) (x : D.X.carrier)
    (hi : x.1 ∈ (D.U i).carrier) :
    chartCoordinate E hOpen (G.bundleSectionEquiv hOpen s).value i x =
      unitValue (G.frame i) ⟨x.1, hi⟩ * chartCoordinate C hOpen s.value i x :=
  (G.mapFamily s.localize).realize_coordinate hOpen i x hi

/-- Composition on families agrees with the pointwise composition of frame multipliers. -/
theorem mapFamily_comp (G : Gauge C E) (H : Gauge E F) (s : TwistedFamily C) :
    (G.comp H).mapFamily s = H.mapFamily (G.mapFamily s) := by
  apply TwistedFamily.ext_sectionAt
  funext i
  exact mul_assoc _ _ _

/-- The transported holomorphic section has continuity in the actual target bundle topology. -/
theorem transportedSection_continuous (G : Gauge C E) (hOpen : D.IsOpenCover)
    (s : BundleSection C hOpen) :
    Continuous (fun x =>
      (⟨x, (G.bundleSectionEquiv hOpen s).value x⟩ : (E.vectorBundleCore hOpen).TotalSpace)) :=
  (G.bundleSectionEquiv hOpen s).continuous_totalSection

end Gauge

namespace Construction

variable {ι : Type u} {D : IndexedDomainCover ι}

/-- Build the changed cocycle from arbitrary local holomorphic units; the triple law is derived. -/
def changeFrames (C : Cocycle D) (h : ∀ i, (HolomorphicSection (D.U i))ˣ) : Cocycle D where
  transition i j :=
    GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing.restrictionRingHom (D.rightToOverlap i j)
        (h j : HolomorphicSection (D.U j)) * C.transition i j *
      GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing.restrictionRingHom (D.leftToOverlap i j)
        (↑((h i)⁻¹) : HolomorphicSection (D.U i))
  diagonal := by
    intro i z hi
    change unitValue (h i) ⟨z, hi⟩ *
      (C.transition i i : Section (D.overlap i i)) ⟨z, hi, hi⟩ *
        unitValue (h i)⁻¹ ⟨z, hi⟩ = 1
    rw [C.diagonal i z hi, mul_one, unitValue_mul_inv]
  compose := by
    intro i j k z hi hj hk
    change
      (unitValue (h k) ⟨z, hk⟩ *
          (C.transition j k : Section (D.overlap j k)) ⟨z, hj, hk⟩ *
          unitValue (h j)⁻¹ ⟨z, hj⟩) *
        (unitValue (h j) ⟨z, hj⟩ *
          (C.transition i j : Section (D.overlap i j)) ⟨z, hi, hj⟩ *
          unitValue (h i)⁻¹ ⟨z, hi⟩) =
      unitValue (h k) ⟨z, hk⟩ *
        (C.transition i k : Section (D.overlap i k)) ⟨z, hi, hk⟩ *
        unitValue (h i)⁻¹ ⟨z, hi⟩
    calc
      _ = (unitValue (h k) ⟨z, hk⟩ *
          ((C.transition j k : Section (D.overlap j k)) ⟨z, hj, hk⟩ *
            (C.transition i j : Section (D.overlap i j)) ⟨z, hi, hj⟩) *
          unitValue (h i)⁻¹ ⟨z, hi⟩) *
        (unitValue (h j)⁻¹ ⟨z, hj⟩ * unitValue (h j) ⟨z, hj⟩) := by ring
      _ = _ := by rw [unitValue_inv_mul, mul_one, C.compose i j k z hi hj hk]

/-- The constructed change of frames is equipped with its actual gauge witness. -/
def changeFramesGauge (C : Cocycle D) (h : ∀ i, (HolomorphicSection (D.U i))ˣ) :
    Gauge C (changeFrames C h) where
  frame := h
  compatible := by
    intro i j x hi hj
    rw [C.scalar_apply i j x hi hj, (changeFrames C h).scalar_apply i j x hi hj]
    change unitValue (h j) ⟨x.1, hj⟩ *
        (C.transition i j : Section (D.overlap i j)) ⟨x.1, hi, hj⟩ =
      (unitValue (h j) ⟨x.1, hj⟩ *
        (C.transition i j : Section (D.overlap i j)) ⟨x.1, hi, hj⟩ *
        unitValue (h i)⁻¹ ⟨x.1, hi⟩) * unitValue (h i) ⟨x.1, hi⟩
    simp only [mul_assoc, unitValue_inv_mul, mul_one]

end Construction
end
end GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGauge
