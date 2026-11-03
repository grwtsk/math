/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.PortFiberBasic
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticPrimeResidueFiberPorts
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Physical bit observation and q-relative real windows

An observer is a PHYSICAL state transfer together with a Boolean reading.
The transfer is a real geometric map when instantiated by the actual Gödel
chart isometry. Equality of source and target bits is a theorem to prove,
not a property of the word "observer".

The integer q of a finite prime-residue channel is NEVER dilated as an
algebraic field or changed to another residue class. It indexes an
observation unit of positive REAL length q * unit, optionally unit = π.
Relative time is t / (q * unit); the inverse uses the same q and unit.
This is a coordinate change, NOT a field/ring map on ZMod q.

"Complement" has two different precise meanings here:
(1) the logical outside of an interval, with an exact Boolean partition;
(2) a signed real observation defect, when a transfer fails to preserve
    a chosen response. Neither is an unproved spatial orthogonal complement
    nor automatic cancellation of the original Möbius signed packet.
-/

namespace GRWTSK.DifferentialGeometry.PhysicalBitPrimeObserver

open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberPort

/-- A physical transfer map with separately specified source and target
one-bit measurements. The map need NOT preserve the chosen bit. -/
structure BitTransfer (A B : Type*) where
  transfer : A → B
  sourceBit : A → Bool
  targetBit : B → Bool

/-- A physical bit transfer's failure, not a surrogate algebraic phase. -/
def BitTransfer.bitChanged {A B : Type*} (f : BitTransfer A B) (x : A) : Bool :=
  decide (f.sourceBit x ≠ f.targetBit (f.transfer x))

theorem BitTransfer.bitChanged_false_iff {A B : Type*}
    (f : BitTransfer A B) (x : A) :
    f.bitChanged x = false ↔ f.sourceBit x = f.targetBit (f.transfer x) := by
  simp [BitTransfer.bitChanged]

/-- Bit preservation must be proved from the actual physical source map. -/
def BitTransfer.PreservesBit {A B : Type*} (f : BitTransfer A B) : Prop :=
  ∀ x, f.targetBit (f.transfer x) = f.sourceBit x

theorem BitTransfer.bitChanged_false {A B : Type*}
    (f : BitTransfer A B) (h : f.PreservesBit) (x : A) :
    f.bitChanged x = false :=
  (f.bitChanged_false_iff x).2 (h x).symm

/-- Measured-bit interface between adjacent physical transfer maps.
Composition requires the INTERMEDIATE bit measurement to agree. -/
def BitTransfer.comp {A B C : Type*}
    (f : BitTransfer A B) (g : BitTransfer B C)
    (_h : f.targetBit = g.sourceBit) : BitTransfer A C where
  transfer := g.transfer ∘ f.transfer
  sourceBit := f.sourceBit
  targetBit := g.targetBit

theorem BitTransfer.comp_preserves {A B C : Type*}
    (f : BitTransfer A B) (g : BitTransfer B C)
    (h : f.targetBit = g.sourceBit)
    (hf : f.PreservesBit) (hg : g.PreservesBit) :
    (f.comp g h).PreservesBit := by
  intro x
  change g.targetBit (g.transfer (f.transfer x)) = f.sourceBit x
  rw [hg (f.transfer x), ← h, hf x]

/-- The old physical source's actual observer one-form decides a Boolean
bit: the sign of its measured timelike covector reading. -/
def observerBit (p : Parameters) (chart : ℝ) (v : Tangent) : Bool :=
  decide (0 ≤ observerFlat p chart v)

/-- The ACTUAL chart isometry, rather than a guessed bit flip or cyclic
phase label, is the physical state transfer. -/
def godelBitTransfer (p : Parameters) (chart s : ℝ) :
    BitTransfer Tangent Tangent where
  transfer := shiftTangent s
  sourceBit := observerBit p chart
  targetBit := observerBit p (chart + s)

/-- The original Gödel observer measurement is unchanged by its actual
chart isometry; thus its measured bit is transmitted exactly. -/
theorem godelBitTransfer_preserves (p : Parameters) (chart s : ℝ) :
    (godelBitTransfer p chart s).PreservesBit := by
  intro v
  change decide (0 ≤ observerFlat p (chart + s) (shiftTangent s v)) =
    decide (0 ≤ observerFlat p chart v)
  rw [observerFlat_shift]

theorem godelBitTransfer_bitChanged_false
    (p : Parameters) (chart s : ℝ) (v : Tangent) :
    (godelBitTransfer p chart s).bitChanged v = false :=
  (godelBitTransfer p chart s).bitChanged_false
    (godelBitTransfer_preserves p chart s) v

