import Mathematics.GammaBridge.Regularity

/-! # Banach/Hilbert capability separation -/

namespace Mathematics.GammaBridge

inductive GeometryCapability
  | banach
  | hilbert
  deriving DecidableEq, Repr

def GeometryCapability.hasInnerProduct : GeometryCapability → Bool
  | .banach => false
  | .hilbert => true

@[simp] theorem banach_does_not_supply_inner_product :
    GeometryCapability.banach.hasInnerProduct = false := rfl

structure ParameterProfile where
  id : InterpretationProfileId
  digest : Digest
  geometry : GeometryCapability
  regularity : RegularityRequest
  deriving DecidableEq, Repr

end Mathematics.GammaBridge
