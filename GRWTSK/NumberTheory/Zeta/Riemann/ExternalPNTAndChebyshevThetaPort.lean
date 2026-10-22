/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
External mathematical proof: Alex Kontorovich, Terry Tao and
collaborators of the Prime Number Theorem + Project.
Mathlib and the external PNT project retain upstream licenses. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedPrimeWeightCanonicalThetaGridRecurrenceControls
import Mathlib.Analysis.Asymptotics.AsymptoticEquivalent
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Source-identical external Chebyshev-PNT proposition and local theta bridge

The external PrimeNumberTheoremAnd project writes the Chebyshev prime
sum with Finset.Iic (floor x), while the pinned Mathlib Chebyshev.theta
is defined using (Ioc 0 (floor x)).filter Nat.Prime.
These finite sets are equal on primes for every real x, with endpoint
and zero-prime conventions preserved.

The external project proves a theorem named chebyshev_asymptotic at
its own (older) Lean/Mathlib revision.  This module does NOT import that
external proof. Instead, it states its exact proposition over the local
pinned source and proves that the proposition is logically equivalent
to the already declared ThetaPrimeNumberTheorem epsilon predicate.

Thus the only missing supplier after this local comparison is a
cross-version proof-relevant external-theorem port, or an independent
pinned PNT proof, not another prime-sum normalization lemma.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
EXTERNAL_PRIME_SUM_EQ_PINNED_THETA_DEFINED /
EXTERNAL_ASYMPTOTIC_IFF_LOCAL_PNT_DEFINED /
EXTERNAL_PNT_PROOF_PORT_OPEN /
MATHLIB_REVISION_MISMATCH_EXPLICIT /
NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open Chebyshev Filter Asymptotics
open GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightCanonicalThetaGridRecurrenceControls

/-- Exact external PNT source metadata: string bindings preserve
provenance, but cannot create the required theorem proof term. -/
structure ExternalPNTAndChebyshevSourceRecord where
  repository : String
  revision : String
  file : String
  fileBlob : String
  theoremName : String
  parentWeakPNTFile : String
  parentWeakPNTBlob : String
  externalMathlibRevision : String
  localMathlibRevision : String
  deriving Repr

def externalPNTAndChebyshevSource : ExternalPNTAndChebyshevSourceRecord where
  repository := "AlexKontorovich/PrimeNumberTheoremAnd"
  revision := "a5040887e6bb24f7c201db8568e7755c138b3878"
  file := "PrimeNumberTheoremAnd/Consequences.lean"
  fileBlob := "6ca8f33be62e333e1a0e2774b78a35af9a57c049"
  theoremName := "chebyshev_asymptotic"
  parentWeakPNTFile := "PrimeNumberTheoremAnd/Wiener.lean"
  parentWeakPNTBlob := "06d464bfbf34b21360a8c725422d6c7d1cb4c2eb"
  externalMathlibRevision := "308445d7985027f538e281e18df29ca16ede2ba3"
  localMathlibRevision := "db584cd6d46c92f209a44c0f1c829460d327499d"

/-- Literal prime-log source of the external PNT theorem, evaluated using
the LOCAL pinned Mathlib definitions and without changing endpoints. -/
def externalPNTAndPrimeLogSum (x : ℝ) : ℝ :=
  ∑ p ∈ (Finset.Iic ⌊x⌋₊).filter Nat.Prime, Real.log (p : ℝ)

/-- The external and pinned index sets agree, including the natural-number
zero endpoint: zero is not prime, so Iic and Icc 0 produce the same family. -/
theorem externalPNTAndPrimeIndex_eq_pinned (x : ℝ) :
    (Finset.Iic ⌊x⌋₊).filter Nat.Prime =
      (Finset.Icc 0 ⌊x⌋₊).filter Nat.Prime := by
  ext p
  simp only [Finset.mem_filter, Finset.mem_Iic, Finset.mem_Icc]
  omega

