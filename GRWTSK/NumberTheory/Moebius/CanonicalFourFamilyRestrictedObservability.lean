/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Inherited Mathlib and project declarations retain original authorship.
Issue #966; relation to #942 and #100.
Evidence: SOURCE_DRAFT / NOT_ELABORATED / NOT_KERNEL_CHECKED.
-/
import GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyTerminalColumnObstruction
import Mathlib.Tactic

/-!
# Restricted observability: visible quotient versus support-only admissibility

The actual finite four-family Green incidence matrix has four zero columns
at center X+1 on the literal window X < n <= 2X. Consequently the
observation is unchanged by erasing these terminal-center coordinates.
This is an exact quotient/factorization through an explicit *erasure*;
it is NOT a claim that this erasure describes the entire kernel.

The original terminal factor a=2X for X>=2 is a legal positive-shift
centered arithmetic pair. Therefore even restricting arbitrary real
center packets to coordinates supported by authentic centered shifts
does NOT give a positive restricted lower-frame bound: the previous
unit terminal vector remains inside this support-only set and invisible.

The actual arithmetic configuration at one fixed scale, in contrast,
is the SINGLE vector canonicalFourFamilyCenteredData X. Its difference
set with itself is {0}; a frame bound on that singleton would be vacuous.
A genuinely nontrivial arithmetic family of configurations/differences
must be separately specified before restricted coercivity can be tested.

Neither finite algebra nor support admissibility imports a Chowla uniform
estimate, a Nyman-Beurling angle/closure theorem, a Weil positive form,
a spectral observability theorem or a uniform RH-scale energy bound.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Full real packet of canonical family labels and natural-number centers.
Only the finite range of centers is observed and assigned source energy. -/
abbrev CanonicalFourFamilyRealPacket := CanonicalFourFamily → ℕ → ℝ

/-- The explicit terminal-center erasure; ALL four family coordinates
at c=X+1 are removed, with every other coefficient untouched. -/
def canonicalFourFamilyTerminalErase
    (X : ℕ) (v : CanonicalFourFamilyRealPacket) :
    CanonicalFourFamilyRealPacket :=
  fun F c => if c = X + 1 then 0 else v F c

theorem canonicalFourFamilyTerminalErase_idempotent
    (X : ℕ) (v : CanonicalFourFamilyRealPacket) :
    canonicalFourFamilyTerminalErase X
      (canonicalFourFamilyTerminalErase X v) =
    canonicalFourFamilyTerminalErase X v := by
  funext F c
  by_cases hc : c = X + 1 <;>
    simp [canonicalFourFamilyTerminalErase, hc]

/-- Every row of the real arithmetic matrix factors through this exact
visible coordinate projection. This uses the previously proven
source-specific ZERO COLUMN, not a general dimension analogy. -/
theorem canonicalFourFamilyGreenMatrixApply_eq_terminalErase
    (X : ℕ) {n : ℕ} (hn : n ∈ centeredGreenWindow X)
    (v : CanonicalFourFamilyRealPacket) :
    canonicalFourFamilyGreenMatrixApply X n v =
      canonicalFourFamilyGreenMatrixApply X n
        (canonicalFourFamilyTerminalErase X v) := by
  classical
  unfold canonicalFourFamilyGreenMatrixApply
  apply Finset.sum_congr rfl
  intro F _hF
  apply Finset.sum_congr rfl
  intro c _hc
  by_cases hcenter : c = X + 1
  · subst c
    rw [canonicalFourFamilyGreenMatrixEntry_terminalCenter_zero hn F]
    simp [canonicalFourFamilyTerminalErase]
  · simp [canonicalFourFamilyTerminalErase, hcenter]

/-- Exact finite observation quotient: the entire original Green-window
readout is insensitive to erasing the terminal-center coordinates. -/
theorem canonicalFourFamilyWindowReadout_eq_terminalErase
    (X : ℕ) (v : CanonicalFourFamilyRealPacket) :
    canonicalFourFamilyWindowReadout X v =
      canonicalFourFamilyWindowReadout X
        (canonicalFourFamilyTerminalErase X v) := by
  funext n
  exact canonicalFourFamilyGreenMatrixApply_eq_terminalErase
    X n.property v

theorem canonicalFourFamilyWindowOutputEnergy_eq_terminalErase
    (X : ℕ) (v : CanonicalFourFamilyRealPacket) :
    canonicalFourFamilyWindowOutputEnergy X v =
      canonicalFourFamilyWindowOutputEnergy X
        (canonicalFourFamilyTerminalErase X v) := by
  unfold canonicalFourFamilyWindowOutputEnergy
  apply Finset.sum_congr rfl
  intro n hn
  rw [canonicalFourFamilyGreenMatrixApply_eq_terminalErase X hn v]

