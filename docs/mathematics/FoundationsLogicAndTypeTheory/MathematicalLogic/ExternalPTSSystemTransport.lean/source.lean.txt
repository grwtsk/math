import GRWTSK.Logic.ExternalPTSBridge

namespace GRWTSK.Logic.ExternalPTSBridge

universe u v

/-- An exact equivalence of reduction systems. -/
structure ReductionEquiv
    (X : Type u) (Y : Type v)
    (stepX : X → X → Prop) (stepY : Y → Y → Prop) where
  mapEquiv : X ≃ Y
  step_iff : ∀ x x', stepY (mapEquiv x) (mapEquiv x') ↔ stepX x x'

namespace ReductionEquiv

variable {X : Type u} {Y : Type v}
variable {stepX : X → X → Prop} {stepY : Y → Y → Prop}

/-- Reverse an exact reduction equivalence. -/
def symm (E : ReductionEquiv X Y stepX stepY) :
    ReductionEquiv Y X stepY stepX where
  mapEquiv := E.mapEquiv.symm
  step_iff y y' := by
    simpa using
      (E.step_iff (E.mapEquiv.symm y) (E.mapEquiv.symm y')).symm

/-- Normal expressions transport along an exact reduction equivalence. -/
theorem normal_forward
    (E : ReductionEquiv X Y stepX stepY) {x : X}
    (hx : Normal stepX x) : Normal stepY (E.mapEquiv x) := by
  intro y hy
  have hxy : stepX x (E.mapEquiv.symm y) := by
    apply (E.step_iff x (E.mapEquiv.symm y)).mp
    simpa using hy
  exact hx _ hxy

/-- Reflexive-transitive reduction paths transport along an exact reduction equivalence. -/
theorem reflTransGen_forward
    (E : ReductionEquiv X Y stepX stepY) {x x' : X}
    (h : Relation.ReflTransGen stepX x x') :
    Relation.ReflTransGen stepY (E.mapEquiv x) (E.mapEquiv x') := by
  induction h with
  | refl => exact Relation.ReflTransGen.refl
  | tail hxy hyz ih =>
      exact Relation.ReflTransGen.tail ih ((E.step_iff _ _).mpr hyz)

/-- Weak normalization transports along an exact reduction equivalence. -/
theorem weaklyNormalizing_forward
    (E : ReductionEquiv X Y stepX stepY) {x : X}
    (hx : WeaklyNormalizing stepX x) :
    WeaklyNormalizing stepY (E.mapEquiv x) := by
  obtain ⟨n, hxn, hn⟩ := hx
  exact ⟨E.mapEquiv n, E.reflTransGen_forward hxn, E.normal_forward hn⟩

/-- Strong normalization transports along an exact reduction equivalence. -/
theorem stronglyNormalizing_forward
    (E : ReductionEquiv X Y stepX stepY) {x : X}
    (hx : StronglyNormalizing stepX x) :
    StronglyNormalizing stepY (E.mapEquiv x) := by
  unfold StronglyNormalizing at *
  induction hx with
  | intro x h ih =>
      constructor
      intro y hy
      have hxy : stepX x (E.mapEquiv.symm y) := by
        apply (E.step_iff x (E.mapEquiv.symm y)).mp
        simpa using hy
      have hacc := ih (E.mapEquiv.symm y) hxy
      simpa using hacc

/-- Weak normalization reflects along an exact reduction equivalence. -/
theorem weaklyNormalizing_backward
    (E : ReductionEquiv X Y stepX stepY) {x : X}
    (hx : WeaklyNormalizing stepY (E.mapEquiv x)) :
    WeaklyNormalizing stepX x := by
  simpa [symm] using E.symm.weaklyNormalizing_forward hx

/-- Strong normalization reflects along an exact reduction equivalence. -/
theorem stronglyNormalizing_backward
    (E : ReductionEquiv X Y stepX stepY) {x : X}
    (hx : StronglyNormalizing stepY (E.mapEquiv x)) :
    StronglyNormalizing stepX x := by
  simpa [symm] using E.symm.stronglyNormalizing_forward hx

end ReductionEquiv

/-- An exact equivalence of legal reduction systems. -/
structure SystemEquiv
    (X : Type u) (Y : Type v)
    (LegalX : X → Prop) (LegalY : Y → Prop)
    (stepX : X → X → Prop) (stepY : Y → Y → Prop)
    extends ReductionEquiv X Y stepX stepY where
  legal_iff : ∀ x, LegalY (mapEquiv x) ↔ LegalX x

namespace SystemEquiv

variable {X : Type u} {Y : Type v}
variable {LegalX : X → Prop} {LegalY : Y → Prop}
variable {stepX : X → X → Prop} {stepY : Y → Y → Prop}

/-- System-wide weak normalization transports to the equivalent legal system. -/
theorem systemWeak_forward
    (E : SystemEquiv X Y LegalX LegalY stepX stepY)
    (hX : SystemWeaklyNormalizing LegalX stepX) :
    SystemWeaklyNormalizing LegalY stepY := by
  intro y hy
  let x : X := E.mapEquiv.symm y
  have hx : LegalX x := by
    apply (E.legal_iff x).mp
    simpa [x] using hy
  have hnorm :=
    E.toReductionEquiv.weaklyNormalizing_forward (hX x hx)
  simpa [x] using hnorm

/-- System-wide strong normalization reflects to the original legal system. -/
theorem systemStrong_backward
    (E : SystemEquiv X Y LegalX LegalY stepX stepY)
    (hY : SystemStronglyNormalizing LegalY stepY) :
    SystemStronglyNormalizing LegalX stepX := by
  intro x hx
  have hy : LegalY (E.mapEquiv x) := (E.legal_iff x).mpr hx
  exact E.toReductionEquiv.stronglyNormalizing_backward (hY _ hy)

/-- Transport a proof-carrying weak-to-strong theorem across an exact syntax,
legality, and reduction equivalence. -/
def transportWeakToStrong
    (E : SystemEquiv X Y LegalX LegalY stepX stepY)
    (B : WeakToStrongTheorem Y LegalY stepY) :
    WeakToStrongTheorem X LegalX stepX where
  source := B.source
  weakToStrong := by
    intro hX
    have hYweak : SystemWeaklyNormalizing LegalY stepY := E.systemWeak_forward hX
    have hYstrong : SystemStronglyNormalizing LegalY stepY := B.weakToStrong hYweak
    exact E.systemStrong_backward hYstrong

end SystemEquiv

end GRWTSK.Logic.ExternalPTSBridge
