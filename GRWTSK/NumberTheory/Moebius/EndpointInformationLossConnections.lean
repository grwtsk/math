/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported project and Mathlib results retain their original credits/licenses.
Status: LITERATURE_REVIEWED / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owners: #439 / #441 / #442 / #443 / #444 / #430 / #437 / #89 / #334.
-/
import GRWTSK.NumberTheory.Moebius.DyadicPrefixMaximalComparison
import Mathlib.Order.PartialSups

/-!
# Typed connections from endpoint information loss

The actual two-point Möbius witness from `#430` shows that one terminal
correlation value can vanish while an earlier admissible prefix is nonzero.
This module records the precise scope of that obstruction and separates it from
four neighboring conjectural programs: Chowla, Elliott, short intervals, and
Sarnak disjointness.

The positive theorem in this layer is finite and generic: an all-horizon bound
with a monotone majorant controls every finite prefix maximum.  Therefore the
endpoint witness refutes only one-horizon terminal recovery; it does not refute
an all-horizon correlation theorem.

Open bridges are represented as explicit premises.  Conceptual relevance is a
separate constructor and cannot be projected to an implication.

No Chowla, Elliott, short-interval, Sarnak, maximal-energy, or RH premise is
proved by this module.  All proof scripts await exact-head Lean elaboration and
transitive trust review.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.EndpointConnections

open scoped BigOperators
open LogarithmicSampling

