/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.ComputerScience.AlgorithmsInComputerScience.FactorVerificationTapeCalls
import OAI.Computability.NearSquareRoot.Main

namespace GRWTSK.IntegerFactorization.TapeCalls

/-- The unconditional supplier from OpenAI family #379, instantiated for the
concrete verifier call sequence and its MSB-first encoding. -/
theorem fixedMachineSupplier : Nonempty Supplier :=
  supplier_of_spec OAI.Computability.NearSquareRoot.uniformIntegerMultiplication

end GRWTSK.IntegerFactorization.TapeCalls
