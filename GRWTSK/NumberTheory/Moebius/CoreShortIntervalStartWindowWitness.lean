/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported sources retain their original credits/licenses.

Status: LITERATURE_REVIEWED / WITNESS / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #560. Parent: draft PR #558 at
`999f99e05f25aedb48e5b84abd7bec13c1b276e9`.
-/
import GRWTSK.NumberTheory.Moebius.MertensCoreLongShortIntervalL1

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- First starting point used by the induced short intervals at depth `t`. -/
def harmonicStartWindowLower (j t : ℕ) : ℕ :=
  harmonicShiftLower j t + 1

/-- Exclusive upper endpoint of the starting-point window. -/
def harmonicStartWindowUpper (j t : ℕ) : ℕ :=
  harmonicShiftLower j t + t + 2

/-- The exact starting point corresponding to base index `a`. -/
def harmonicShortIntervalStart (j t a : ℕ) : ℕ :=
  a + harmonicStartWindowLower j t

/-- The repository starting points form one contiguous window. -/
theorem harmonicShortIntervalStart_mem_window
    {j t a : ℕ} (ha : a < t + 1) :
    harmonicShortIntervalStart j t a ∈
      Finset.Ico (harmonicStartWindowLower j t)
        (harmonicStartWindowUpper j t) := by
  unfold harmonicShortIntervalStart harmonicStartWindowLower
    harmonicStartWindowUpper
  simp only [Finset.mem_Ico]
  constructor <;> omega

/-- Every point in the depth-dependent starting window comes from a unique
base index. -/
theorem harmonicStartWindow_eq_image_range
    (j t : ℕ) :
    (Finset.range (t + 1)).image
        (harmonicShortIntervalStart j t) =
      Finset.Ico (harmonicStartWindowLower j t)
        (harmonicStartWindowUpper j t) := by
  ext x
  simp only [Finset.mem_image, Finset.mem_range, Finset.mem_Ico]
  constructor
  · rintro ⟨a, ha, rfl⟩
    exact (harmonicShortIntervalStart_mem_window ha)
  · intro hx
    refine ⟨x - harmonicStartWindowLower j t, ?_, ?_⟩
    · omega
    · unfold harmonicShortIntervalStart
      omega

/-- Exact cardinality of the starting-point window. -/
theorem harmonicStartWindow_card
    (j t : ℕ) :
    (Finset.Ico (harmonicStartWindowLower j t)
      (harmonicStartWindowUpper j t)).card = t + 1 := by
  simp [harmonicStartWindowLower, harmonicStartWindowUpper]

/-- Below the left dyadic scale, the starting window ends exactly at the left
dyadic endpoint plus one. -/
theorem harmonicStartWindowUpper_eq_left_add_one_of_depth_lt_left
    {j t : ℕ} (ht : t + 1 < 2 ^ j) :
    harmonicStartWindowUpper j t = 2 ^ j + 1 := by
  unfold harmonicStartWindowUpper harmonicShiftLower
  rw [max_eq_right]
  · omega
  · omega

/-- Once the depth reaches the left dyadic scale, the starting window begins
at two. -/
theorem harmonicStartWindowLower_eq_two_of_left_le_depth
    {j t : ℕ} (ht : 2 ^ j ≤ t + 1) :
    harmonicStartWindowLower j t = 2 := by
  unfold harmonicStartWindowLower harmonicShiftLower
  rw [max_eq_left]
  · norm_num
  · omega

/-- Scope descriptor for a theorem whose short-interval first moment is
available only after averaging starting points over a macroscopic ambient
window.  This is descriptive only. -/
structure MacroscopicStartWindowShortIntervalScope where
  sourceStatement : Prop
  ambientStartWindow : ℕ → Finset ℕ
  intervalLength : ℕ → ℕ
  firstMomentBound : Prop

/-- Explicit localization bridge required before a macroscopic-start-window
short-interval theorem can feed the exact depth-dependent core packet. -/
structure MacroscopicStartWindowToCoreL1Adapter
    (d : MacroscopicStartWindowShortIntervalScope) : Type where
  localizeToDepthWindows : Prop
  preserveLongLengths : Prop
  preserveAllDepths : Prop
  toCoreL1 :
    d.sourceStatement →
      d.firstMomentBound →
      localizeToDepthWindows →
      preserveLongLengths →
      preserveAllDepths →
      SubpolynomialCoreLongShortIntervalL1Packet

/-- Generic conditional endpoint only after the start-window localization and
remaining coverage obligations are supplied explicitly. -/
theorem riemannHypothesis_of_macroscopicStartWindowAdapter
    (d : MacroscopicStartWindowShortIntervalScope)
    (bridge : MacroscopicStartWindowToCoreL1Adapter d)
    (hsource : d.sourceStatement)
    (hmean : d.firstMomentBound)
    (hloc : bridge.localizeToDepthWindows)
    (hlength : bridge.preserveLongLengths)
    (hdepth : bridge.preserveAllDepths) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreLongShortIntervalL1Packet
    (bridge.toCoreL1 hsource hmean hloc hlength hdepth)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.harmonicStartWindow_eq_image_range
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.harmonicStartWindow_card
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_macroscopicStartWindowAdapter
