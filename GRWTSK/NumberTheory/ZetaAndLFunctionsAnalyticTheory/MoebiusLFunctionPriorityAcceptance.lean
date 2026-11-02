/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
PASSIVE_VERIFICATION_TARGET / COMMANDS_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionHermitianSieveClosure
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletEulerIdentificationClosure
import Mathlib

set_option autoImplicit false
set_option linter.hashCommand false

/-!
# Exact-source acceptance gate for three requested L-family bridges

To be executed with the PINNED Lean/Mathlib manifest:
  lake env lean GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/
    MoebiusLFunctionPriorityAcceptance.lean

Do NOT treat the presence of these commands as their execution.
Expected-type checks and transitive axiom inspection must be
reproduced freshly against these exact source bytes.
The commands do not themselves establish the mathematical
signed low-gcd cancellation or Dirichlet GRH.
-/

open GRWTSK.NumberTheory.Moebius.LFunctionComplexGramClosure
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianSieveClosure
open GRWTSK.NumberTheory.Moebius.DirichletEulerIdentificationClosure

#check originalFiniteHermitianGram_eq_energy
#check familyHermitianFiniteGram_proof
#check familyDivisorRestrictedFullGram_eq_energy
#check familyHermitianDivisorSieve_proof
#check primeEuler_mobius_factorization
#check primeEuler_mobius_multiplicative
#check synthesized_prime_power_compatibility
#check characterTwistedMobius_prime_power
#check dirichletEuler_mobius_eq_characterTwist
#check dirichletEulerSourceIdentification_proof

#print axioms familyHermitianFiniteGram_proof
#print axioms familyHermitianDivisorSieve_proof
#print axioms dirichletEulerSourceIdentification_proof