/-- A family of source packets can be distinguished by the original
observations only if it is already distinguishable after terminal erasure.
This is a NECESSARY condition on any proposed admissible configuration set. -/
theorem terminalErase_injectiveOn_of_observable_injectiveOn
    (X : ℕ) (S : Set CanonicalFourFamilyRealPacket)
    (hobs : Set.InjOn (canonicalFourFamilyWindowReadout X) S) :
    Set.InjOn (canonicalFourFamilyTerminalErase X) S := by
  intro u hu v hv he
  apply hobs hu hv
  calc
    canonicalFourFamilyWindowReadout X u =
        canonicalFourFamilyWindowReadout X
          (canonicalFourFamilyTerminalErase X u) :=
      canonicalFourFamilyWindowReadout_eq_terminalErase X u
    _ = canonicalFourFamilyWindowReadout X
          (canonicalFourFamilyTerminalErase X v) := by rw [he]
    _ = canonicalFourFamilyWindowReadout X v :=
      (canonicalFourFamilyWindowReadout_eq_terminalErase X v).symm

/-- Authentic centered-support test at a family-center cell. This is a
mathematical *support* predicate, NOT an assertion that a real coordinate
has been realized as a difference of two arithmetic configurations. -/
def canonicalFourFamilyCenterSupport
    (X : ℕ) (F : CanonicalFourFamily) (c : ℕ) : Prop :=
  c ∈ Finset.range (2 * X + 1) ∧
    (zeroWindingCenteredShiftSet (2 * X)
      (canonicalFourFamilyEndpointParity F) c
      (canonicalFourFamilyShiftSet (2 * X) F)).Nonempty

/-- Arbitrary real packets may be supported only in cells that have
at least one genuinely admissible centered shift. This criterion is
strictly weaker than realizability as an arithmetic packet difference. -/
def CanonicalFourFamilySupportAdmissible
    (X : ℕ) (v : CanonicalFourFamilyRealPacket) : Prop :=
  ∀ F c, v F c ≠ 0 → canonicalFourFamilyCenterSupport X F c

def CanonicalFourFamilySupportAdmissibleSpace
    (X : ℕ) : Set CanonicalFourFamilyRealPacket :=
  {v | CanonicalFourFamilySupportAdmissible X v}

/-- The terminal factor a=2X is not an artificial zero-column coordinate:
for X>=2 it has a genuinely admitted shift at the exact family and center. -/
theorem canonicalTerminalAnchor_center_has_authentic_support
    {X : ℕ} (hX : 2 ≤ X) :
    canonicalFourFamilyCenterSupport X
      (canonicalFourFamilyOfAnchor (2 * X)) (X + 1) := by
  have ha : 0 < 2 * X := by omega
  have hselected := canonicalTerminalAnchor_shift_admissible hX
  have hcenter := canonicalTerminalAnchor_center hX
  have hmem :
      (anchoredMobiusPair (2 * X)).h ∈
        zeroWindingCenteredShiftSet (2 * X)
          (anchoredMobiusPair (2 * X)).r
          (anchoredMobiusPair (2 * X)).center
          (canonicalFourFamilyShiftSet (2 * X)
            (canonicalFourFamilyOfAnchor (2 * X))) :=
    (anchored_shift_mem_authentic_centered_iff
      ha (le_refl _) _).2 hselected
  refine ⟨Finset.mem_range.mpr (by omega), ?_⟩
  refine ⟨(anchoredMobiusPair (2 * X)).h, ?_⟩
  simpa only [canonicalFourFamilyEndpointParity_of_anchor,
    hcenter] using hmem

theorem canonicalFourFamilyTerminalDelta_supportAdmissible
    {X : ℕ} (hX : 2 ≤ X) :
    canonicalFourFamilyTerminalDelta X ∈
      CanonicalFourFamilySupportAdmissibleSpace X := by
  classical
  intro F c hv
  have hcell :
      F = canonicalFourFamilyOfAnchor (2 * X) ∧ c = X + 1 := by
    by_contra hbad
    apply hv
    simp [canonicalFourFamilyTerminalDelta, hbad]
  rcases hcell with ⟨rfl, rfl⟩
  exact canonicalTerminalAnchor_center_has_authentic_support hX