/-- Prefix sum of an arbitrary real sequence. -/
def finitePrefix (a : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range N, a n

/-- Maximum absolute prefix value through the inclusive horizon `T`. -/
def finitePrefixMax (a : ℕ → ℝ) (T : ℕ) : ℝ :=
  partialSups (fun N : ℕ => |finitePrefix a N|) T

@[simp] theorem finitePrefix_zero (a : ℕ → ℝ) :
    finitePrefix a 0 = 0 := by
  simp [finitePrefix]

/-- Every included prefix is bounded by the finite prefix maximum. -/
theorem abs_finitePrefix_le_max
    {a : ℕ → ℝ} {N T : ℕ} (hNT : N ≤ T) :
    |finitePrefix a N| ≤ finitePrefixMax a T := by
  unfold finitePrefixMax
  exact le_partialSups_of_le (fun n : ℕ => |finitePrefix a n|) hNT

/-- The prefix maximum is nonnegative because it includes the zero prefix. -/
theorem finitePrefixMax_nonneg (a : ℕ → ℝ) (T : ℕ) :
    0 ≤ finitePrefixMax a T := by
  calc
    0 = |finitePrefix a 0| := by simp
    _ ≤ finitePrefixMax a T :=
      abs_finitePrefix_le_max (Nat.zero_le _)

/-- A one-horizon proposal recovering all earlier prefixes from only the
terminal value at that horizon. -/
def TerminalRecoveryAt (a : ℕ → ℝ) (T : ℕ) : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧
    finitePrefixMax a T ≤ C * |finitePrefix a T|

/-- Generic endpoint-information-loss obstruction.  If an earlier included
prefix is nonzero but the terminal value is zero, no finite multiplier can
recover the prefix maximum from that terminal value. -/
theorem not_terminalRecoveryAt_of_terminal_eq_zero
    {a : ℕ → ℝ} {N T : ℕ}
    (hNT : N ≤ T)
    (hN : finitePrefix a N ≠ 0)
    (hT : finitePrefix a T = 0) :
    ¬ TerminalRecoveryAt a T := by
  intro hrecover
  obtain ⟨C, _hC, hbound⟩ := hrecover
  rw [hT, abs_zero, mul_zero] at hbound
  have hpositive : 0 < finitePrefixMax a T :=
    lt_of_lt_of_le (abs_pos.mpr hN) (abs_finitePrefix_le_max hNT)
  exact (not_lt_of_ge hbound) hpositive

/-- The actual two-point Möbius correlation sequence at shift `h`. -/
def twoPointMobiusSequence (h n : ℕ) : ℝ :=
  moebiusReal (n + 1) * moebiusReal (n + 1 + h)

/-- Compatibility with the repository's exact two-point prefix. -/
theorem finitePrefix_twoPointMobiusSequence_eq (h N : ℕ) :
    finitePrefix (twoPointMobiusSequence h) N =
      mertensTwoPointPrefix h N := by
  rfl

/-- The reusable actual-source endpoint-information-loss proposition. -/
def EndpointInformationLossWitness : Prop :=
  ¬ TerminalRecoveryAt (twoPointMobiusSequence 1) 2

/-- The witness follows from the exact values `C(1,1)=-1` and `C(1,2)=0`. -/
theorem endpointInformationLossWitness :
    EndpointInformationLossWitness := by
  apply not_terminalRecoveryAt_of_terminal_eq_zero
    (a := twoPointMobiusSequence 1) (N := 1) (T := 2)
  · norm_num
  · rw [finitePrefix_twoPointMobiusSequence_eq,
      mertensTwoPointPrefix_one_one_eq_neg_one]
    norm_num
  · rw [finitePrefix_twoPointMobiusSequence_eq,
      mertensTwoPointPrefix_one_two_eq_zero]

/-- No universal one-horizon terminal-recovery principle exists for all real
sequences and horizons.  The actual Möbius source is already a counterexample. -/
def UniversalOneHorizonTerminalRecovery : Prop :=
  ∀ (a : ℕ → ℝ) (T : ℕ), TerminalRecoveryAt a T

theorem not_universalOneHorizonTerminalRecovery :
    ¬ UniversalOneHorizonTerminalRecovery := by
  intro hrecover
  exact endpointInformationLossWitness
    (hrecover (twoPointMobiusSequence 1) 2)

/-- A bound supplied at every horizon for one fixed sequence. -/
def AllHorizonBound (a : ℕ → ℝ) (B : ℕ → ℝ) : Prop :=
  ∀ N : ℕ, |finitePrefix a N| ≤ B N

/-- A bound for every finite prefix maximum of one fixed sequence. -/
def PrefixMaxBound (a : ℕ → ℝ) (B : ℕ → ℝ) : Prop :=
  ∀ T : ℕ, finitePrefixMax a T ≤ B T

/-- An all-horizon bound with a monotone majorant controls the corresponding
prefix maximum.  This is why the finite witness does not refute an all-horizon
Chowla- or Elliott-type theorem. -/
theorem prefixMaxBound_of_allHorizonBound
    {a : ℕ → ℝ} {B : ℕ → ℝ}
    (hbound : AllHorizonBound a B)
    (hmono : Monotone B) :
    PrefixMaxBound a B := by
  intro T
  unfold finitePrefixMax
  exact (partialSups_le_iff).2
    (fun n hn => (hbound n).trans (hmono hn))

/-- Prefix-maximal control always supplies the pointwise all-horizon bound. -/
theorem allHorizonBound_of_prefixMaxBound
    {a : ℕ → ℝ} {B : ℕ → ℝ}
    (hmax : PrefixMaxBound a B) :
    AllHorizonBound a B := by
  intro N
  exact
    (abs_finitePrefix_le_max (a := a) (N := N) (T := N) le_rfl).trans
      (hmax N)

/-- At fixed source data and a monotone majorant, all-horizon and maximal-prefix
bounds are equivalent.  No uniformity over a growing parameter family is
created by this theorem. -/
theorem prefixMaxBound_iff_allHorizonBound_of_monotone
    {a : ℕ → ℝ} {B : ℕ → ℝ}
    (hmono : Monotone B) :
    PrefixMaxBound a B ↔ AllHorizonBound a B :=
  ⟨allHorizonBound_of_prefixMaxBound,
    fun h => prefixMaxBound_of_allHorizonBound h hmono⟩

/-- A translated finite prefix, used for short-interval interfaces. -/
def translatedPrefix (a : ℕ → ℝ) (start N : ℕ) : ℝ :=
  finitePrefix (fun n => a (start + n)) N

/-- Maximum over all subprefixes of one translated interval. -/
def translatedPrefixMax (a : ℕ → ℝ) (start H : ℕ) : ℝ :=
  finitePrefixMax (fun n => a (start + n)) H

/-- One-horizon endpoint recovery on a translated interval. -/
def TerminalIntervalRecoveryAt
    (a : ℕ → ℝ) (start H : ℕ) : Prop :=
  TerminalRecoveryAt (fun n => a (start + n)) H

/-- Uniform terminal control over all translated intervals. -/
def EveryTerminalIntervalBound
    (a : ℕ → ℝ) (B : ℕ → ℕ → ℝ) : Prop :=
  ∀ start H : ℕ, |translatedPrefix a start H| ≤ B start H

/-- Uniform control of every subprefix of every translated interval. -/
def EverySubprefixIntervalBound
    (a : ℕ → ℝ) (B : ℕ → ℕ → ℝ) : Prop :=
  ∀ start H : ℕ, translatedPrefixMax a start H ≤ B start H

/-- Every-subprefix control supplies terminal control, but the converse is not
available without an additional theorem. -/
theorem everyTerminalIntervalBound_of_everySubprefix
    {a : ℕ → ℝ} {B : ℕ → ℕ → ℝ}
    (hmax : EverySubprefixIntervalBound a B) :
    EveryTerminalIntervalBound a B := by
  intro start H
  have hinc := abs_finitePrefix_le_max
    (a := fun n => a (start + n)) (N := H) (T := H) le_rfl
  exact hinc.trans (hmax start H)

/-- The actual source-specific interval witness at start zero. -/
def EndpointIntervalInformationLossWitness : Prop :=
  ¬ TerminalIntervalRecoveryAt (twoPointMobiusSequence 1) 0 2

theorem endpointIntervalInformationLossWitness :
    EndpointIntervalInformationLossWitness := by
  simpa [EndpointIntervalInformationLossWitness,
    TerminalIntervalRecoveryAt, EndpointInformationLossWitness] using
      endpointInformationLossWitness

/-- Noncoercible mathematical relations.  Only constructors carrying a complete
positive implication are projectable to a proof path. -/
inductive TypedConnection (source target : Prop) : Type
  | implies (proof : source → target)
  | equivalent (proof : source ↔ target)
  | requires (bridge : Prop) (transport : source → bridge → target)
  | suppliesPremise
      (premise : Prop) (provide : source → premise) (consume : premise → target)
  | refutesAtScope (proof : source → ¬ target)
  | relevantOnly

namespace TypedConnection

/-- Extract a positive implication only when the constructor actually contains
one.  Open requirements, scoped refutations, and relevance edges return none. -/
def toImplication?
    {source target : Prop} :
    TypedConnection source target → Option (PLift (source → target))
  | .implies h => some ⟨h⟩
  | .equivalent h => some ⟨h.mp⟩
  | .requires _ _ => none
  | .suppliesPremise _ provide consume =>
      some ⟨fun hs => consume (provide hs)⟩
  | .refutesAtScope _ => none
  | .relevantOnly => none

@[simp] theorem relevantOnly_has_no_implication
    (source target : Prop) :
    toImplication?
      (TypedConnection.relevantOnly : TypedConnection source target) = none :=
  rfl

@[simp] theorem requires_has_no_implication
    {source target bridge : Prop}
    (transport : source → bridge → target) :
    toImplication?
      (TypedConnection.requires bridge transport :
        TypedConnection source target) = none :=
  rfl

@[simp] theorem refutation_has_no_positive_implication
    {source target : Prop} (hrefute : source → ¬ target) :
    toImplication?
      (TypedConnection.refutesAtScope hrefute :
        TypedConnection source target) = none :=
  rfl

end TypedConnection

/-- Exact fixed-data relation available for any sequence and monotone majorant. -/
def fixedDataAllHorizonImpliesMaximal
    (a : ℕ → ℝ) (B : ℕ → ℝ) (hmono : Monotone B) :
    TypedConnection (AllHorizonBound a B) (PrefixMaxBound a B) :=
  .implies (fun h => prefixMaxBound_of_allHorizonBound h hmono)

/-- The actual witness refutes only the named terminal-recovery proposition. -/
def endpointWitnessRefutesTerminalRecovery :
    TypedConnection EndpointInformationLossWitness
      (TerminalRecoveryAt (twoPointMobiusSequence 1) 2) :=
  .refutesAtScope (fun h => h)

/-- Parameterized higher-order Möbius product source.  This is an interface, not
an assertion that its all-horizon bound is available. -/
def higherOrderMobiusTerm
    (k : ℕ) (shift : Fin k → ℕ) (n : ℕ) : ℝ :=
  ∏ i : Fin k, moebiusReal (n + 1 + shift i)

/-- A parameterized ordinary higher-order Chowla-facing bound.  The majorant is
part of the interface, and distinct shifts remain an explicit hypothesis. -/
def HigherOrderChowlaBound
    (k : ℕ) (B : (Fin k → ℕ) → ℕ → ℝ) : Prop :=
  ∀ shift : Fin k → ℕ, Function.Injective shift →
    AllHorizonBound (higherOrderMobiusTerm k shift) (B shift)

/-- Terminal bounds uniform over a scale-dependent growing shift range. -/
def GrowingShiftTwoPointTerminalBound
    (range : ℕ → ℕ) (B : ℕ → ℝ) : Prop :=
  ∀ T h : ℕ, 1 ≤ h → h ≤ range T →
    |finitePrefix (twoPointMobiusSequence h) T| ≤ B T

/-- Prefix-maximal bounds uniform over a scale-dependent growing shift range. -/
def GrowingShiftTwoPointMaximalBound
    (range : ℕ → ℕ) (B : ℕ → ℝ) : Prop :=
  ∀ T h : ℕ, 1 ≤ h → h ≤ range T →
    finitePrefixMax (twoPointMobiusSequence h) T ≤ B T

/-- The missing uniform endpoint-to-maximal theorem for a growing shift family. -/
def GrowingShiftUniformityBridge
    (range : ℕ → ℕ) (B : ℕ → ℝ) : Prop :=
  GrowingShiftTwoPointTerminalBound range B →
    GrowingShiftTwoPointMaximalBound range B

/-- A summed maximal-energy target over the complete declared shift range. -/
def SummedShiftMaximalEnergyBound
    (range : ℕ → ℕ) (E : ℕ → ℝ) : Prop :=
  ∀ T : ℕ,
    (∑ h ∈ Finset.Icc 1 (range T),
      finitePrefixMax (twoPointMobiusSequence h) T ^ 2) ≤ E T

/-- A Chowla connection profile keeps fixed, growing, summed, and higher-order
claims noncoercible. -/
structure ChowlaConnectionProfile where
  fixedDataClaim : Prop
  growingShiftClaim : Prop
  summedEnergyClaim : Prop
  higherOrderClaim : Prop

/-- The exact missing bridge from fixed-data control to growing-shift control. -/
def ChowlaFixedToGrowingBridge (p : ChowlaConnectionProfile) : Prop :=
  p.fixedDataClaim → p.growingShiftClaim

/-- The exact missing bridge from growing-shift control to the summed energy. -/
def ChowlaGrowingToSummedBridge (p : ChowlaConnectionProfile) : Prop :=
  p.growingShiftClaim → p.summedEnergyClaim

/-- The exact missing bridge from binary/fixed-order data to the declared
higher-order claim. -/
def ChowlaHigherOrderBridge (p : ChowlaConnectionProfile) : Prop :=
  p.fixedDataClaim → p.higherOrderClaim

def chowlaFixedToGrowingRequiresBridge (p : ChowlaConnectionProfile) :
    TypedConnection p.fixedDataClaim p.growingShiftClaim :=
  .requires (ChowlaFixedToGrowingBridge p) (fun h bridge => bridge h)

def chowlaGrowingToSummedRequiresBridge (p : ChowlaConnectionProfile) :
    TypedConnection p.growingShiftClaim p.summedEnergyClaim :=
  .requires (ChowlaGrowingToSummedBridge p) (fun h bridge => bridge h)

def chowlaBinaryToHigherOrderRequiresBridge (p : ChowlaConnectionProfile) :
    TypedConnection p.fixedDataClaim p.higherOrderClaim :=
  .requires (ChowlaHigherOrderBridge p) (fun h bridge => bridge h)

/-- The finite witness is relevant to supplier design but is not a refutation
or proof of the higher-order Chowla claim. -/
def endpointWitnessRelevantToHigherOrderChowla
    (p : ChowlaConnectionProfile) :
    TypedConnection EndpointInformationLossWitness p.higherOrderClaim :=
  .relevantOnly

/-- Corrected Elliott data retain the sequence, correction, and complete
analytic hypothesis as independent fields. -/
structure CorrectedElliottData where
  term : ℕ → ℝ
  correction : ℕ → ℝ
  analyticHypothesis : Prop

/-- The exact corrected correlation sequence. -/
def correctedElliottSequence (d : CorrectedElliottData) (n : ℕ) : ℝ :=
  d.term n - d.correction n

/-- A fixed-data corrected Elliott-facing all-horizon bound. -/
def CorrectedElliottFixedDataBound
    (d : CorrectedElliottData) (B : ℕ → ℝ) : Prop :=
  d.analyticHypothesis → AllHorizonBound (correctedElliottSequence d) B

/-- Elliott claims at fixed binary, growing-family, maximal, and higher-order
scope remain distinct. -/
structure ElliottConnectionProfile where
  correctedBinaryFixedData : Prop
  growingFamilyUniform : Prop
  growingFamilyMaximal : Prop
  higherOrder : Prop

/-- Uniformity across a growing family is an explicit missing theorem. -/
def ElliottFamilyUniformityBridge (p : ElliottConnectionProfile) : Prop :=
  p.correctedBinaryFixedData → p.growingFamilyUniform

/-- Family-uniform terminal control still needs a maximal transport. -/
def ElliottFamilyMaximalBridge (p : ElliottConnectionProfile) : Prop :=
  p.growingFamilyUniform → p.growingFamilyMaximal

/-- Binary corrected data do not become higher order by coercion. -/
def ElliottHigherOrderBridge (p : ElliottConnectionProfile) : Prop :=
  p.correctedBinaryFixedData → p.higherOrder

def elliottFixedToUniformRequiresBridge (p : ElliottConnectionProfile) :
    TypedConnection p.correctedBinaryFixedData p.growingFamilyUniform :=
  .requires (ElliottFamilyUniformityBridge p) (fun h bridge => bridge h)

def elliottUniformToMaximalRequiresBridge (p : ElliottConnectionProfile) :
    TypedConnection p.growingFamilyUniform p.growingFamilyMaximal :=
  .requires (ElliottFamilyMaximalBridge p) (fun h bridge => bridge h)

def elliottBinaryToHigherOrderRequiresBridge (p : ElliottConnectionProfile) :
    TypedConnection p.correctedBinaryFixedData p.higherOrder :=
  .requires (ElliottHigherOrderBridge p) (fun h bridge => bridge h)

def endpointWitnessRelevantToElliott (p : ElliottConnectionProfile) :
    TypedConnection EndpointInformationLossWitness p.higherOrder :=
  .relevantOnly

/-- External short-interval claims are deliberately represented by distinct
propositions until exact source-specific definitions are supplied. -/
structure ShortIntervalConnectionProfile where
  globalPrefixClaim : Prop
  averagedClaim : Prop
  almostAllClaim : Prop
  everyIntervalClaim : Prop
  everySubprefixClaim : Prop

/-- Missing average-to-every coverage theorem. -/
def AverageToEveryIntervalBridge
    (p : ShortIntervalConnectionProfile) : Prop :=
  p.averagedClaim → p.everyIntervalClaim

/-- Missing exceptional-set elimination theorem. -/
def AlmostAllToEveryIntervalBridge
    (p : ShortIntervalConnectionProfile) : Prop :=
  p.almostAllClaim → p.everyIntervalClaim

/-- Missing translation from a source beginning at zero to every interval
start. -/
def GlobalToTranslatedIntervalBridge
    (p : ShortIntervalConnectionProfile) : Prop :=
  p.globalPrefixClaim → p.everyIntervalClaim

def averageToEveryIntervalRequiresBridge
    (p : ShortIntervalConnectionProfile) :
    TypedConnection p.averagedClaim p.everyIntervalClaim :=
  .requires (AverageToEveryIntervalBridge p) (fun h bridge => bridge h)

def almostAllToEveryIntervalRequiresBridge
    (p : ShortIntervalConnectionProfile) :
    TypedConnection p.almostAllClaim p.everyIntervalClaim :=
  .requires (AlmostAllToEveryIntervalBridge p) (fun h bridge => bridge h)

def globalToTranslatedIntervalRequiresBridge
    (p : ShortIntervalConnectionProfile) :
    TypedConnection p.globalPrefixClaim p.everyIntervalClaim :=
  .requires (GlobalToTranslatedIntervalBridge p) (fun h bridge => bridge h)

def endpointWitnessRelevantToShortIntervals
    (p : ShortIntervalConnectionProfile) :
    TypedConnection EndpointIntervalInformationLossWitness
      p.everySubprefixClaim :=
  .relevantOnly

/-- The exact local witness refutes only terminal recovery on the named
translated interval. -/
def endpointIntervalWitnessRefutesTerminalRecovery :
    TypedConnection EndpointIntervalInformationLossWitness
      (TerminalIntervalRecoveryAt (twoPointMobiusSequence 1) 0 2) :=
  .refutesAtScope (fun h => h)

/-- Minimal typed dynamical consumer.  A future Sarnak adapter must instantiate
these fields with one actual phase space, transformation, orbit, observable,
and entropy hypothesis. -/
structure DynamicalDisjointnessConsumer where
  Phase : Type
  transform : Phase → Phase
  initial : Phase
  observable : Phase → ℝ
  zeroEntropyHypothesis : Prop
  disjointnessConclusion : Prop

/-- A selected arithmetic premise and its exact dynamical consumer. -/
structure SarnakConnectionProfile where
  arithmeticPremise : Prop
  consumer : DynamicalDisjointnessConsumer

/-- The missing arithmetic-to-dynamical theorem. -/
def ArithmeticToDynamicalAdapter (p : SarnakConnectionProfile) : Prop :=
  p.arithmeticPremise →
    p.consumer.zeroEntropyHypothesis →
      p.consumer.disjointnessConclusion

/-- Sarnak-type transport is unavailable until the adapter is proved. -/
def sarnakRequiresArithmeticToDynamicalAdapter
    (p : SarnakConnectionProfile) :
    TypedConnection
      (p.arithmeticPremise ∧ p.consumer.zeroEntropyHypothesis)
      p.consumer.disjointnessConclusion :=
  .requires (ArithmeticToDynamicalAdapter p)
    (fun h bridge => bridge h.1 h.2)

/-- Once both the arithmetic premise and the exact adapter are supplied, the
selected dynamical conclusion follows by ordinary function application. -/
theorem sarnakConclusion_of_arithmetic_and_adapter
    (p : SarnakConnectionProfile)
    (harith : p.arithmeticPremise)
    (hentropy : p.consumer.zeroEntropyHypothesis)
    (hadapter : ArithmeticToDynamicalAdapter p) :
    p.consumer.disjointnessConclusion :=
  hadapter harith hentropy

/-- The finite endpoint witness is conceptually relevant to information
retention, but by itself it is neither a proof nor a refutation of Sarnak
Möbius disjointness. -/
def endpointWitnessRelevantToSarnak (p : SarnakConnectionProfile) :
    TypedConnection EndpointInformationLossWitness
      p.consumer.disjointnessConclusion :=
  .relevantOnly

/-- One record groups the four noncoercible conjectural connection profiles. -/
structure EndpointConnectionAtlas where
  chowla : ChowlaConnectionProfile
  elliott : ElliottConnectionProfile
  shortIntervals : ShortIntervalConnectionProfile
  sarnak : SarnakConnectionProfile

end GRWTSK.RiemannHypothesis.CCC.EndpointConnections

#print axioms GRWTSK.RiemannHypothesis.CCC.EndpointConnections.endpointInformationLossWitness
#print axioms GRWTSK.RiemannHypothesis.CCC.EndpointConnections.prefixMaxBound_iff_allHorizonBound_of_monotone
#print axioms GRWTSK.RiemannHypothesis.CCC.EndpointConnections.everyTerminalIntervalBound_of_everySubprefix
#print axioms GRWTSK.RiemannHypothesis.CCC.EndpointConnections.sarnakConclusion_of_arithmetic_and_adapter
