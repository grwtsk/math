import Mathlib.Tactic
import Mathematics.Resolution.CryptographicCouplingObligation

/-!
# Exact cryptographic-coupling frontier

Twelve obligations are standard cryptographic specification or reduction
work.  Four terminal obligations require a genuinely new arithmetic-to-
security invariant.
-/

namespace Mathematics.Resolution

def standardCryptographicObligations :
    Finset CryptographicCouplingObligation :=
  {
    .securityGame,
    .parameterSemantics,
    .effectivePresentation,
    .gamePreservingAutomorphisms,
    .adversaryInvariant,
    .oracleToConcreteReduction,
    .queryToWork,
    .bitfieldAdvantageBridge,
    .zeroKnowledgeSimulator,
    .knowledgeExtractor,
    .succinctnessMechanism,
    .quantumAccessModel
  }

def terminalCryptographicCouplingObligations :
    Finset CryptographicCouplingObligation :=
  {
    .traceToAdversaryBridge,
    .purityToHardnessBridge,
    .holonomyToQueryProgress,
    .arithmeticSecurityFunctor
  }

/--
Compatibility projection of the authoritative three-node macro summary into
the original cryptographic obligation vocabulary.  Its internal refinements
live in `ArithmeticSecurityDependency` and `ArithmeticSecurityMacro`.
-/
def principalArithmeticSecurityObligations :
    Finset CryptographicCouplingObligation :=
  {
    .traceToAdversaryBridge,
    .purityToHardnessBridge,
    .arithmeticSecurityFunctor
  }

def completeCryptographicCouplingFrontier :
    Finset CryptographicCouplingObligation :=
  Finset.univ

theorem standardCryptographicObligations_card :
    standardCryptographicObligations.card = 12 := by
  native_decide

theorem terminalCryptographicCouplingObligations_card :
    terminalCryptographicCouplingObligations.card = 4 := by
  native_decide

theorem principalArithmeticSecurityObligations_card :
    principalArithmeticSecurityObligations.card = 3 := by
  native_decide

theorem completeCryptographicCouplingFrontier_card :
    completeCryptographicCouplingFrontier.card = 16 := by
  native_decide

theorem cryptographic_frontier_partition :
    standardCryptographicObligations ∪
        terminalCryptographicCouplingObligations =
      completeCryptographicCouplingFrontier := by
  native_decide

theorem cryptographic_frontier_partition_disjoint :
    Disjoint standardCryptographicObligations
      terminalCryptographicCouplingObligations := by
  native_decide

theorem principalArithmeticSecurityObligations_subset_terminal :
    principalArithmeticSecurityObligations ⊆
      terminalCryptographicCouplingObligations := by
  native_decide

/-- Without bridge certificates, the complete coupling claim remains unknown. -/
def genericCryptographicCouplingVerdict
    (Claim : Prop) :
    CryptographicCouplingVerdict Claim :=
  .unknown completeCryptographicCouplingFrontier (by
    exact ⟨.securityGame, by
      simp [completeCryptographicCouplingFrontier]⟩)

@[simp]
theorem genericCryptographicCouplingVerdict_unknowns
    (Claim : Prop) :
    (genericCryptographicCouplingVerdict Claim).unknowns =
      completeCryptographicCouplingFrontier :=
  rfl

@[simp]
theorem genericCryptographicCouplingVerdict_not_certified
    (Claim : Prop) :
    ¬ (genericCryptographicCouplingVerdict Claim).IsCertified :=
  id

@[simp]
theorem genericCryptographicCouplingVerdict_not_refuted
    (Claim : Prop) :
    ¬ (genericCryptographicCouplingVerdict Claim).IsRefuted :=
  id

/--
Compatibility verdict retained for clients of the original obligation type.
The typed authoritative verdict is `terminalArithmeticSecurityVerdict`.
-/
def arithmeticSecurityBridgeVerdict
    (Claim : Prop) :
    CryptographicCouplingVerdict Claim :=
  .unknown principalArithmeticSecurityObligations (by
    exact ⟨.traceToAdversaryBridge, by
      simp [principalArithmeticSecurityObligations]⟩)

@[simp]
theorem arithmeticSecurityBridgeVerdict_unknowns
    (Claim : Prop) :
    (arithmeticSecurityBridgeVerdict Claim).unknowns =
      principalArithmeticSecurityObligations :=
  rfl

@[simp]
theorem arithmeticSecurityBridgeVerdict_not_certified
    (Claim : Prop) :
    ¬ (arithmeticSecurityBridgeVerdict Claim).IsCertified :=
  id

@[simp]
theorem arithmeticSecurityBridgeVerdict_not_refuted
    (Claim : Prop) :
    ¬ (arithmeticSecurityBridgeVerdict Claim).IsRefuted :=
  id

end Mathematics.Resolution
