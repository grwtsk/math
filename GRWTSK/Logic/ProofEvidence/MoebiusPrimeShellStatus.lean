import GRWTSK.Analysis.InnerProductSpace.SignedCorrelationBudgetEquivalence
import GRWTSK.NumberTheory.Moebius.CompositeActivationExamples
import GRWTSK.Logic.ProofEvidence.MoebiusResponseStatus

/-! Typed source-bound mathematical evidence for horizon-shell settlement.
Exact identities, finite examples, implications and refutations carry proofs.
The independent signed arithmetic producer is explicitly open. No evidence
label promotes an absent producer to a proof of HSS, P04 or RH.

Research boundary: Nathan Ng, "The distribution of the summatory function of
the Möbius function", https://arxiv.org/abs/math/0310381, states conditional
mean-square/distribution results assuming RH and a negative-moment conjecture.
This citation is reference data; no unconditional source return is imported.
-/
noncomputable section
namespace HSSCP04.Ledger
open PPNCP04 PPNCP04.Ledger HorizonShell Settlement ShellObstruction

def sourceSplit : Evidence (∀ b T u : ℝ, PinnedShellWidth b → b ≤ T →
    u ∈ Set.Icc 0 T → pickup T u = matureWave b T u+horizonWave b T u) :=
  .exact (fun _ _ _ hb _ hu => pickup_split hb.1.le hb.2 hu)

def exactSignedLedger : Evidence (∀ b T : ℝ, PinnedShellWidth b → b ≤ T →
    localEnergy b T = matureEnergy b T+horizonEnergy b T+signedCorrelation b T) :=
  .exact (fun _ _ hb hT => settlement_ledger hb hT)

def exactWindowTelescope : Evidence (∀ b T : ℝ, 0 ≤ b → b ≤ T →
    energy T = energy (T-b)+localEnergy b T) :=
  .exact (fun _ _ hb hT => LocalEnergyTelescope.energy_step hb hT)

def fixedWindowEquivalence : Evidence (∀ b : ℝ, 0 < b → (HSS b ↔ P04)) :=
  .exact (fun _ hb => HSS_iff_P04 hb)

def signedCorrelationEquivalence : Evidence (∀ b : ℝ, PinnedShellWidth b →
    (SignedCorrelationBudget b ↔ HSS b)) :=
  .exact (fun _ hb => signedCorrelationBudget_iff_HSS hb)

def shellGrowth : Evidence (∀ S : ℝ, 1024 ≤ S →
    ∃ T ∈ Set.Icc (S-8*Real.log 2) S, chosenWidth ≤ T ∧
      growthConstant*Real.exp T/(1+T)^2 ≤ shellEnergy chosenWidth T) :=
  .exact (fun _ hS => actual_horizon_shell_energy_growth hS)

def separateShellBudget : Evidence (PolynomialBound (shellEnergy chosenWidth)) :=
  .refuted horizon_shell_energy_not_polynomial

def unsignedCompensationBudget : Evidence (PolynomialBound (fun T =>
    matureEnergy chosenWidth T+horizonEnergy chosenWidth T+|signedCorrelation chosenWidth T|)) :=
  .refuted unsigned_settlement_budget_refuted

def compositeActivation : Evidence (∀ u : ℝ, u ≤ Diagnostics.fixtureHorizon →
    maturityEcho Diagnostics.fixtureWidth Diagnostics.fixtureHorizon u = atom 6 u) :=
  .finite (fun _ hu => Diagnostics.fixture_echo hu)

def strictRank : Evidence (WellFounded HSSCP04.LowerRank) :=
  .exact HSSCP04.lowerRank_wellFounded

def conditionalP04 (b : ℝ) (hb : 0 < b) : Evidence P04 :=
  .conditional (HSS b) (HSS_implies_P04 hb)

def conditionalLiteralRH (b : ℝ) (hb : 0 < b) : Evidence _root_.RiemannHypothesis :=
  .conditional (HSS b) (HSS_implies_literal_RH hb)

def jointSettlement (b : ℝ) : Evidence (HSS b) := .open
def signedMatching (b : ℝ) : Evidence (SignedCorrelationBudget b) := .open
def literalP04 : Evidence P04 := .open
def literalRH : Evidence _root_.RiemannHypothesis := .open

theorem joint_settlement_remains_open (b : ℝ) :
    (jointSettlement b).checkedProof = none := rfl
theorem terminal_proofs_absent : literalP04.checkedProof = none ∧
    literalRH.checkedProof = none := by constructor <;> rfl

end HSSCP04.Ledger
