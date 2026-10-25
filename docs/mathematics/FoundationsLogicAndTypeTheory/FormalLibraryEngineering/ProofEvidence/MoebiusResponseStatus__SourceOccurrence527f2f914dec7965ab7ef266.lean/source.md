# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ProofEvidence.MoebiusResponseStatus

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49fe85043420f0ee935208eda53b3fef9c9b7f86` · SHA-256 `3ef831c49a4e6a6ddc4f1a69899dc7c3f91a8e11b322803eed62926d086d5141`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.AsymptoticAnalysis.PrimeTranslationBoundContracts
import GRWTSK.Analysis.Fourier.SignedPrimePhaseExamples
import GRWTSK.NumberTheory.Moebius.PrimeProductPrefixEnergy
import GRWTSK.Analysis.Calculus.LogarithmicResponseDerivatives
import GRWTSK.Analysis.MeasureTheory.Integral.FinitePrimeTranslationEnergy
import GRWTSK.Analysis.Fourier.FiniteTranslationMultipliers
import GRWTSK.NumberTheory.Moebius.DiagonalEnergyBound
import GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeIntervalBounds
import GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeBlockCost
import GRWTSK.Analysis.AsymptoticAnalysis.PrimeMassPotentialBounds
import GRWTSK.Analysis.MeasureTheory.Function.Lp.CausalRestrictionBounds
import GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeLogBound
import GRWTSK.Analysis.AsymptoticAnalysis.DisjointPrimeChainBounds
import GRWTSK.Analysis.Fourier.AngularFrequencyParseval
import GRWTSK.NumberTheory.Moebius.SubsetPotentialObstruction

/-! Proof-bearing evidence ledger. An open item supplies no proof.
Conditional evidence carries its hypothesis as an explicit proposition.
Finite arithmetic checks cannot be promoted to the all-real-scale P04 claim.
-/
namespace PPNCP04.Ledger

inductive EvidenceStatus
  | exact | finite | conditional | open | refuted | accepted
  deriving DecidableEq, Repr

inductive Evidence (P : Prop)
  | exact (proof : P)
  | finite (proof : P)
  | conditional (hypothesis : Prop) (proof : hypothesis → P)
  | open
  | refuted (proof : ¬P)
  | accepted (proof : P)

def Evidence.status {P : Prop} : Evidence P → EvidenceStatus
  | .exact _ => .exact
  | .finite _ => .finite
  | .conditional _ _ => .conditional
  | .open => .open
  | .refuted _ => .refuted
  | .accepted _ => .accepted

def Evidence.checkedProof {P : Prop} : Evidence P → Option (PLift P)
  | .exact h => some ⟨h⟩
  | .finite h => some ⟨h⟩
  | .accepted h => some ⟨h⟩
  | .conditional _ _ => none
  | .open => none
  | .refuted _ => none

theorem open_evidence_supplies_no_proof (P : Prop) :
    (Evidence.open : Evidence P).checkedProof = none := rfl

def pickupIdentification : Evidence
    (∀ T u : ℝ, u ≤ T → primeState (primeInventory T) u = pickup T u) :=
  .exact completed_pickup_identification

def orderedEnergyIdentity : Evidence
    (∀ T : ℝ, energy T = diagonal T+crossEnergy T) :=
  .exact energy_eq_diagonal_add_cross

def diagonalBound : Evidence
    (∀ T : ℝ, 0 ≤ T → diagonal T ≤ 4*T*(1+T)) :=
  .exact diagonal_quadratic_bound

def energyTargetEquivalence : Evidence (P04 ↔ PolynomialBound energy) :=
  .exact P04_iff_energy_polynomial

def logarithmicPrimeMass : Evidence (∃ C_M : ℝ, 0 ≤ C_M ∧
    ∀ T : ℝ, 0 ≤ T → Obstruction.harmonicMass (primeInventory T) ≤
      C_M*Real.log (2+T)) :=
  .exact PrimeHarmonicLog.prime_harmonic_logarithmic_estimate

def OriginalASInputs : Prop :=
  ∃ (A : ReserveFunctional) (C q η : ℝ), ASObligation A C q η ∧
    ∀ T : ℝ, 0 ≤ T → ∃ chain : CompletionChain T,
      ∀ j, AdmissibleBlock (chain.states j) (chain.blocks j) T η

def originalASClosure : Evidence P04 := .conditional OriginalASInputs (by
  rintro ⟨A, C, q, η, hAS, chains⟩
  exact OriginalClosure.AS_with_complete_admissible_chains_implies_P04 A C q η hAS chains)

def broadMultiplier : Evidence (∀ (B : Finset ℕ) (κ ξ : ℝ),
    PPNC.Broad B κ ξ →
      ‖PPNC.blockMultiplier B ξ‖ ^ 2 ≤
        Real.exp (2*κ*Real.sqrt (PPNC.harmonicMass B)+PPNC.harmonicMass B)) :=
  .exact PPNC.broad_multiplier_bound

def primeSignFixture : Evidence (ArithmeticFunction.moebius 2 = -1) :=
  .finite Diagnostics.literal_moebius_prime_sign

def positivePrimeSignRejected : Evidence (ArithmeticFunction.moebius 2 = 1) :=
  .refuted (by
    rw [Diagnostics.literal_moebius_prime_sign]
    norm_num)

def closure : Evidence P04 :=
  .conditional ChainConstructionObligation chainConstruction_implies_P04

def acceptedClosureImplication : Evidence (ChainConstructionObligation → P04) :=
  .accepted chainConstruction_implies_P04

def terminalP04 : Evidence P04 := .open
def reserveConstruction : Evidence UniversalASConstructionObligation :=
  .refuted EulerP04RH.ASRefutation.universal_AS_refuted
def narrowConstruction : Evidence UniversalNCConstructionObligation := .open
def rawIntegralReturnBridge : Evidence FourierReductionObligation :=
  .exact Plancherel.actualFourierReductionObligation
def chainConstruction : Evidence ChainConstructionObligation := .open

theorem terminal_status_open : terminalP04.status = .open := rfl
theorem closure_status_conditional : closure.status = .conditional := rfl
theorem universal_AS_status_refuted : reserveConstruction.status = .refuted := rfl
theorem universal_NC_status_open : narrowConstruction.status = .open := rfl

/-- Admission requires a proof of the literal proposition, never a status flag. -/
def acceptTerminal (h : P04) : Evidence P04 := .accepted h

end PPNCP04.Ledger

#print axioms PPNCP04.Ledger.pickupIdentification
#print axioms PPNCP04.Ledger.orderedEnergyIdentity
#print axioms PPNCP04.Ledger.broadMultiplier
#print axioms PPNCP04.Ledger.closure
#print axioms PPNCP04.Ledger.logarithmicPrimeMass
#print axioms PPNCP04.Ledger.originalASClosure
#print axioms PPNCP04.Ledger.rawIntegralReturnBridge
#print axioms PPNCP04.Ledger.terminalP04
```