/-- Exact, all-real source equality, not merely asymptotic agreement. -/
theorem externalPNTAndPrimeLogSum_eq_theta (x : ℝ) :
    externalPNTAndPrimeLogSum x = Chebyshev.theta x := by
  rw [Chebyshev.theta_eq_sum_Icc]
  unfold externalPNTAndPrimeLogSum
  rw [externalPNTAndPrimeIndex_eq_pinned x]

/-- Exact proposition of the external chebyshev_asymptotic theorem
reexpressed in the pinned source.  An external proof term is NOT assumed. -/
def ExternalPNTAndChebyshevAsymptotic : Prop :=
  Asymptotics.IsEquivalent Filter.atTop
    externalPNTAndPrimeLogSum (fun x : ℝ => x)

/-- From the real asymptotic equivalence of the literal external source
sum and the identity, derive exactly the local epsilon-PNT proposition. -/
theorem externalPNTAndAsymptotic_to_thetaPNT
    (hExternal : ExternalPNTAndChebyshevAsymptotic) :
    ThetaPrimeNumberTheorem := by
  have hθ :
      Asymptotics.IsEquivalent Filter.atTop
        (fun x : ℝ => Chebyshev.theta x) (fun x : ℝ => x) := by
    exact hExternal.congr_left
      (Filter.Eventually.of_forall
        (fun x => externalPNTAndPrimeLogSum_eq_theta x))
  have hsmall :
      (fun x : ℝ => Chebyshev.theta x - x) =o[Filter.atTop]
        (fun x : ℝ => x) := by
    simpa only [Pi.sub_apply] using hθ.isLittleO
  intro ε hε
  have hevent :
      ∀ᶠ x : ℝ in Filter.atTop,
        ‖Chebyshev.theta x - x‖ ≤ ε * ‖x‖ := by
    simpa only [Pi.sub_apply] using hsmall.def hε
  obtain ⟨B, hB⟩ := Filter.eventually_atTop.mp hevent
  refine ⟨max B 0, ?_⟩
  intro x hx
  have hBx : B ≤ x := (le_max_left _ _).trans hx
  have hx0 : 0 ≤ x := (le_max_right _ _).trans hx
  have h := hB x hBx
  simpa [thetaError, Real.norm_eq_abs,
    abs_of_nonneg hx0] using h

/-- The reverse direction verifies that the external asymptotic relation
and the exact local theta-PNT epsilon proposition have the SAME strength.
It does not prove either proposition is inhabited. -/
theorem thetaPNT_to_externalPNTAndAsymptotic
    (hPNT : ThetaPrimeNumberTheorem) :
    ExternalPNTAndChebyshevAsymptotic := by
  change
    (externalPNTAndPrimeLogSum - (fun x : ℝ => x)) =o[Filter.atTop]
      (fun x : ℝ => x)
  apply (Asymptotics.isLittleO_iff).2
  intro ε hε
  obtain ⟨B, hB⟩ := hPNT ε hε
  apply Filter.eventually_atTop.mpr
  refine ⟨max B 0, ?_⟩
  intro x hx
  have hBx : B ≤ x := (le_max_left _ _).trans hx
  have hx0 : 0 ≤ x := (le_max_right _ _).trans hx
  have h := hB x hBx
  change
    ‖externalPNTAndPrimeLogSum x - x‖ ≤ ε * ‖x‖
  rw [externalPNTAndPrimeLogSum_eq_theta]
  simpa [thetaError, Real.norm_eq_abs,
    abs_of_nonneg hx0] using h

/-- The external source proposition and the local named PNT proposition are
equivalent after one exact prime-sum comparison. -/
theorem externalPNTAndAsymptotic_iff_thetaPNT :
    ExternalPNTAndChebyshevAsymptotic ↔ ThetaPrimeNumberTheorem := by
  constructor
  · exact externalPNTAndAsymptotic_to_thetaPNT
  · exact thetaPNT_to_externalPNTAndAsymptotic

end GRWTSK.RiemannHypothesis
