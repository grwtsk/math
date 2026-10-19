import Mathematics.Core.SemanticIdentity

/-! # Operators, spectra, and harmonic channels -/

namespace Mathematics.Operator

universe u

structure Operator (State : Type u) where
  id : StableId
  apply : State → State

structure SpectralChannel where
  id : ChannelId
  eigenvalueLabel : String
  multiplicity : Nat
  deriving DecidableEq, Repr

end Mathematics.Operator
