# Complete source: GRWTSK.Algebra.RingInvo.Variant276b93a6c39b46dfe8340473596811c2cccde1bde3befce27991774fc64804d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `543b3016c0fdc37dbcb12deccd335f628bd74bc2` · SHA-256 `668f8d2a689d9e46b464b2785359b59f910f6f32ae7c7be1af38fab6520672b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.RingInvo.Variante81d2a818107f08d1029e9ed25fe957c5ada642981556216de049efb24ab3760","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e81d2a818107f08d1029e9ed25fe957c5ada642981556216de049efb24ab3760","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.RingInvo.Variante81d2a818107f08d1029e9ed25fe957c5ada642981556216de049efb24ab3760","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"e81d2a818107f08d1029e9ed25fe957c5ada642981556216de049efb24ab3760","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/RingInvo.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Andreas Swerdlow. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andreas Swerdlow, Kenny Lau
-/
module

public import Mathlib.Algebra.Ring.Equiv
public import Mathlib.Algebra.Ring.Opposite

/-!
# Ring involutions

This file defines a ring involution as a structure extending `R ≃+* Rᵐᵒᵖ`,
with the additional fact `f.involution : (f (f x).unop).unop = x`.

## Notation

We provide a coercion to a function `R → Rᵐᵒᵖ`.

## References

* <https://en.wikipedia.org/wiki/Involution_(mathematics)#Ring_theory>

## Tags

Ring involution
-/


namespace GRWTSK.Algebra.RingInvo.Variante81d2a818107f08d1029e9ed25fe957c5ada642981556216de049efb24ab3760

@[expose] public section

variable {F : Type*} (R : Type*)

/-- A ring involution -/
structure RingInvo [Semiring R] extends R ≃+* Rᵐᵒᵖ where
  /-- The requirement that the ring homomorphism is its own inverse -/
  involution' : ∀ x, (toFun (toFun x).unop).unop = x

/-- The equivalence of rings underlying a ring involution. -/
add_decl_doc RingInvo.toRingEquiv

/-- `RingInvoClass F R` states that `F` is a type of ring involutions.
You should extend this class when you extend `RingInvo`. -/
class RingInvoClass (F R : Type*) [Semiring R] [EquivLike F R Rᵐᵒᵖ] : Prop
  extends RingEquivClass F R Rᵐᵒᵖ where
  /-- Every ring involution must be its own inverse -/
  involution : ∀ (f : F) (x), (f (f x).unop).unop = x


/-- Turn an element of a type `F` satisfying `RingInvoClass F R` into an actual
`RingInvo`. This is declared as the default coercion from `F` to `RingInvo R`. -/
@[coe]
def RingInvoClass.toRingInvo {R} [Semiring R] [EquivLike F R Rᵐᵒᵖ] [RingInvoClass F R] (f : F) :
    RingInvo R :=
  { (RingEquivClass.toRingEquiv f : R ≃+* Rᵐᵒᵖ) with involution' := RingInvoClass.involution f }

namespace RingInvo

variable {R} [Semiring R] [EquivLike F R Rᵐᵒᵖ]

/-- Any type satisfying `RingInvoClass` can be cast into `RingInvo` via
`RingInvoClass.toRingInvo`. -/
instance [RingInvoClass F R] : CoeTC F (RingInvo R) :=
  ⟨RingInvoClass.toRingInvo⟩

@[macro_inline]
instance : EquivLike (RingInvo R) R Rᵐᵒᵖ where
  coe f := f.toFun
  inv f := f.invFun
  coe_injective' e f h₁ h₂ := by
    rcases e with ⟨⟨tE, _⟩, _⟩; rcases f with ⟨⟨tF, _⟩, _⟩
    cases tE
    cases tF
    congr
  left_inv f := f.left_inv
  right_inv f := f.right_inv

instance : RingInvoClass (RingInvo R) R where
  map_add f := f.map_add'
  map_mul f := f.map_mul'
  involution f := f.involution'

instance : CoeOut (RingInvo R) (R ≃+* Rᵐᵒᵖ) where coe := toRingEquiv

/-- Construct a ring involution from a ring homomorphism. -/
def mk' (f : R →+* Rᵐᵒᵖ) (involution : ∀ r, (f (f r).unop).unop = r) : RingInvo R :=
  { f with
    invFun := fun r => (f r.unop).unop
    left_inv := fun r => involution r
    right_inv := fun _ => MulOpposite.unop_injective <| involution _
    involution' := involution }

@[simp]
theorem involution (f : RingInvo R) (x : R) : (f (f x).unop).unop = x :=
  f.involution' x

theorem coe_ringEquiv (f : RingInvo R) (a : R) : (f : R ≃+* Rᵐᵒᵖ) a = f a :=
  rfl

theorem map_eq_zero_iff (f : RingInvo R) {x : R} : f x = 0 ↔ x = 0 :=
  f.toRingEquiv.map_eq_zero_iff

end RingInvo

open RingInvo

section CommRing

variable [CommRing R]

/-- The identity function of a `CommRing` is a ring involution. -/
protected def RingInvo.id : RingInvo R :=
  { RingEquiv.toOpposite R with involution' := fun _ => rfl }

instance : Inhabited (RingInvo R) :=
  ⟨RingInvo.id _⟩

end CommRing
```
