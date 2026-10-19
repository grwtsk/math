module

public meta import Surface.Core.Classification
public import Mathlib.NumberTheory.LSeries.DirichletContinuation
public import Mathlib.NumberTheory.MulChar.Lemmas

/-!
# Character-local Dirichlet GRH

This file introduces only the exact zero-location proposition for one
complex Dirichlet character.  Mathlib's analytically continued
`DirichletCharacter.LFunction` requires a nonzero modulus, so that
requirement is explicit in the typeclass boundary.

Primitivity is deliberately not bundled into the definition: it is a
hypothesis at the family and functional-equation boundaries.  In
particular, this module constructs no inhabitant of the GRH proposition.
-/

public section

namespace Surface.Core.DirichletGRH

noncomputable section

/-- A primitive complex Dirichlet character together with the positive
modulus required by mathlib's analytic `LFunction` API.  Bundling the
positivity proof here gives character-indexed constructions one canonical
source for their `NeZero` instance. -/
structure PrimitiveCharacterData where
  modulus : ℕ
  modulus_pos : 0 < modulus
  character : DirichletCharacter ℂ modulus
  primitive : DirichletCharacter.IsPrimitive character

namespace PrimitiveCharacterData

/-- The bundled positive modulus is nonzero. -/
@[surface_adapter]
theorem modulus_ne_zero (data : PrimitiveCharacterData) :
    data.modulus ≠ 0 :=
  Nat.ne_of_gt data.modulus_pos

/-- Install mathlib's required nonzero-modulus instance directly from the
bundled positivity proof. -/
instance (data : PrimitiveCharacterData) : NeZero data.modulus :=
  ⟨data.modulus_ne_zero⟩

end PrimitiveCharacterData

/-- GRH for the analytic continuation of one Dirichlet character.  The
name records the intended use at primitive characters; primitivity itself
is supplied separately wherever the functional equation is invoked. -/
@[expose]
def GRHForPrimitiveCharacter
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) : Prop :=
  ∀ s : ℂ,
    DirichletCharacter.LFunction chi s = 0 →
    0 < s.re →
    s.re < 1 →
    s.re = (1 / 2 : ℝ)

/-- The open critical strip, independent of a particular character. -/
@[expose]
def openCriticalStrip : Set ℂ :=
  {s | 0 < s.re ∧ s.re < 1}

@[surface_adapter, simp]
theorem mem_openCriticalStrip_iff (s : ℂ) :
    s ∈ openCriticalStrip ↔ 0 < s.re ∧ s.re < 1 :=
  Iff.rfl

/-- The open critical-strip zero predicate used by the GRH statement. -/
@[expose]
def IsCriticalStripZero
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) (s : ℂ) : Prop :=
  DirichletCharacter.LFunction chi s = 0 ∧ s ∈ openCriticalStrip

/-- Inversion preserves primitivity because it preserves the conductor. -/
@[surface_adapter]
theorem isPrimitive_inv
    {q : ℕ} {chi : DirichletCharacter ℂ q}
    (hchi : DirichletCharacter.IsPrimitive chi) :
    DirichletCharacter.IsPrimitive chi⁻¹ := by
  rw [DirichletCharacter.isPrimitive_def,
    DirichletCharacter.conductor_inv]
  exact hchi

/-- Evaluation of the inverse complex character is pointwise complex
conjugation. -/
@[surface_adapter]
theorem inv_apply_eq_star
    {q : ℕ} (chi : DirichletCharacter ℂ q) (a : ZMod q) :
    chi⁻¹ a = star (chi a) :=
  (MulChar.star_apply' chi a).symm

namespace PrimitiveCharacterData

/-- The inverse of bundled primitive-character data, at the same modulus. -/
@[expose]
def inv (data : PrimitiveCharacterData) : PrimitiveCharacterData where
  modulus := data.modulus
  modulus_pos := data.modulus_pos
  character := data.character⁻¹
  primitive := isPrimitive_inv data.primitive

@[surface_adapter, simp]
theorem inv_modulus (data : PrimitiveCharacterData) :
    data.inv.modulus = data.modulus := rfl

@[surface_adapter, simp]
theorem inv_character (data : PrimitiveCharacterData) :
    data.inv.character = data.character⁻¹ := rfl

/-- The local GRH proposition attached to bundled primitive-character
data.  The `NeZero` instance comes from the bundle. -/
@[expose]
def GRH (data : PrimitiveCharacterData) : Prop :=
  GRHForPrimitiveCharacter data.character

end PrimitiveCharacterData

@[surface_novel, surface_published]
theorem grhForPrimitiveCharacter_iff_criticalStripZeros
    {q : ℕ} [NeZero q] (chi : DirichletCharacter ℂ q) :
    GRHForPrimitiveCharacter chi ↔
      ∀ s : ℂ, IsCriticalStripZero chi s → s.re = (1 / 2 : ℝ) := by
  constructor
  · intro h s hs
    exact h s hs.1 hs.2.1 hs.2.2
  · intro h s hs h0 h1
    exact h s ⟨hs, h0, h1⟩

/-- At modulus one, the generic character-local statement is literally the
critical-strip Riemann-zeta statement supplied by mathlib's
`LFunction_modOne_eq`. -/
@[surface_adapter]
theorem grhForPrimitiveCharacter_modOne_iff
    (chi : DirichletCharacter ℂ 1) :
    GRHForPrimitiveCharacter chi ↔
      ∀ s : ℂ,
        riemannZeta s = 0 →
        0 < s.re →
        s.re < 1 →
        s.re = (1 / 2 : ℝ) := by
  simp only [GRHForPrimitiveCharacter,
    DirichletCharacter.LFunction_modOne_eq]

/-- A primitive principal character at a nonzero modulus necessarily has
modulus one. -/
@[surface_adapter]
theorem modulus_eq_one_of_isPrimitive_eq_one
    {q : ℕ} [NeZero q] {chi : DirichletCharacter ℂ q}
    (hPrimitive : DirichletCharacter.IsPrimitive chi)
    (hchi : chi = 1) : q = 1 := by
  subst chi
  rw [DirichletCharacter.isPrimitive_def,
    DirichletCharacter.conductor_one] at hPrimitive
  exact hPrimitive.symm

end

end Surface.Core.DirichletGRH
