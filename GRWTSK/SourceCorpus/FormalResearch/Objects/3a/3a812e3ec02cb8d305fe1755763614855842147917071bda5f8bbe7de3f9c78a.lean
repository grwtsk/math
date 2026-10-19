import Mathlib.Algebra.Group.Action.Defs

/-!
# Galois cocycles and effective descent certificates

The cocycle and effectiveness layers are intentionally separate.  A cocycle
records coherent Galois gluing.  An `EffectiveDescentCertificate` additionally
exhibits the descended object and proves that base change recovers the supplied
extension object.
-/

namespace Mathematics.Federation

universe u v w x

/-- A multiplicative nonabelian one-cocycle for a declared Galois action. -/
structure GaloisCocycle
    (Galois : Type u) (Coefficient : Type v)
    [Group Galois] [Group Coefficient] [MulAction Galois Coefficient] where
  value : Galois → Coefficient
  value_one : value 1 = 1
  cocycle :
    ∀ left right,
      value (left * right) =
        (left • value right) * value left

/--
An extension object together with its cocycle and the exact compatibility
proposition required by the selected descent theory.
-/
structure GaloisDescentDatum
    (Galois : Type u) (Coefficient : Type v) (ExtendedObject : Type w)
    [Group Galois] [Group Coefficient] [MulAction Galois Coefficient] where
  extension : ExtendedObject
  cocycle : GaloisCocycle Galois Coefficient
  compatibility : Prop

/--
Effective descent is witnessed rather than inferred: a base object is supplied,
its base change is exactly the extension object, and the datum's compatibility
law is proved.
-/
structure EffectiveDescentCertificate
    {Galois : Type u} {Coefficient : Type v}
    {BaseObject : Type w} {ExtendedObject : Type x}
    [Group Galois] [Group Coefficient] [MulAction Galois Coefficient]
    (baseChange : BaseObject → ExtendedObject)
    (datum : GaloisDescentDatum Galois Coefficient ExtendedObject) where
  descended : BaseObject
  realizes : baseChange descended = datum.extension
  compatible : datum.compatibility

/-- A certificate produces the effective descended object and both witnesses. -/
theorem EffectiveDescentCertificate.exists_descended
    {Galois : Type u} {Coefficient : Type v}
    {BaseObject : Type w} {ExtendedObject : Type x}
    [Group Galois] [Group Coefficient] [MulAction Galois Coefficient]
    {baseChange : BaseObject → ExtendedObject}
    {datum : GaloisDescentDatum Galois Coefficient ExtendedObject}
    (certificate : EffectiveDescentCertificate baseChange datum) :
    ∃ descended,
      baseChange descended = datum.extension ∧ datum.compatibility :=
  ⟨certificate.descended, certificate.realizes, certificate.compatible⟩

/--
Changing a cocycle without changing the declared extension still requires a
new compatibility proof; effectiveness never follows from object identity
alone.
-/
theorem EffectiveDescentCertificate.compatibility
    {Galois : Type u} {Coefficient : Type v}
    {BaseObject : Type w} {ExtendedObject : Type x}
    [Group Galois] [Group Coefficient] [MulAction Galois Coefficient]
    {baseChange : BaseObject → ExtendedObject}
    {datum : GaloisDescentDatum Galois Coefficient ExtendedObject}
    (certificate : EffectiveDescentCertificate baseChange datum) :
    datum.compatibility :=
  certificate.compatible

end Mathematics.Federation
