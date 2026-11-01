/- Copyright (c) 2026 grwtsk contributors. MIT.
   SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. -/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.RealShadowMomentPort
import Mathlib.Tactic

/-!
# Finite signed ordered-pair residues for source-bound moments

The complete ordered off-diagonal inventory is retained. `mu` and `pickup`
are explicit supplier functions. Instantiating `mu` by actual Möbius values and
`pickup` by the causal source `r_n(u)` requires an exact source adapter; a
finite simulation or a matching formula name does not provide that adapter.

An orientation swap preserves the product weight. A reflected residue port
requires an exact source-bound equality, supplied and audited separately.
No all-scale cancellation estimate, Riemann Hypothesis, universal type
encoding, DOM rendering invariant or native certification is inferred.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.MomentResiduePorts

/-- Both orientations are available: the sole forbidden pair is the diagonal. -/
def signedPairTerm (mu pickup : ℕ → ℝ) (m n : ℕ) : ℝ :=
  mu m * mu n * pickup m * pickup n

theorem signedPairTerm_swap (mu pickup : ℕ → ℝ) (m n : ℕ) :
    signedPairTerm mu pickup m n = signedPairTerm mu pickup n m := by
  unfold signedPairTerm
  ring

/-- Exact residue selector: m - n ≡ residue modulo q (q > 0 on consumers). -/
def residuePairContribution
    (mu pickup : ℕ → ℝ) (q residue m n : ℕ) : ℝ :=
  if m ≠ n ∧ m % q = (n + residue) % q then
    signedPairTerm mu pickup m n
  else 0

/-- Complete finite ordered pair sum: no triangle-inequality sign loss. -/
def orderedResiduePairSum
    (mu pickup : ℕ → ℝ) (N q residue : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N,
    residuePairContribution mu pickup q residue m n

/-- Diagonal pairs are excluded before any projection. -/
theorem residuePairContribution_diagonal
    (mu pickup : ℕ → ℝ) (q residue m : ℕ) :
    residuePairContribution mu pickup q residue m m = 0 := by
  simp [residuePairContribution]

/-- A source-bound signed difference, derived from the exact two snapshots. -/
def sourceResidual
    (mu pickup : ℕ → ℝ) (N q a b : ℕ) : ℝ :=
  orderedResiduePairSum mu pickup N q b -
    orderedResiduePairSum mu pickup N q a

/-- Port accounting never discards the difference between its endpoints. -/
theorem sourceResidual_accounting
    (mu pickup : ℕ → ℝ) (N q a b : ℕ) :
    orderedResiduePairSum mu pickup N q b =
      orderedResiduePairSum mu pickup N q a +
        sourceResidual mu pickup N q a b := by
  unfold sourceResidual
  ring

/-- A reflection is admitted only with exact equality for the supplied source. -/
structure ReflectedResiduePort (mu pickup : ℕ → ℝ) where
  cutoff : ℕ
  modulus : ℕ
  modulus_positive : 0 < modulus
  residue : ℕ
  residue_bound : residue < modulus
  reflected : ℕ := (modulus - residue) % modulus
  equalityWitness :
    orderedResiduePairSum mu pickup cutoff modulus residue =
      orderedResiduePairSum mu pickup cutoff modulus reflected

/-- An accepted reflected port has no unrecorded signed residual. -/
theorem reflectedPort_zeroResidual (mu pickup : ℕ → ℝ)
    (port : ReflectedResiduePort mu pickup) :
    sourceResidual mu pickup port.cutoff port.modulus
      port.residue port.reflected = 0 := by
  unfold sourceResidual
  rw [← port.equalityWitness]
  exact sub_self _

end GRWTSK.NumberTheory.MomentResiduePorts