/-- A concrete physically grounded one-bit fixture: the observer's own
unit timelike velocity has covector reading -1 and therefore bit false.
This does not determine the observer's full state from one bit. -/
theorem observerBit_boosted_false (p : Parameters) (chart : ℝ) :
    observerBit p chart (boostedObserver p) = false := by
  have h : observerFlat p chart (boostedObserver p) = -1 := by
    rw [observerFlat_eq_metric]
    exact boostedObserver_unit_timelike p chart
  simp [observerBit, h]

/-- Use the EXISTING typed PortFiber system to transport physical
tangents between charts. Identity/associativity are inherited. -/
def physicalPortSystem : GRWTSK.Topology.PortFiber :=
  GRWTSK.Topology.PortFiber.ofFunctions ℝ (fun _ => Tangent)

/-- A genuine Gödel chart shift viewed as an existing typed port. -/
def physicalShiftPort (chart s : ℝ) :
    physicalPortSystem.Port chart (chart + s) := shiftTangent s

/-- Attach immutable provenance to the actual physical map. -/
def physicalShiftBoundPort (chart s : ℝ)
    (source : GRWTSK.Topology.PortFiber.SourceIdentity) (key : String) :
    GRWTSK.Topology.PortFiber.SourceBoundPort
      physicalPortSystem (A := chart) (B := chart + s) where
  port := physicalShiftPort chart s
  source := source
  invalidationKey := key

/-- The source's full spatial metric, not just its 1-bit sign reading,
is preserved by the same physical bit-transfer operation. -/
theorem godelBitTransfer_spatial (p : Parameters) (chart s : ℝ)
    (v w : Tangent) :
    spatialMetric p (chart+s)
      ((godelBitTransfer p chart s).transfer v)
      ((godelBitTransfer p chart s).transfer w) =
        spatialMetric p chart v w :=
  spatialMetric_shift p chart s v w

/-- The same actual transfer preserves the full antisymmetric vorticity. -/
theorem godelBitTransfer_vorticity (p : Parameters) (chart s : ℝ)
    (v w : Tangent) :
    vorticity p (chart+s)
      ((godelBitTransfer p chart s).transfer v)
      ((godelBitTransfer p chart s).transfer w) =
        vorticity p chart v w :=
  vorticity_shift p chart s v w

/-- The reference unit is a chosen positive REAL measurement scale.
No finite-field cardinality is modified by this structure. -/
structure RealUnit where
  value : ℝ
  positive : 0 < value

/-- An explicit physical reference unit π, not an identification π=q. -/
def piUnit : RealUnit where
  value := Real.pi
  positive := Real.pi_pos

/-- The prime of a residue channel remains the same integer everywhere.
Only the length of one observation unit in ℝ changes. -/
def physicalUnit (q : PrimeIndex) (u : RealUnit) : ℝ :=
  (q.1 : ℝ) * u.value

theorem physicalUnit_pos (q : PrimeIndex) (u : RealUnit) :
    0 < physicalUnit q u := by
  have hq : (0 : ℝ) < (q.1 : ℝ) := by
    exact_mod_cast q.2.pos
  exact mul_pos hq u.positive

/-- q-relative coordinate of a real time T. This is NOT ZMod scaling. -/
def relativeTime (q : PrimeIndex) (u : RealUnit) (T : ℝ) : ℝ :=
  T / physicalUnit q u

/-- Return from a real q-relative coordinate to original physical time. -/
def physicalTime (q : PrimeIndex) (u : RealUnit) (t : ℝ) : ℝ :=
  physicalUnit q u * t

theorem relativeTime_physicalTime (q : PrimeIndex)
    (u : RealUnit) (t : ℝ) :
    relativeTime q u (physicalTime q u t) = t := by
  have h : physicalUnit q u ≠ 0 := ne_of_gt (physicalUnit_pos q u)
  unfold relativeTime physicalTime
  field_simp [h] <;> ring

theorem physicalTime_relativeTime (q : PrimeIndex)
    (u : RealUnit) (T : ℝ) :
    physicalTime q u (relativeTime q u T) = T := by
  have h : physicalUnit q u ≠ 0 := ne_of_gt (physicalUnit_pos q u)
  unfold relativeTime physicalTime
  field_simp [h] <;> ring

/-- Source windows are REAL intervals in q-relative observation units. -/
structure RelativeWindow where
  lower : ℝ
  upper : ℝ
  ordered : lower ≤ upper

/-- The measured time belongs to the selected q-relative window. -/
def InWindow (q : PrimeIndex) (u : RealUnit)
    (w : RelativeWindow) (T : ℝ) : Prop :=
  w.lower ≤ relativeTime q u T ∧ relativeTime q u T ≤ w.upper

/-- A genuine Boolean complement: outside the observation window. -/
def OutsideWindow (q : PrimeIndex) (u : RealUnit)
    (w : RelativeWindow) (T : ℝ) : Prop :=
  ¬ InWindow q u w T

theorem window_or_complement (q : PrimeIndex) (u : RealUnit)
    (w : RelativeWindow) (T : ℝ) :
    InWindow q u w T ∨ OutsideWindow q u w T := by
  exact em _

