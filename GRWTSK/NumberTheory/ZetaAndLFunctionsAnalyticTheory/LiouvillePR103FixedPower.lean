/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PadicMobiusHighPrimeFixedPower
import Mathlib

/-!
# Strict rational comparison for the merged external Dirichlet L threshold

The exact source is QuasiRiemannTracker PR 103, merge commit
8b1a0167c8e324099884152181e3fb2206510e88, original candidate head
cae2e523d4ec22c05ea91ff44d68efb8fd02293f, Candidate/Main.lean
blob 808d04cec892449707d23e81f94179e2738fdf1a.

The rational comparison is unconditional and finite. Nonvanishing of any
actual L-function, the classical zero-free-to-Liouville summatory transfer,
a weighted energy estimate, and RH are NOT established by this file.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.LiouvillePR103FixedPower

open GRWTSK.NumberTheory.PadicMobiusHighPrimeFixedPower

/-- Exact merged rational threshold in the external theorem statement. -/
def externalPR103Theta : ℝ :=
  (2804966284017490358030969257914123810640482798488248385236764587735806455694206308975383836842958115341512355256943573632654341 : ℝ) /
  (3211614609922119834694179379888743028634953588197852962423516288191911449231164741438582626063161096341458934143644085157872271 : ℝ)

/-- An exact rational just above the merged external threshold. -/
def newWorkingTheta : ℝ :=
  (87338196661320751992903 : ℝ) / 100000000000000000000000

/-- The exact associated working power, 2 theta minus 1. -/
def newWorkingEnergyPower : ℝ :=
  (74676393322641503985806 : ℝ) / 100000000000000000000000

/-- The previous PR 102 exact threshold is now also merged, despite the
historical identifier checkedProposalTheta in the imported source. -/
theorem exact_pr103_fixed_power_gain :
    externalPR103Theta < newWorkingTheta ∧
    newWorkingTheta < checkedProposalTheta ∧
    newWorkingEnergyPower = 2 * newWorkingTheta - 1 ∧
    newWorkingEnergyPower < 2 * checkedProposalTheta - 1 := by
  norm_num [externalPR103Theta, newWorkingTheta,
    newWorkingEnergyPower, checkedProposalTheta]

end GRWTSK.NumberTheory.LiouvillePR103FixedPower
