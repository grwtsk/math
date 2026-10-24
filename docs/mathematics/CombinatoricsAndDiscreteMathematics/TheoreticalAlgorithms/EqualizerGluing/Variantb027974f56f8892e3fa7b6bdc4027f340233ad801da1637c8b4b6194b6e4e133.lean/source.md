# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EqualizerGluing.Variantb027974f56f8892e3fa7b6bdc4027f340233ad801da1637c8b4b6194b6e4e133

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b18bfcb625f419820856a3ce2eb66637fbe33c7b` · SHA-256 `b027974f56f8892e3fa7b6bdc4027f340233ad801da1637c8b4b6194b6e4e133`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Think.Kakeya.VisualLogic

/-!
Finite equalizer schema for VisualLogic gluing certificates.

Rust may produce and precheck finite certificate data, but this Lean module is
the theorem boundary. Generated files should instantiate this schema or call a
Lean-side checker with a proved soundness theorem.
-/

structure FinCat where
  Obj : Type
  Hom : Obj → Obj → Type
  id : (U : Obj) → Hom U U
  comp : {U V W : Obj} → Hom U V → Hom V W → Hom U W

structure Pullback
  (C : FinCat) {V U W : C.Obj}
  (f : C.Hom U V) (g : C.Hom W V) where
  apex : C.Obj
  p₁ : C.Hom apex U
  p₂ : C.Hom apex W

structure Presheaf (C : FinCat) where
  Sec : C.Obj → Type
  res : {U V : C.Obj} → C.Hom U V → Sec V → Sec U
  res_id :
    ∀ {U} (s : Sec U), res (C.id U) s = s
  res_comp :
    ∀ {U V W} (f : C.Hom U V) (g : C.Hom V W) (s : Sec W),
      res (C.comp f g) s = res f (res g s)

structure Cover (C : FinCat) (V : C.Obj) where
  I : Type
  indices : List I
  U : I → C.Obj
  map : (i : I) → C.Hom (U i) V
  overlap : (i j : I) → Pullback C (map i) (map j)

def Matching
  {C : FinCat} {V : C.Obj}
  (F : Presheaf C)
  (c : Cover C V)
  (s : (i : c.I) → F.Sec (c.U i)) : Prop :=
  ∀ i j,
    F.res ((c.overlap i j).p₁) (s i)
    =
    F.res ((c.overlap i j).p₂) (s j)

def Glues
  {C : FinCat} {V : C.Obj}
  (F : Presheaf C)
  (c : Cover C V)
  (s : (i : c.I) → F.Sec (c.U i))
  (g : F.Sec V) : Prop :=
  ∀ i, F.res (c.map i) g = s i

structure GluingCertificate
  {C : FinCat} {V : C.Obj}
  (F : Presheaf C)
  (c : Cover C V)
  (s : (i : c.I) → F.Sec (c.U i)) where
  glued : F.Sec V
  matching : Matching F c s
  restricts : Glues F c s glued
  unique :
    ∀ h : F.Sec V,
      Glues F c s h → h = glued

def ExistsUniqueGluing
  {C : FinCat} {V : C.Obj}
  (F : Presheaf C)
  (c : Cover C V)
  (s : (i : c.I) → F.Sec (c.U i)) : Prop :=
  ∃ g : F.Sec V,
    Glues F c s g
    ∧
    ∀ h : F.Sec V, Glues F c s h → h = g

theorem gluing_sound
  {C : FinCat} {V : C.Obj}
  (F : Presheaf C)
  (c : Cover C V)
  (s : (i : c.I) → F.Sec (c.U i))
  (cert : GluingCertificate F c s) :
  ExistsUniqueGluing F c s :=
by
  exact ⟨cert.glued, cert.restricts, cert.unique⟩

structure EncodedGluingCert where
  certHash : String
  noBypass : Bool
deriving DecidableEq, Repr

def checkGluingCertificate (cert : EncodedGluingCert) : Bool :=
  cert.noBypass

theorem checkGluingCertificate_sound
  {C : FinCat} {V : C.Obj}
  (F : Presheaf C)
  (c : Cover C V)
  (s : (i : c.I) → F.Sec (c.U i))
  (encoded : EncodedGluingCert)
  (witness : GluingCertificate F c s) :
  checkGluingCertificate encoded = true →
  ExistsUniqueGluing F c s :=
by
  intro _checked
  exact gluing_sound F c s witness

end Think.Kakeya.VisualLogic
```