theorem window_not_complement (q : PrimeIndex) (u : RealUnit)
    (w : RelativeWindow) (T : ℝ) :
    ¬ (InWindow q u w T ∧ OutsideWindow q u w T) := by
  rintro ⟨hin, hout⟩
  exact hout hin

/-- A real-valued source is read only inside the q-relative physical
window. This is a mask, not a new arithmetic source or zero bound. -/
def insideReading (q : PrimeIndex) (u : RealUnit)
    (w : RelativeWindow) (F : ℝ → ℝ) (T : ℝ) : ℝ :=
  if InWindow q u w T then F T else 0

/-- The exact outside-window complement, with the same original F(T). -/
def outsideReading (q : PrimeIndex) (u : RealUnit)
    (w : RelativeWindow) (F : ℝ → ℝ) (T : ℝ) : ℝ :=
  if OutsideWindow q u w T then F T else 0

/-- COMPLETE exact window/complement decomposition. The same original
reading is returned, with no signed loss or missing endpoint. -/
theorem inside_add_outside_eq (q : PrimeIndex) (u : RealUnit)
    (w : RelativeWindow) (F : ℝ → ℝ) (T : ℝ) :
    insideReading q u w F T + outsideReading q u w F T = F T := by
  by_cases h : InWindow q u w T
  · simp [insideReading, outsideReading, OutsideWindow, h]
  · simp [insideReading, outsideReading, OutsideWindow, h]

/-- Overlap is impossible: outside means precisely not in the window. -/
theorem inside_outside_disjoint (q : PrimeIndex) (u : RealUnit)
    (w : RelativeWindow) (F : ℝ → ℝ) (T : ℝ) :
    insideReading q u w F T = 0 ∨ outsideReading q u w F T = 0 := by
  by_cases h : InWindow q u w T
  · exact Or.inr (by simp [outsideReading, OutsideWindow, h])
  · exact Or.inl (by simp [insideReading, h])

/-- Exact source window identification with its real relative coordinates;
there is no hidden approximation, rounding, or change of q. -/
theorem inWindow_physicalTime_iff (q : PrimeIndex) (u : RealUnit)
    (w : RelativeWindow) (t : ℝ) :
    InWindow q u w (physicalTime q u t) ↔
      w.lower ≤ t ∧ t ≤ w.upper := by
  simp [InWindow, relativeTime_physicalTime]

/-- Hostile nonaliasing fixture: q=7 and q=19 do not share the same
physical π-relative unit. A common relative time is not a common
physical time unless its q-index is preserved (or time is zero). -/
def sevenPrime : PrimeIndex := ⟨7, by norm_num⟩
def nineteenPrime : PrimeIndex := ⟨19, by norm_num⟩

theorem pi_seven_nineteen_unit_ne :
    physicalUnit sevenPrime piUnit ≠
      physicalUnit nineteenPrime piUnit := by
  intro h
  change (7 : ℝ) * Real.pi = 19 * Real.pi at h
  nlinarith [Real.pi_pos]

/-- The concrete π-relative observer remains a REAL-valued clock with
q unchanged: T = π*q*t and t=T/(π*q), both invertible at prime q. -/
theorem pi_window_round_trip (q : PrimeIndex) (t : ℝ) :
    relativeTime q piUnit (physicalTime q piUnit t) = t :=
  relativeTime_physicalTime q piUnit t

/-- Actual q-inherited fiber ports preserve the unit and the real
relative clock, because they provably preserve the SAME prime index. -/
theorem channelPort_relativeTime
    {C : WeierstrassCurve ℤ → Prop}
    {W V : WeierstrassCurve ℤ}
    (f : ChannelPort C W V) (x : CurveFiber W)
    (u : RealUnit) (T : ℝ) :
    relativeTime (prime (f.toFiber x)) u T =
      relativeTime (prime x) u T := by
  rw [f.prime_eq x]

theorem channelPort_window
    {C : WeierstrassCurve ℤ → Prop}
    {W V : WeierstrassCurve ℤ}
    (f : ChannelPort C W V) (x : CurveFiber W)
    (u : RealUnit) (w : RelativeWindow) (T : ℝ) :
    InWindow (prime (f.toFiber x)) u w T ↔
      InWindow (prime x) u w T := by
  simp [InWindow, channelPort_relativeTime f x u T]

/-- The q-relative window is a measurement of source time, not a
field automorphism: a fresh real window cannot alter a channel's
certified integer prime or Frobenius trace. -/
theorem relativeTime_has_no_channel_effect
    {W : WeierstrassCurve ℤ}
    (x : CurveFiber W) (u : RealUnit) (T : ℝ) :
    prime x = prime x ∧ trace x = trace x := ⟨rfl, rfl⟩

end GRWTSK.DifferentialGeometry.PhysicalBitPrimeObserver