/-- A restricted lower-frame estimate must name the actual set of
differences D and the correct coercive norm direction. In contrast
to ambient no-go, THIS statement is quantified only over D. -/
def HasCanonicalFourFamilyRestrictedLowerFrame
    (X : ℕ) (D : Set CanonicalFourFamilyRealPacket) (A : ℝ) : Prop :=
  0 < A ∧ ∀ v ∈ D,
    A * canonicalFourFamilyAmbientSourceEnergy X v ≤
      canonicalFourFamilyWindowOutputEnergy X v

/-- Necessary obstruction for a proposed D: membership of the terminal
kernel vector makes EVERY positive restricted lower-frame assertion false. -/
theorem not_restrictedLowerFrame_of_terminalDelta_mem
    {X : ℕ} (hX : 2 ≤ X)
    (D : Set CanonicalFourFamilyRealPacket)
    (hdelta : canonicalFourFamilyTerminalDelta X ∈ D)
    (A : ℝ) :
    ¬ HasCanonicalFourFamilyRestrictedLowerFrame X D A := by
  rintro ⟨hA, hframe⟩
  have hsrc : 0 < canonicalFourFamilyAmbientSourceEnergy X
      (canonicalFourFamilyTerminalDelta X) :=
    canonicalFourFamilyTerminalDelta_sourceEnergy_pos X (by omega)
  have hbound := hframe _ hdelta
  rw [canonicalFourFamilyTerminalDelta_outputEnergy_zero] at hbound
  exact (not_le_of_gt (mul_pos hA hsrc)) hbound

/-- PRINCIPAL SUPPORT-ONLY NO-GO: genuine shift-support membership is not
sufficient for restricted observability of arbitrary real packets.
The admissible terminal witness is already in this support-only set. -/
theorem not_hasCanonicalFourFamilySupportOnlyLowerFrame
    {X : ℕ} (hX : 2 ≤ X) (A : ℝ) :
    ¬ HasCanonicalFourFamilyRestrictedLowerFrame X
        (CanonicalFourFamilySupportAdmissibleSpace X) A :=
  not_restrictedLowerFrame_of_terminalDelta_mem hX
    (CanonicalFourFamilySupportAdmissibleSpace X)
    (canonicalFourFamilyTerminalDelta_supportAdmissible hX) A

/-- The actual source so far supplies ONE canonical arithmetic data vector
at each fixed X; no two genuinely varying configurations have been defined. -/
def CanonicalFourFamilySingleArithmeticConfiguration
    (X : ℕ) : Set CanonicalFourFamilyRealPacket :=
  {canonicalFourFamilyCenteredData X}

/-- Differences of the only currently declared configuration with itself.
This is a literal source-based set, NOT a freely chosen full support space. -/
def CanonicalFourFamilySingleArithmeticDifferenceSet
    (X : ℕ) : Set CanonicalFourFamilyRealPacket :=
  {v | ∃ u ∈ CanonicalFourFamilySingleArithmeticConfiguration X,
      ∃ w ∈ CanonicalFourFamilySingleArithmeticConfiguration X, v = u - w}

/-- The single-configuration difference set is just zero. Any frame on it
is VACUOUS; it would not justify an RH-strength analytic estimate. -/
theorem canonicalSingleArithmeticDifferenceSet_eq_zero
    (X : ℕ) :
    CanonicalFourFamilySingleArithmeticDifferenceSet X =
      ({0} : Set CanonicalFourFamilyRealPacket) := by
  ext v
  constructor
  · rintro ⟨u, hu, w, hw, hv⟩
    have hu0 : u = canonicalFourFamilyCenteredData X := by
      simpa [CanonicalFourFamilySingleArithmeticConfiguration] using hu
    have hw0 : w = canonicalFourFamilyCenteredData X := by
      simpa [CanonicalFourFamilySingleArithmeticConfiguration] using hw
    rw [hu0, hw0, sub_self] at hv
    simp [hv]
  · intro hv
    have hv0 : v = 0 := by simpa using hv
    subst v
    refine ⟨canonicalFourFamilyCenteredData X, ?_,
      canonicalFourFamilyCenteredData X, ?_, ?_⟩
    · simp [CanonicalFourFamilySingleArithmeticConfiguration]
    · simp [CanonicalFourFamilySingleArithmeticConfiguration]
    · simp

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.canonicalFourFamilyWindowReadout_eq_terminalErase
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.terminalErase_injectiveOn_of_observable_injectiveOn
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.canonicalTerminalAnchor_center_has_authentic_support
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.not_hasCanonicalFourFamilySupportOnlyLowerFrame
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.canonicalSingleArithmeticDifferenceSet_eq_zero
