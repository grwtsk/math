# Complete source: GRWTSK.Logic.Certificates.ModelExamples

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a21284989acc75ddf65586f57bb37a73ac0406a9` · SHA-256 `fa705164990b9dffab8ff550088b59211a1623a81efc5fc7350d8e8702585d2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Logic.Certificates.ProofCoverage
import GRWTSK.DynamicalSystems.TransitionSystems.GuardedFiniteBudget
import GRWTSK.Analysis.ErrorBounds.PartialMapComposition
import GRWTSK.Analysis.Inequalities.DiscreteEnergyBalance
import GRWTSK.Analysis.Complex.VerticalReflection
import Mathlib.Tactic.NormNum

/-!
# CCC positive and hostile fixtures

These are kernel-checked model examples and countermodels, not integration
tests of a deployed supervisor. The entire CCC/0.1 hostile suite requires
additional source-specific and operational implementations. Each negative
fixture states the failed inference precisely; no RH counterexample is asserted.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.ProofHorizon.CorkscrewChamberCap.Fixtures

noncomputable section

/-- A real finite proof with a deliberately incomplete domain. -/
def finiteZeroCap : FiniteCap (0 : ℕ) ℕ (fun n ↦ n = 0) where
  domain := {0}
  checked := by simp

theorem finite_check_does_not_supply_coverage :
    (∀ n ∈ finiteZeroCap.domain, n = 0) ∧ ¬ (∀ n : ℕ, n = 0) := by
  refine ⟨finiteZeroCap.checked, ?_⟩
  intro h
  have hbad := h 1
  contradiction

/-- A positive finite-to-uniform example covers its entire declared type. -/
def completeBoolCap : FiniteCap (0 : ℕ) Bool (fun _ ↦ True) where
  domain := {false, true}
  checked := by simp

theorem complete_finite_cap_promotes : UniformCap (0 : ℕ) Bool (fun _ ↦ True) := by
  apply finite_to_uniform completeBoolCap
  intro b
  cases b <;> simp [completeBoolCap]

/-- This implication is proved; its named premise is still false. -/
def openFalseCap : ConditionalCap (0 : ℕ) False where
  premises := [{ name := "unproved premise", statement := False }]
  consequence := by
    intro h
    exact h { name := "unproved premise", statement := False } (by simp)

theorem conditional_cap_keeps_missing_premise :
    ¬ PremisesHold openFalseCap.premises := by
  intro h
  exact openFalseCap.consequence h

theorem conditional_false_cap_is_not_terminal : ¬ Nonempty (TerminalCap (0 : ℕ) False) :=
  no_false_terminal 0

/-- A theorem of `True` exists while a distinct rights guard is denied. -/
theorem theorem_does_not_grant_rights :
    Nonempty (TerminalCap (0 : ℕ) True) ∧
      ¬ Nonempty (EffectPermit (fun _ : Unit ↦ True) (fun _ ↦ False) ()) :=
  ⟨⟨⟨True.intro⟩⟩, denied_effect_has_no_permit ()⟩

def fixturePolicy : ControllerPolicy Unit ℕ Unit Unit Unit where
  statement := fun _ n ↦ n = 0
  typed := fun _ _ ↦ True
  authenticated := fun _ ↦ True
  permits := fun _ _ _ ↦ True
  rights := fun _ _ _ ↦ True

def fixtureState : ControllerState Unit ℕ Unit Unit Unit := initialState () {0, 1} 2

def fixtureReceipt : EffectReceipt Unit Unit Unit Unit := ⟨(), (), (), ()⟩

/-- The verified zero obligation is discharged; a new unresolved obligation is issued. -/
def fixtureProposal : ControllerProposal Unit ℕ Unit Unit Unit where
  source := ()
  discharged := {0}
  introduced := {2}
  effects := [fixtureReceipt]
  cost := 1

theorem fixture_guard : Guard fixturePolicy fixtureState fixtureProposal := by
  constructor <;> simp [fixturePolicy, fixtureState, initialState,
    fixtureProposal, fixtureReceipt]

theorem positive_transition_preserves_safe :
    Safe fixturePolicy () 2 (update fixtureState fixtureProposal) :=
  guard_preserves_safe fixturePolicy () 2
    (initial_state_safe fixturePolicy () {0, 1} 2) fixture_guard

theorem new_unresolved_obligation_remains :
    1 ∈ (update fixtureState fixtureProposal).pending ∧
      2 ∈ (update fixtureState fixtureProposal).pending ∧
        0 ∈ (update fixtureState fixtureProposal).verified := by
  simp [update, fixtureState, initialState, fixtureProposal]

