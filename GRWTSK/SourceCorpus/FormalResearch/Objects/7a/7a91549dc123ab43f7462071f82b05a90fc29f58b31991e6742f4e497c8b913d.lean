import DAF.FiniteDynamics.Permutation
import Mathlib.GroupTheory.Perm.Support

/-!
# Certified involutions on finite carriers

`CertifiedInvolution` records an action together with its exact support.  The
support is data, but `support_spec` prevents it from being an approximation:
it contains precisely the non-fixed points.  The induced permutation is
self-inverse, its point orbit has one or two elements, and both conjugation
and transport through an equivalence preserve the certificate.

This module is carrier-generic.  It has no dependency on matrices, terrain,
geometry, fabrics, or prismatic objects.
-/

namespace FinitePermutationDynamics

universe u v

/-- A finite involution with its exact set of moved points. -/
structure CertifiedInvolution
    (X : Type u) [Fintype X] [DecidableEq X] where
  act : X → X
  involutive : Function.Involutive act
  support : Finset X
  support_spec : ∀ x, x ∈ support ↔ act x ≠ x

namespace CertifiedInvolution

variable {X : Type u} [Fintype X] [DecidableEq X]

/-- The certified action regarded as an actual finite-state permutation. -/
def toPerm (ι : CertifiedInvolution X) : Equiv.Perm X where
  toFun := ι.act
  invFun := ι.act
  left_inv := ι.involutive
  right_inv := ι.involutive

@[simp]
theorem toPerm_apply (ι : CertifiedInvolution X) (x : X) :
    ι.toPerm x = ι.act x :=
  rfl

@[simp]
theorem toPerm_symm_apply (ι : CertifiedInvolution X) (x : X) :
    ι.toPerm.symm x = ι.act x :=
  rfl

@[simp]
theorem act_act (ι : CertifiedInvolution X) (x : X) :
    ι.act (ι.act x) = x :=
  ι.involutive x

@[simp]
theorem toPerm_mul_self (ι : CertifiedInvolution X) :
    ι.toPerm * ι.toPerm = 1 := by
  ext x
  simp [Equiv.Perm.mul_apply]

@[simp]
theorem toPerm_symm (ι : CertifiedInvolution X) :
    ι.toPerm.symm = ι.toPerm := by
  ext x
  rfl

/-- The stored support agrees with the standard support of the permutation. -/
theorem toPerm_support (ι : CertifiedInvolution X) :
    let p : Equiv.Perm X := toPerm ι
    p.support = ι.support := by
  ext x
  rw [Equiv.Perm.mem_support, ι.support_spec]
  rfl

theorem not_mem_support_iff (ι : CertifiedInvolution X) (x : X) :
    x ∉ ι.support ↔ ι.act x = x := by
  constructor
  · intro hx
    by_contra hne
    exact hx ((ι.support_spec x).mpr hne)
  · intro hx hmem
    exact (ι.support_spec x).mp hmem hx

theorem mem_support_act (ι : CertifiedInvolution X) (x : X) :
    ι.act x ∈ ι.support ↔ x ∈ ι.support := by
  rw [ι.support_spec, ι.support_spec]
  constructor
  · intro h
    intro hx
    exact h (congrArg ι.act hx)
  · intro h
    intro hx
    apply h
    have : x = ι.act x := by simpa using hx
    exact this.symm

/-- The (unordered) orbit of one point under an involution. -/
def pointOrbit (ι : CertifiedInvolution X) (x : X) : Finset X :=
  {x, ι.act x}

@[simp]
theorem mem_pointOrbit (ι : CertifiedInvolution X) (x y : X) :
    y ∈ ι.pointOrbit x ↔ y = x ∨ y = ι.act x := by
  simp [pointOrbit]

theorem pointOrbit_act (ι : CertifiedInvolution X) (x : X) :
    ι.pointOrbit (ι.act x) = ι.pointOrbit x := by
  ext y
  simp [pointOrbit, eq_comm, or_comm]

