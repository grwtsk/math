import GRWTSK.NumberTheory.Moebius.PrimitiveIdentification
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.ProofHorizon.CorkscrewChamberCap

example : ArithmeticPickupSource.moebiusCoefficient 2 = (1 : ℝ) := by
  norm_num [ArithmeticPickupSource.moebiusCoefficient,
    ArithmeticFunction.moebius_apply_prime Nat.prime_two]
