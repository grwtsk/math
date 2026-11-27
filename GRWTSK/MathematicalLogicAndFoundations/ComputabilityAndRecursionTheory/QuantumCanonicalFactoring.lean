/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.MathematicalLogicAndFoundations.ComputabilityAndRecursionTheory.ExactQuantumFactoring
import GRWTSK.MathematicalLogicAndFoundations.ComputabilityAndRecursionTheory.QuantumFactorizationReadout

namespace GRWTSK.IntegerFactorization.QuantumReadout

/-- Exact prime-power output in the original fixed-gate, length-uniform model.
Source: OpenAI #279, Main Theorem 1.1, and the local readout correspondence. -/
theorem exactCanonicalFamily : CanonicalFamily :=
  canonicalFamily_of_mainTheorem OAI.ExactQuantumFactoring.exact_quantum_factoring

end GRWTSK.IntegerFactorization.QuantumReadout
