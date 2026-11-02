/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalMertensSquareBridge
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupEndpointQuadrature
import Mathlib

/-!
# An actual-source Mertens spike forces fifth-power pickup energy

A written complete mathematical argument, separately published in
moebius-causal-mertens-fifth-power-spike-2026-11-01.md, proves

  |M(N)|^5 <= 1944*N^4*
    (H(log(N+|M(N)|/2))-H(log N))          N>=1,

for the ORIGINAL signed Mobius M and ORIGINAL physical pickup H.

The first new Lean theorem here proves a finite integer-index
consequence of |mu|<=1: the exact ORIGINAL Mertens prefix
cannot change by more than k over k integer steps.

The calculus/variance bridge and strict-rate equivalence are
NAMED PROP TARGETS, NOT theorem proofs in this module:
  OriginalPickupMertensSpikeLocalLowerTarget
  OriginalEndpointFixedRateDyadic
  OriginalMertensStrictPower
  OriginalFixedRateEquivalenceTarget

The mathematical proof of the local fifth-power bound uses the
source's genuine velocity exp(-u/2)*M(exp u). It needs no RH
hypothesis, zeta zero-free region, random signs, endpoint fitting,
or silently removed prime-bank credit. It is a necessary arithmetic
test for any proposed fixed-rate endpoint *upper* bound and does
not itself establish that missing upper bound.

No native Lean/Lake execution was dispatched. No imports of this
candidate into GRWTSK.lean and no source trust promotion.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.CausalMertensSpike

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

/-- Original Möbius cumulative sign cannot change by more than
one per newly included integer; all squareful zero coefficients
remain in the same original index interval. -/
theorem finiteMertensPrefix_shift_abs_le (N k : ℕ) :
    |finiteMertensPrefix (N + k) - finiteMertensPrefix N| ≤ (k : ℝ) := by
  induction k with
  | zero =>
      simp
  | succ k ih =>
      have hmu : |moebiusReal (N + k + 1)| ≤ (1 : ℝ) := by
        unfold moebiusReal
        exact_mod_cast (ArithmeticFunction.abs_moebius_le_one
          (n := N + k + 1))
      calc
        |finiteMertensPrefix (N + (k + 1)) - finiteMertensPrefix N| =
            |(finiteMertensPrefix (N + k) - finiteMertensPrefix N) +
              moebiusReal (N + k + 1)| := by
                have hi : N + (k + 1) = (N + k) + 1 := by omega
                rw [hi, finiteMertensPrefix_succ]
                ring
        _ ≤ |finiteMertensPrefix (N + k) - finiteMertensPrefix N| +
            |moebiusReal (N + k + 1)| := abs_add_le _ _
        _ ≤ (k : ℝ) + 1 := add_le_add ih hmu
        _ = ((k + 1 : ℕ) : ℝ) := by push_cast; ring

/-- UNPROVED AS LEAN: paper-proved source-exact fifth-power
local energy lower bound. N=0 is excluded; M=0 gives zero. -/
def OriginalPickupMertensSpikeLocalLowerTarget : Prop :=
  ∀ N : ℕ, 1 ≤ N →
    |finiteMertensPrefix N| ^ 5 ≤
      1944 * (N : ℝ) ^ 4 *
        (pickupEnergy
          (Real.log ((N : ℝ) + |finiteMertensPrefix N| / 2)) -
         pickupEnergy (Real.log (N : ℝ)))

/-- The same EXACT endpointSum as the published quarter-unit
source comparison, on the fixed additive-covering dyadic log grid. -/
def OriginalEndpointFixedRateDyadic : Prop :=
  ∃ ρ C : ℝ, ∃ j₀ : ℕ,
    0 < ρ ∧ ρ < 1 ∧ 0 ≤ C ∧
    ∀ j : ℕ, j₀ ≤ j →
      endpointSum ((j : ℝ) * Real.log 2) ≤
        C * Real.exp (ρ * ((j : ℝ) * Real.log 2))

/-- A genuine fixed-power saving for the original signed integer
Mertens prefix, not an unrestricted arithmetic model. -/
def OriginalMertensStrictPower : Prop :=
  ∃ θ C : ℝ, ∃ N₀ : ℕ,
    (1 / 2 : ℝ) < θ ∧ θ < 1 ∧ 0 ≤ C ∧
    ∀ N : ℕ, N₀ ≤ N → 1 ≤ N →
      |finiteMertensPrefix N| ≤ C * (N : ℝ) ^ θ

/-- UNPROVED AS LEAN: the written paper derives both directions,
including the 1944 lower-bound bridge and the exact diagonal/quarter
allowances. This definition is NOT a theorem, axiom, RH proof or
arithmetic saving. -/
def OriginalFixedRateEquivalenceTarget : Prop :=
  OriginalEndpointFixedRateDyadic ↔ OriginalMertensStrictPower

end GRWTSK.NumberTheory.Moebius.CausalMertensSpike