/-- A permitted proposal cannot discharge an actually false mathematical obligation. -/
theorem false_obligation_rejected :
    ¬ Guard fixturePolicy fixtureState
      { fixtureProposal with discharged := {1} } := by
  apply unproved_obligation_blocks (o := 1)
  · simp
  · simp [fixturePolicy]

/-- Operational permission alone cannot waive a false source/surface rights guard. -/
theorem forbidden_effect_rejected :
    ¬ Guard { fixturePolicy with rights := fun _ _ _ ↦ False }
      fixtureState fixtureProposal := by
  apply forbidden_surface_blocks (r := fixtureReceipt)
  · simp [fixtureProposal]
  · simp

def pairEndpoint : FiberEndpoint Unit where
  identity := ⟨"fixture", "0.1"⟩
  frame := ⟨"pair", 0, 0, "pair-source"⟩
  Carrier := ℕ × ℕ
  observe := fun _ x ↦ x.1

def firstEndpoint : FiberEndpoint Unit where
  identity := ⟨"fixture", "0.1"⟩
  frame := ⟨"first", 0, 0, "pair-source"⟩
  Carrier := ℕ
  observe := fun _ x ↦ x

/-- A projection is genuinely noninjective, with its second coordinate retained. -/
def firstCoordinateReduction : RankLosingReduction pairEndpoint firstEndpoint ℕ where
  reduce := Prod.fst
  discard := Prod.snd
  reconstruct := Prod.mk
  reconstruct_packet := by intro x; rfl
  losesDistinction := ⟨(0, 0), (0, 1),
    by exact (by decide : ((0, 0) : ℕ × ℕ) ≠ (0, 1)), rfl⟩

theorem retained_coordinate_loses_information :
    ¬ Function.Injective firstCoordinateReduction.reduce :=
  firstCoordinateReduction.reduce_not_injective

theorem complete_packet_preserves_information :
    Function.Injective firstCoordinateReduction.packet :=
  firstCoordinateReduction.packet_injective

def identityFrame : InvertibleFrameChange pairEndpoint pairEndpoint where
  equiv := Equiv.refl _
  observable_transport := by intro i x; rfl

theorem exact_frame_composition_preserves_observe (x : pairEndpoint.Carrier) :
    pairEndpoint.observe ()
      ((identityFrame.toPort.comp identityFrame.toPort).map x) =
      pairEndpoint.observe () x := by
  exact (identityFrame.toPort.comp identityFrame.toPort).observe_eq_of_zero_budget
    x (by simp [FramedPort.comp, InvertibleFrameChange.toPort]) ()
    (by simp [FramedPort.comp, InvertibleFrameChange.toPort])

def coefficientDot (x y : ℝ × ℝ) : ℝ := x.1 * y.1 + x.2 * y.2

def nativeGram (x y : ℝ × ℝ) : ℝ :=
  (x.1 + x.2) * (y.1 + y.2) + x.2 * y.2

def signedPairing (x y : ℝ × ℝ) : ℝ := x.1 * y.2 + x.2 * y.1

theorem native_gram_nonnegative (x : ℝ × ℝ) : 0 ≤ nativeGram x x := by
  exact add_nonneg (mul_self_nonneg _) (mul_self_nonneg _)

/-- Coefficient orthogonality does not delete either actual mixed readout. -/
theorem coefficient_orthogonality_keeps_mixed_terms :
    coefficientDot (1, 0) (0, 1) = 0 ∧
      nativeGram (1, 0) (0, 1) = 1 ∧ signedPairing (1, 0) (0, 1) = 1 := by
  norm_num [coefficientDot, nativeGram, signedPairing]

theorem positive_gram_does_not_make_signed_form_positive :
    0 ≤ nativeGram (1, -1) (1, -1) ∧ signedPairing (1, -1) (1, -1) < 0 := by
  norm_num [nativeGram, signedPairing]

/-- The standard two-by-two determinant formula retains only this scalar. -/
def twoByTwoDet (a b c d : ℝ) : ℝ := a * d - b * c

def twoByTwoMap (a b c d : ℝ) (x : ℝ × ℝ) : ℝ × ℝ :=
  (a * x.1 + b * x.2, c * x.1 + d * x.2)

theorem determinant_one_does_not_force_identity :
    twoByTwoDet 1 1 0 1 = 1 ∧
      twoByTwoMap 1 1 0 1 ≠ id := by
  constructor
  · norm_num [twoByTwoDet]
  · intro h
    have hpoint := congrFun h (0, 1)
    have hfirst := congrArg Prod.fst hpoint
    norm_num [twoByTwoMap] at hfirst

end

end GRWTSK.ProofHorizon.CorkscrewChamberCap.Fixtures
```
