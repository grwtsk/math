import Mathematics.Federation.GaloisDescent

/-!
# Galois cocycles, transport compatibility, and effective descent
-/

namespace Mathematics.MobiusOntology

universe u v w x y

abbrev GaloisCocycle
    (Galois : Type u) (Coefficient : Type v)
    [Group Galois] [Group Coefficient] [MulAction Galois Coefficient] :=
  Mathematics.Federation.GaloisCocycle Galois Coefficient

abbrev GaloisDescentDatum
    (Galois : Type u) (Coefficient : Type v) (ExtendedObject : Type w)
    [Group Galois] [Group Coefficient] [MulAction Galois Coefficient] :=
  Mathematics.Federation.GaloisDescentDatum
    Galois Coefficient ExtendedObject

abbrev EffectiveDescentCertificate
    {Galois : Type u} {Coefficient : Type v}
    {BaseObject : Type w} {ExtendedObject : Type x}
    [Group Galois] [Group Coefficient] [MulAction Galois Coefficient]
    (baseChange : BaseObject → ExtendedObject)
    (datum : GaloisDescentDatum Galois Coefficient ExtendedObject) :=
  Mathematics.Federation.EffectiveDescentCertificate baseChange datum

/-- The descent datum must commute with transported holonomy. -/
structure DescentTransportCompatibility
    (Galois : Type u) (Loop : Type v) (Object : Type w) where
  galoisLoop : Galois → Loop → Loop
  descend : Galois → Object → Object
  holonomy : Loop → Object → Object
  commutes :
    ∀ symmetry loop object,
      descend symmetry (holonomy loop object) =
        holonomy (galoisLoop symmetry loop)
          (descend symmetry object)

end Mathematics.MobiusOntology