theorem pointOrbit_card (ι : CertifiedInvolution X) (x : X) :
    (ι.pointOrbit x).card = if ι.act x = x then 1 else 2 := by
  by_cases h : ι.act x = x
  · simp [pointOrbit, h]
  · have h' : x ≠ ι.act x := Ne.symm h
    simp [pointOrbit, h, h']

theorem pointOrbit_card_eq_one_iff (ι : CertifiedInvolution X) (x : X) :
    (ι.pointOrbit x).card = 1 ↔ ι.act x = x := by
  rw [pointOrbit_card]
  split_ifs with h
  · simp [h]
  · simp [h]

theorem pointOrbit_card_eq_two_iff (ι : CertifiedInvolution X) (x : X) :
    (ι.pointOrbit x).card = 2 ↔ x ∈ ι.support := by
  rw [pointOrbit_card, ι.support_spec]
  by_cases h : ι.act x = x <;> simp [h]

/-- A moved point and its partner form the same two-point orbit. -/
theorem transposition_pair (ι : CertifiedInvolution X) {x : X}
    (hx : x ∈ ι.support) :
    ι.act x ≠ x ∧ ι.act (ι.act x) = x ∧
      ι.pointOrbit (ι.act x) = ι.pointOrbit x := by
  exact ⟨(ι.support_spec x).mp hx, ι.involutive x, ι.pointOrbit_act x⟩

/-- Conjugate an involution without changing the ambient finite carrier. -/
def conjugate (g : Equiv.Perm X) (ι : CertifiedInvolution X) :
    CertifiedInvolution X where
  act x := g (ι.act (g.symm x))
  involutive x := by simp
  support := ι.support.image g
  support_spec x := by
    simp only [Finset.mem_image]
    constructor
    · rintro ⟨y, hy, rfl⟩
      exact fun h => (ι.support_spec y).mp hy (g.injective (by simpa using h))
    · intro hx
      refine ⟨g.symm x, ?_, by simp⟩
      apply (ι.support_spec (g.symm x)).mpr
      intro hfix
      apply hx
      simpa [hfix]

@[simp]
theorem conjugate_act (g : Equiv.Perm X) (ι : CertifiedInvolution X) (x : X) :
    (ι.conjugate g).act x = g (ι.act (g.symm x)) :=
  rfl

theorem conjugate_support (g : Equiv.Perm X) (ι : CertifiedInvolution X) :
    (ι.conjugate g).support = ι.support.image g :=
  rfl

theorem conjugate_toPerm (g : Equiv.Perm X) (ι : CertifiedInvolution X) :
    (ι.conjugate g).toPerm = FinitePermutationDynamics.conjugate g ι.toPerm := by
  ext x
  rfl

/-- Transport a certified involution to an equivalent finite carrier. -/
def transport
    {Y : Type v} [Fintype Y] [DecidableEq Y]
    (e : X ≃ Y) (ι : CertifiedInvolution X) : CertifiedInvolution Y where
  act y := e (ι.act (e.symm y))
  involutive y := by simp
  support := ι.support.image e
  support_spec y := by
    simp only [Finset.mem_image]
    constructor
    · rintro ⟨x, hx, rfl⟩
      exact fun h => (ι.support_spec x).mp hx (e.injective (by simpa using h))
    · intro hy
      refine ⟨e.symm y, ?_, by simp⟩
      apply (ι.support_spec (e.symm y)).mpr
      intro hfix
      apply hy
      simpa [hfix]

@[simp]
theorem transport_act
    {Y : Type v} [Fintype Y] [DecidableEq Y]
    (e : X ≃ Y) (ι : CertifiedInvolution X) (y : Y) :
    (ι.transport e).act y = e (ι.act (e.symm y)) :=
  rfl

theorem transport_support
    {Y : Type v} [Fintype Y] [DecidableEq Y]
    (e : X ≃ Y) (ι : CertifiedInvolution X) :
    (ι.transport e).support = ι.support.image e :=
  rfl

theorem transport_toPerm
    {Y : Type v} [Fintype Y] [DecidableEq Y]
    (e : X ≃ Y) (ι : CertifiedInvolution X) :
    (ι.transport e).toPerm = FinitePermutationDynamics.transport e ι.toPerm := by
  ext y
  rfl

end CertifiedInvolution

end FinitePermutationDynamics
