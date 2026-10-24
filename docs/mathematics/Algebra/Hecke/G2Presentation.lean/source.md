# Complete source: GRWTSK.Algebra.Hecke.G2Presentation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7957cc9c617ae4dee881f52ecc930ad328de80ee` · SHA-256 `c8afdce131037bff243fc1d811f3fa025fabaa4cbecfcc2014e89f1bb516384b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.Hecke.G2BraidSixMatrices
import Mathlib.Algebra.FreeAlgebra
import Mathlib.Algebra.RingQuot

/-! Common-parameter braid-six presentation for the two distinct KL manuscripts.
This constructs the algebra by generators and relations, with its universal map.
No basis, dimension, faithfulness, bar operation or KL recurrence is asserted. -/
namespace GRWTSK.Algebra.Hecke
variable {R : Type*} [CommRing R]

/-- The two quadratic relations and the six-factor braid, before quotienting. -/
inductive G2Relation (q : R) : FreeAlgebra R Bool → FreeAlgebra R Bool → Prop
  | quadratic (b : Bool) : G2Relation q
      (FreeAlgebra.ι R b * FreeAlgebra.ι R b)
      ((q - 1) • FreeAlgebra.ι R b + q • 1)
  | braid : G2Relation q
      ((FreeAlgebra.ι R false * FreeAlgebra.ι R true) ^ 3)
      ((FreeAlgebra.ι R true * FreeAlgebra.ι R false) ^ 3)

/-- The common-parameter algebra presented by the braid-six Hecke relations. -/
abbrev G2Presented (q : R) := RingQuot (G2Relation q)

/-- The image of either named generator in the presented algebra. -/
noncomputable def g2Generator (q : R) (b : Bool) : G2Presented q :=
  RingQuot.mkAlgHom R (G2Relation q) (FreeAlgebra.ι R b)

theorem g2Generator_quadratic (q : R) (b : Bool) :
    g2Generator q b * g2Generator q b = (q - 1) • g2Generator q b + q • 1 := by
  simpa [g2Generator] using RingQuot.mkAlgHom_rel R (G2Relation.quadratic (q := q) b)

theorem g2Generator_braid (q : R) :
    (g2Generator q false * g2Generator q true) ^ 3 =
      (g2Generator q true * g2Generator q false) ^ 3 := by
  simpa [g2Generator] using RingQuot.mkAlgHom_rel R (G2Relation.braid (q := q))

variable {A : Type*} [Ring A] [Algebra R A]

/-- Universal evaluation; the exact quadratic and braid hypotheses are retained. -/
noncomputable def g2PresentationLift (q : R) (x : Bool → A)
    (hq : ∀ b, x b * x b = (q - 1) • x b + q • 1)
    (hb : (x false * x true) ^ 3 = (x true * x false) ^ 3) :
    G2Presented q →ₐ[R] A :=
  RingQuot.liftAlgHom R ⟨FreeAlgebra.lift R x, by
    intro a b h
    cases h with
    | quadratic c => simpa using hq c
    | braid => simpa using hb⟩

@[simp] theorem g2PresentationLift_generator (q : R) (x : Bool → A)
    (hq : ∀ b, x b * x b = (q - 1) • x b + q • 1)
    (hb : (x false * x true) ^ 3 = (x true * x false) ^ 3) (b : Bool) :
    g2PresentationLift q x hq hb (g2Generator q b) = x b := by
  simp [g2PresentationLift, g2Generator]

/-- Evaluation is unique once both generator images are specified. -/
theorem g2PresentationLift_unique (q : R) (x : Bool → A)
    (hq : ∀ b, x b * x b = (q - 1) • x b + q • 1)
    (hb : (x false * x true) ^ 3 = (x true * x false) ^ 3)
    (f : G2Presented q →ₐ[R] A) (hf : ∀ b, f (g2Generator q b) = x b) :
    f = g2PresentationLift q x hq hb := by
  apply RingQuot.ringQuot_ext'
  apply FreeAlgebra.hom_ext
  funext b
  change f (g2Generator q b) = g2PresentationLift q x hq hb (g2Generator q b)
  rw [hf, g2PresentationLift_generator]

/-- The previously checked matrices now define a map out of the actual quotient. -/
noncomputable def g2MatrixRepresentation (q : R) :
    G2Presented q →ₐ[R] Matrix (Fin 2) (Fin 2) R :=
  g2PresentationLift q (fun b => if b then g2HeckeT q else g2HeckeS q)
    (by intro b; cases b <;> simp [g2HeckeS_quadratic, g2HeckeT_quadratic])
    (by simp only [Bool.false_eq_true, ↓reduceIte];
        exact (g2HeckeST_cube q).trans (g2HeckeTS_cube q).symm)

@[simp] theorem g2MatrixRepresentation_generator (q : R) (b : Bool) :
    g2MatrixRepresentation q (g2Generator q b) =
      if b then g2HeckeT q else g2HeckeS q := by
  exact g2PresentationLift_generator _ _ _ _ _

end GRWTSK.Algebra.Hecke
```
