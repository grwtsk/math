import Mathematics.Surgery.Obstruction

/-! # Boundary observations are not surgery requests -/

namespace Mathematics.Surgery

structure BoundaryObservation where
  before : Orbit.Status
  after : Orbit.Status
  obstruction : Obstruction
  deriving DecidableEq, Repr

end Mathematics.Surgery
