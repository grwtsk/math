# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ExternalPNTAndWeakPsiPort

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eefb528165ad0cc8bbf186f331e60fbfa5d50f18` · SHA-256 `4d92648e40e68fbdb9f2b22d3a06927e0fcbb47d7bd4b7e3632d4e604324c855`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
External mathematical ideas and Lean work: Alex Kontorovich, Terry Tao,
and collaborators of the Prime Number Theorem + Project.
Upstream Mathlib and PNTAnd retain their original licensing. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ExternalPNTAndChebyshevThetaPort
import Mathlib.Analysis.Asymptotics.SpecificAsymptotics
import Mathlib.Analysis.Asymptotics.Lemmas
import Mathlib.Analysis.Real.Sqrt
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators ArithmeticFunction

/-!
# Source-aligned inclusive weak PNT through actual Chebyshev psi and theta

The external PrimeNumberTheoremAnd result WeakPNT' at its historic
source revision asserts convergence to one of the natural-number
inclusive von Mangoldt partial sum divided by N.  The parent port
isolated the stronger chebyshev_asymptotic theorem.

This packet proves that the WEAKER external proposition suffices at
the LOCAL pinned Mathlib revision:

  inclusive Lambda sum(N) = Chebyshev.psi(N)          (every N),
  weak psi(N)/N -> 1
    -> psi(x) ~ x                                    (all real x, atTop)
    -> theta(x) ~ x                                 (via psi-theta = O(sqrt x))
    -> ThetaPrimeNumberTheorem
    -> rejection of the parent fixed all-target quadratic psi capacity.

All arrows are conditional on the initial weak-PNT theorem proposition.
The original external theorem proof is NOT imported here.  The external
PNTAnd project pins different Mathlib/Lean versions; a trust-preserving
port or independent proof remains a separate obligation.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
INCLUSIVE_VONMANGOLDT_SOURCE_MATCH_DEFINED /
WEAK_PSI_PNT_TO_THETA_PNT_SOURCE_DEFINED /
WEAK_PNT_THEOREM_PROOF_PORT_OPEN /
NO_RH_CLAIM.
-/

namespace GRWTSK.RiemannHypothesis

open Chebyshev Filter Asymptotics
open GRWTSK.RiemannHypothesis.Checks.PinnedPrimeWeightCanonicalThetaGridRecurrenceControls

/-- Immutable *provenance* record for the weaker external theorem. -/
structure ExternalPNTAndWeakPsiRecord where
  repository : String
  revision : String
  proofFile : String
  proofBlob : String
  theoremName : String
  parentWienerFile : String
  parentWienerBlob : String
  parentWeakTheorem : String
  externalMathlibRevision : String
  localMathlibRevision : String
  deriving Repr

def externalPNTAndWeakPsiSource : ExternalPNTAndWeakPsiRecord where
  repository := "AlexKontorovich/PrimeNumberTheoremAnd"
  revision := "a5040887e6bb24f7c201db8568e7755c138b3878"
  proofFile := "PrimeNumberTheoremAnd/Consequences.lean"
  proofBlob := "6ca8f33be62e333e1a0e2774b78a35af9a57c049"
  theoremName := "WeakPNT'"
  parentWienerFile := "PrimeNumberTheoremAnd/Wiener.lean"
  parentWienerBlob := "06d464bfbf34b21360a8c725422d6c7d1cb4c2eb"
  parentWeakTheorem := "WeakPNT"
  externalMathlibRevision := "308445d7985027f538e281e18df29ca16ede2ba3"
  localMathlibRevision := "db584cd6d46c92f209a44c0f1c829460d327499d"

/-- Literally the inclusive arithmetic von Mangoldt sum in the external
WeakPNT' statement, rebuilt using the LOCAL pinned Lambda function. -/
def externalPNTAndInclusiveMangoldt (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Iic N, ArithmeticFunction.vonMangoldt n

/-- Exact inclusive-source identity, including N=0; Chebyshev.psi
uses an Ioc 0 N sum, but the absent zero term is Lambda(0)=0. -/
theorem externalPNTAndInclusiveMangoldt_eq_psi_natCast
    (N : ℕ) :
    externalPNTAndInclusiveMangoldt N = Chebyshev.psi (N : ℝ) := by
  rw [Chebyshev.psi_eq_sum_Icc]
  unfold externalPNTAndInclusiveMangoldt
  simp only [Nat.floor_natCast]
  have hset : Finset.Iic N = Finset.Icc 0 N := by
    ext n
    simp only [Finset.mem_Iic, Finset.mem_Icc]
    omega
  rw [hset]

/-- Exact external theorem proposition, not an imported proof term.
Division at N=0 is totalized; the limit is insensitive to its value. -/
def ExternalPNTAndWeakPNTInclusive : Prop :=
  Filter.Tendsto
    (fun N : ℕ => externalPNTAndInclusiveMangoldt N / (N : ℝ))
    Filter.atTop (nhds (1 : ℝ))

/-- The pinned square-root higher-prime-power bound is lower order than
the arithmetic scale x at positive infinity. -/
theorem chebyshevSqrt_isLittleO_id :
    (fun x : ℝ => Real.sqrt x) =o[Filter.atTop]
      (fun x : ℝ => x) := by
  have hnonzero :
      ∀ᶠ x : ℝ in Filter.atTop,
        (fun x : ℝ => x) x = 0 → Real.sqrt x = 0 :=
    (Filter.eventually_gt_atTop (0 : ℝ)).mono
      (fun x hx hz => (ne_of_gt hx hz).elim)
  apply (Asymptotics.isLittleO_iff_tendsto' hnonzero).2
  have hroot :
      Filter.Tendsto Real.sqrt Filter.atTop Filter.atTop :=
    Real.tendsto_sqrt_atTop
  have hinv :
      Filter.Tendsto (fun x : ℝ => (Real.sqrt x)⁻¹)
        Filter.atTop (nhds (0 : ℝ)) :=
    tendsto_inv_atTop_zero.comp hroot
  simpa only [Real.sqrt_div_self] using hinv

/-- The source-bound local theorem: a WEAK inclusive PNT input on the
complete von Mangoldt psi sum suffices for the exact theta PNT
epsilon proposition required by the negative audit. -/
theorem externalPNTAndWeakInclusive_to_thetaPNT
    (hWeak : ExternalPNTAndWeakPNTInclusive) :
    ThetaPrimeNumberTheorem := by
  have hNatLimit :
      Filter.Tendsto
        (fun N : ℕ => Chebyshev.psi (N : ℝ) / (N : ℝ))
        Filter.atTop (nhds (1 : ℝ)) := by
    have heq :
        (fun N : ℕ =>
          externalPNTAndInclusiveMangoldt N / (N : ℝ)) =
        (fun N : ℕ => Chebyshev.psi (N : ℝ) / (N : ℝ)) := by
      funext N
      rw [externalPNTAndInclusiveMangoldt_eq_psi_natCast]
    exact heq ▸ hWeak
  have hNatEquivalent :
      Asymptotics.IsEquivalent Filter.atTop
        (fun N : ℕ => Chebyshev.psi (N : ℝ))
        (fun N : ℕ => (N : ℝ)) :=
    Asymptotics.isEquivalent_of_tendsto_one hNatLimit
  have hRealFloor :
      Filter.Tendsto (fun x : ℝ => (⌊x⌋₊ : ℕ))
        Filter.atTop Filter.atTop :=
    tendsto_nat_floor_atTop
  have hPsiFloor :
      Asymptotics.IsEquivalent Filter.atTop
        (fun x : ℝ => Chebyshev.psi ((⌊x⌋₊ : ℕ) : ℝ))
        (fun x : ℝ => ((⌊x⌋₊ : ℕ) : ℝ)) := by
    simpa [Function.comp_def] using
      hNatEquivalent.comp_tendsto hRealFloor
  have hPsiReal :
      Asymptotics.IsEquivalent Filter.atTop
        (fun x : ℝ => Chebyshev.psi x) (fun x : ℝ => x) := by
    have hPsiToFloor :
        Asymptotics.IsEquivalent Filter.atTop
          (fun x : ℝ => Chebyshev.psi x)
          (fun x : ℝ => ((⌊x⌋₊ : ℕ) : ℝ)) :=
      hPsiFloor.congr_left
        (Filter.Eventually.of_forall
          (fun x => (Chebyshev.psi_eq_psi_coe_floor x).symm))
    exact hPsiToFloor.trans
      (Asymptotics.isEquivalent_nat_floor)
  have hPrimePowers :
      (fun x : ℝ => Chebyshev.psi x - Chebyshev.theta x) =o[Filter.atTop]
        (fun x : ℝ => x) := by
    exact Chebyshev.isBigO_psi_sub_theta_sqrt.trans_isLittleO
      chebyshevSqrt_isLittleO_id
  have hThetaReal :
      Asymptotics.IsEquivalent Filter.atTop
        (fun x : ℝ => Chebyshev.theta x) (fun x : ℝ => x) := by
    have h := hPsiReal.sub_isLittleO hPrimePowers
    simpa only [Pi.sub_apply, sub_sub_cancel_left] using h
  have hExternal : ExternalPNTAndChebyshevAsymptotic := by
    exact hThetaReal.congr_left
      (Filter.Eventually.of_forall
        (fun x => (externalPNTAndPrimeLogSum_eq_theta x).symm))
  exact externalPNTAndAsymptotic_to_thetaPNT hExternal

/-- Conditional consumer of the existing rejected fixed all-target
integer-psi capacity, with the WEAKER external PNT statement. -/
theorem no_integerPsiCapacity_of_externalWeakPNT
    (hWeak : ExternalPNTAndWeakPNTInclusive) :
    ¬ PinnedPrimeWeightIntegerPsiQuadraticResponseCapacity :=
  no_integerPsiCapacity_of_namedPNT
    (externalPNTAndWeakInclusive_to_thetaPNT hWeak)

end GRWTSK.RiemannHypothesis
```
