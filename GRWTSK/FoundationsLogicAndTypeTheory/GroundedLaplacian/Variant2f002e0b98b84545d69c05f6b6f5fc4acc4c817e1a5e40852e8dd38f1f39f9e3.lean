import Mathlib.Data.Rat.Defs

namespace Noeoueue.TypeMemory

structure ExactRationalEdge where
  numerator : Nat
  denominator : Nat
  positive : 0 < numerator
  nonzero : denominator ≠ 0

def componentKernelDimension (valid grounded : Bool) : Nat := if valid && !grounded then 1 else 0

end Noeoueue.TypeMemory
