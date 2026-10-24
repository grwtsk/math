# Complete source: GRWTSK.Topology.AlgebraicTopology.ConeCongruence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6299db1e2b3848e33a2b9e0753600cdcf37ca9c8` · SHA-256 `8ebb8452a5cb7522d17aeb0a8dab79b084686e647c0b12254ca5e90afb4b11b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI Codex.
Imported Mathlib results retain their original credits and licenses. -/
import GRWTSK.Topology.AlgebraicTopology.CircleCone

/-!
# Homeomorphisms of cones induced by homeomorphisms of their bases

The cone relation collapses the radius-zero end. Applying a homeomorphism
to the base and leaving the radius unchanged preserves exactly this relation.
The induced quotient homeomorphism preserves radius, boundary and apex, and
respects identity and composition.
-/

set_option autoImplicit false

noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.ConeCongruence

variable {X Y Z : Type*} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]

/-- The radius descends to the cone, including its collapsed end. -/
def radius : CircleCone.Cone X → unitInterval :=
  Quotient.lift Prod.snd fun p q hpq => by
    rcases hpq with rfl | hz
    · rfl
    · exact Subtype.ext (hz.1.trans hz.2.symm)

omit [TopologicalSpace X] in
@[simp] theorem radius_coneMk (x : X) (r : unitInterval) :
    radius (CircleCone.coneMk x r) = r := rfl

/-- A base homeomorphism induces the actual quotient homeomorphism of cones. -/
def homeomorph (h : X ≃ₜ Y) : CircleCone.Cone X ≃ₜ CircleCone.Cone Y :=
  Homeomorph.Quotient.congr (h.prodCongr (Homeomorph.refl unitInterval)) fun p q => by
    change (p = q ∨ ((p.2 : ℝ) = 0 ∧ (q.2 : ℝ) = 0)) ↔
      ((h.prodCongr (Homeomorph.refl unitInterval)) p =
          (h.prodCongr (Homeomorph.refl unitInterval)) q ∨
        ((p.2 : ℝ) = 0 ∧ (q.2 : ℝ) = 0))
    rw [(h.prodCongr (Homeomorph.refl unitInterval)).injective.eq_iff]

@[simp] theorem homeomorph_coneMk (h : X ≃ₜ Y) (x : X) (r : unitInterval) :
    homeomorph h (CircleCone.coneMk x r) = CircleCone.coneMk (h x) r := rfl

@[simp] theorem radius_homeomorph (h : X ≃ₜ Y) (p : CircleCone.Cone X) :
    radius (homeomorph h p) = radius p := by
  refine Quotient.inductionOn p ?_
  intro p
  rfl

/-- The radius-one copy of the base in its cone. -/
def boundary (x : X) : CircleCone.Cone X := CircleCone.coneMk x 1

@[simp] theorem homeomorph_boundary (h : X ≃ₜ Y) (x : X) :
    homeomorph h (boundary x) = boundary (h x) := rfl

/-- A radius-zero representative of the apex; the choice of base point is immaterial. -/
def apex (x : X) : CircleCone.Cone X := CircleCone.coneMk x 0

omit [TopologicalSpace X] in
theorem apex_eq (x x' : X) : apex x = apex x' := by
  apply Quotient.sound
  exact Or.inr ⟨rfl, rfl⟩

@[simp] theorem homeomorph_apex (h : X ≃ₜ Y) (x : X) :
    homeomorph h (apex x) = apex (h x) := rfl

@[simp] theorem homeomorph_refl :
    homeomorph (Homeomorph.refl X) = Homeomorph.refl (CircleCone.Cone X) := by
  apply Homeomorph.ext
  intro p
  refine Quotient.inductionOn p ?_
  intro p
  rfl

theorem homeomorph_trans (h : X ≃ₜ Y) (k : Y ≃ₜ Z) :
    homeomorph (h.trans k) = (homeomorph h).trans (homeomorph k) := by
  apply Homeomorph.ext
  intro p
  refine Quotient.inductionOn p ?_
  intro p
  rfl

@[simp] theorem homeomorph_symm (h : X ≃ₜ Y) :
    (homeomorph h).symm = homeomorph h.symm := by
  apply Homeomorph.ext
  intro p
  refine Quotient.inductionOn p ?_
  intro p
  rfl

end GRWTSK.Topology.AlgebraicTopology.ConeCongruence
```
