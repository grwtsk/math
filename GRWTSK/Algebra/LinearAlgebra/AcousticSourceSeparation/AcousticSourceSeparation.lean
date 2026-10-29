import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AcousticSynergy
import Mathlib.LinearAlgebra.Matrix.ToLin

/-!
# Recovery from declared acoustic source mixtures

The sum/difference receiver model is an exact two-channel model, not a derivation
of jet radiation or of a spherical-harmonic expansion near walls. Its first
channel becomes a volume channel only under a separately stated radiation law.
Arbitrary additional angular content defeats its decoder. Finite receiver count
alone is never an injectivity proof. Power retains less than a complex trace.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace BubbleAcoustics

/-- Two real time traces in a declared linear source model. -/
abbrev SourceChannels := (ℝ → ℝ) × (ℝ → ℝ)

/-- One receiver measures the sum of the declared source channels. -/
noncomputable def sumReceiver (source : SourceChannels) : ℝ → ℝ :=
  fun t => source.1 t + source.2 t

/-- An independently calibrated receiver measures their difference. -/
noncomputable def differenceReceiver (source : SourceChannels) : ℝ → ℝ :=
  fun t => source.1 t - source.2 t

/-- The paired carrier retains both real traces, including their signs. -/
noncomputable def pairedReceiver (source : SourceChannels) : SourceChannels :=
  (sumReceiver source, differenceReceiver source)

/-- The inverse of the exact sum/difference receiver model. -/
noncomputable def pairedReceiverDecoder (data : SourceChannels) : SourceChannels :=
  (fun t => (data.1 t + data.2 t) / 2, fun t => (data.1 t - data.2 t) / 2)

/-- Both source traces are reconstructed under the declared two-channel model. -/
theorem paired_receiver_decoder (source : SourceChannels) :
    pairedReceiverDecoder (pairedReceiver source) = source := by
  apply Prod.ext <;> funext t <;>
    simp only [pairedReceiverDecoder, pairedReceiver, sumReceiver, differenceReceiver] <;> ring

/-- The paired receiver is injective on the declared source space. -/
theorem paired_receiver_injective : Function.Injective pairedReceiver :=
  Function.LeftInverse.injective paired_receiver_decoder

/-- Every named target on this source space descends through its proved injective carrier. -/
theorem target_descends_paired_receiver {Target : Type*} (target : SourceChannels → Target) :
    DescendsThrough pairedReceiver target :=
  fun {_ _} h => congrArg target (paired_receiver_injective h)

/-- A single sum trace cannot distinguish which channel supplied a constant signal. -/
noncomputable def sumReceiverObstruction : DescentObstruction sumReceiver
    (fun source : SourceChannels => source.1) where
  left := (fun _ => 1, fun _ => 0)
  right := (fun _ => 0, fun _ => 1)
  sameCarrier := by funext t; norm_num [sumReceiver]
  targetSeparated := by intro h; have := congrFun h 0; norm_num at this

/-- Cancellation likewise prevents recovery from the difference trace alone. -/
noncomputable def differenceReceiverObstruction : DescentObstruction differenceReceiver
    (fun source : SourceChannels => source.1) where
  left := (fun _ => 1, fun _ => 1)
  right := (fun _ => 0, fun _ => 0)
  sameCarrier := by funext t; norm_num [differenceReceiver]
  targetSeparated := by intro h; have := congrFun h 0; norm_num at this

/-- Source mixing creates a proof-bearing obstruction to first-channel recovery. -/
theorem first_channel_not_determined_by_sum :
    ¬DescendsThrough sumReceiver (fun source : SourceChannels => source.1) :=
  descent_obstruction_not_descends sumReceiverObstruction

/-- The second receiver alone is also insufficient for the first-channel target. -/
theorem first_channel_not_determined_by_difference :
    ¬DescendsThrough differenceReceiver (fun source : SourceChannels => source.1) :=
  descent_obstruction_not_descends differenceReceiverObstruction

/-- Two unit-cost tests use the existing per-test observation budget semantics. -/
noncomputable def receiverPolicy : ObservationPolicy SourceChannels Bool (ℝ → ℝ) where
  cost := fun _ => 1
  observe := fun test => if test then differenceReceiver else sumReceiver

/-- A selected receiver inventory with a caller-supplied persistent identity. -/
noncomputable def receiverNotion (tests : Finset Bool) (identity : String) :
    FiniteNotion SourceChannels Bool (ℝ → ℝ) where
  sourceIdentity := identity
  policy := receiverPolicy
  tests := tests

/-- A singleton inventory at budget one retains exactly its chosen real trace. -/
theorem receiver_singleton_equivalent_iff (test : Bool) (identity : String)
    (x y : SourceChannels) :
    (receiverNotion {test} identity).Equivalent 1 x y ↔
      receiverPolicy.observe test x = receiverPolicy.observe test y := by
  constructor
  · intro h
    exact h test (by simp [receiverNotion]) (by simp [receiverNotion, receiverPolicy])
  · intro h other member _
    have equal : other = test := by simpa [receiverNotion] using member
    subst other
    exact h

/-- The exact inventory union determines the first source trace. -/
theorem receiver_join_determines (sumIdentity differenceIdentity jointIdentity : String) :
    ((receiverNotion {false} sumIdentity).join
      (receiverNotion {true} differenceIdentity) rfl jointIdentity).DeterminesAt
        1 (fun source => source.1) := by
  intro x y h
  obtain ⟨hs, hd⟩ := (FiniteNotion.equivalent_join_iff
    (receiverNotion {false} sumIdentity) (receiverNotion {true} differenceIdentity)
      rfl jointIdentity 1 x y).mp h
  apply target_descends_paired_receiver (fun source => source.1)
  exact Prod.ext ((receiver_singleton_equivalent_iff false sumIdentity x y).mp hs)
    ((receiver_singleton_equivalent_iff true differenceIdentity x y).mp hd)

/-- Each receiver is insufficient alone, while their declared join recovers the target. -/
theorem receiver_first_channel_synergy (sumIdentity differenceIdentity jointIdentity : String) :
    (receiverNotion {false} sumIdentity).SynergisticFor
      (receiverNotion {true} differenceIdentity) rfl jointIdentity 1 (fun source => source.1) := by
  refine ⟨?_, ?_, receiver_join_determines sumIdentity differenceIdentity jointIdentity⟩
  · intro h
    exact sumReceiverObstruction.targetSeparated
      (h ((receiver_singleton_equivalent_iff false sumIdentity _ _).mpr
        sumReceiverObstruction.sameCarrier))
  · intro h
    exact differenceReceiverObstruction.targetSeparated
      (h ((receiver_singleton_equivalent_iff true differenceIdentity _ _).mpr
        differenceReceiverObstruction.sameCarrier))

/-- A third trace models an unresolved even angular contribution at both receivers. -/
abbrev SourceWithResidual := SourceChannels × (ℝ → ℝ)

/-- An even residual aliases into the nominal sum and difference data. -/
noncomputable def residualReceiver (source : SourceWithResidual) : SourceChannels :=
  (fun t => sumReceiver source.1 t + source.2 t,
    fun t => differenceReceiver source.1 t + source.2 t)

/-- Two receivers do not recover the first channel if an arbitrary residual is admitted. -/
noncomputable def residualReceiverObstruction : DescentObstruction residualReceiver
    (fun source : SourceWithResidual => source.1.1) where
  left := ((fun _ => 1, fun _ => 0), fun _ => 0)
  right := ((fun _ => 0, fun _ => 0), fun _ => 1)
  sameCarrier := by
    apply Prod.ext <;> funext t <;>
      norm_num [residualReceiver, sumReceiver, differenceReceiver]
  targetSeparated := by intro h; have := congrFun h 0; norm_num at this

/-- The larger source scope invalidates the two-channel decoder for this target. -/
theorem first_channel_not_determined_with_residual :
    ¬DescendsThrough residualReceiver (fun source : SourceWithResidual => source.1.1) :=
  descent_obstruction_not_descends residualReceiverObstruction

/-- A finite array applies a declared source-to-receiver matrix at each time. -/
noncomputable def finiteArrayCarrier {Mode Receiver Time : Type*} [Fintype Mode]
    (matrix : Matrix Receiver Mode ℝ) (source : Time → Mode → ℝ) : Time → Receiver → ℝ :=
  fun t => matrix.mulVec (source t)

/-- Injectivity of the measured matrix, rather than receiver count, proves exact recovery. -/
theorem finite_array_target_descends {Mode Receiver Time Target : Type*} [Fintype Mode]
    (matrix : Matrix Receiver Mode ℝ) (separates : Function.Injective matrix.mulVec)
    (target : (Time → Mode → ℝ) → Target) :
    DescendsThrough (finiteArrayCarrier matrix) target := by
  intro x y same
  apply congrArg target
  funext t
  exact separates (congrFun same t)

/-- A nonzero invisible source vector obstructs recovery from the finite array. -/
noncomputable def finiteArrayKernelObstruction {Mode Receiver : Type*} [Fintype Mode]
    (matrix : Matrix Receiver Mode ℝ) (invisible : Mode → ℝ)
    (vanishes : matrix.mulVec invisible = 0) (nonzero : invisible ≠ 0) :
    DescentObstruction matrix.mulVec id where
  left := invisible
  right := 0
  sameCarrier := by simpa using vanishes
  targetSeparated := nonzero

/-- A power carrier retains the pointwise squared norm, without complex phase. -/
noncomputable def spectralPower {Index : Type*} (spectrum : Index → ℂ) : Index → ℝ :=
  fun i => ‖spectrum i‖ ^ 2

/-- Negating a complete complex spectrum leaves every power coordinate unchanged. -/
theorem spectral_power_neg {Index : Type*} (spectrum : Index → ℂ) :
    spectralPower (-spectrum) = spectralPower spectrum := by
  funext i
  simp [spectralPower]

/-- Even a one-bin signed phase distinction can be lost by the full power carrier. -/
noncomputable def spectralPowerObstruction {Index : Type*} (witness : Index) :
    DescentObstruction (spectralPower (Index := Index)) id where
  left := fun _ => 1
  right := fun _ => -1
  sameCarrier := by funext i; simp [spectralPower]
  targetSeparated := by
    intro h
    have := congrArg Complex.re (congrFun h witness)
    norm_num at this

/-- Full power data cannot recover the signed complex spectrum on a nonempty index domain. -/
theorem spectrum_not_determined_by_power {Index : Type*} (witness : Index) :
    ¬DescendsThrough (spectralPower (Index := Index)) id :=
  descent_obstruction_not_descends (spectralPowerObstruction witness)

/-- Any real-linear analysis transform has a global-sign ambiguity after taking power. -/
theorem linear_analysis_power_neg {Index : Type*}
    (analysis : (ℝ → ℝ) →ₗ[ℝ] (Index → ℂ)) (trace : ℝ → ℝ) :
    spectralPower (analysis (-trace)) = spectralPower (analysis trace) := by
  rw [map_neg]
  exact spectral_power_neg (analysis trace)

/-- A concrete nonzero trace witnesses the ambiguity for any such analysis transform. -/
noncomputable def analysisPowerObstruction {Index : Type*}
    (analysis : (ℝ → ℝ) →ₗ[ℝ] (Index → ℂ)) :
    DescentObstruction (fun trace => spectralPower (analysis trace)) id where
  left := fun _ => 1
  right := fun _ => -1
  sameCarrier := (linear_analysis_power_neg analysis (fun _ => 1)).symm
  targetSeparated := by intro h; have := congrFun h 0; norm_num at this

/-- Array separation yields volume history only with an explicit first-channel radiation law
and both initial data; no angular decomposition alone supplies this law. -/
theorem history_descends_of_faithful_paired_receiver {Object : Type*}
    (density distance initialTime : ℝ) (densityPositive : 0 < density)
    (distancePositive : 0 < distance) (history : Object → ℝ → ℝ)
    (regular : ∀ x, ContDiff ℝ 2 (history x)) (source : Object → SourceChannels)
    (volumeLaw : ∀ x, (source x).1 = volumePressure density distance (history x)) :
    DescendsThrough (fun x => (pairedReceiver (source x),
      history x initialTime, deriv (history x) initialTime)) history := by
  intro x y same
  have sourceEqual := paired_receiver_injective (congrArg Prod.fst same)
  have initialEqual := congrArg (fun data => data.2.1) same
  have slopeEqual := congrArg (fun data => data.2.2) same
  apply history_eq_of_waveform_initial_data density distance densityPositive distancePositive
    (history x) (history y) (regular x) (regular y) initialTime _ initialEqual slopeEqual
  exact (volumeLaw x).symm.trans ((congrArg Prod.fst sourceEqual).trans (volumeLaw y))

/-- A positive smooth history together with an unconstrained additive source contribution. -/
abbrev MixedHistory := PositiveC2History × (ℝ → ℝ)

/-- Total trace and exact initial data, before a source-separation law has been established. -/
noncomputable def mixedHistoryCarrier (density distance : ℝ) (state : MixedHistory) :
    (ℝ → ℝ) × ℝ × ℝ :=
  (fun t => volumePressure density distance state.1.val t + state.2 t,
    state.1.val 0, deriv state.1.val 0)

/-- Identical initial value and slope do not remove ambiguity from an unknown additive source. -/
noncomputable def mixedHistoryObstruction (density distance : ℝ) :
    DescentObstruction (mixedHistoryCarrier density distance)
      (fun state : MixedHistory => state.1.val) where
  left := ((stationaryConstant 0 1 (by norm_num)).val, fun _ => 0)
  right := ((stationaryQuadratic 0).val,
    fun t => -volumePressure density distance (historyTarget (stationaryQuadratic 0)) t)
  sameCarrier := by
    apply Prod.ext
    · funext t
      simp [mixedHistoryCarrier, stationaryConstant, constantHistory, volumePressure,
        historyTarget]
    · apply Prod.ext
      · norm_num [mixedHistoryCarrier, stationaryConstant, stationaryQuadratic, constantHistory]
      · exact (stationaryConstant 0 1 (by norm_num)).property.trans
          (stationaryQuadratic 0).property.symm
  targetSeparated := by
    intro h
    have := congrFun h 1
    norm_num [stationaryConstant, stationaryQuadratic, constantHistory] at this

/-- Source contamination defeats total-waveform volume recovery even after fixing affine data. -/
theorem history_not_determined_by_mixed_trace (density distance : ℝ) :
    ¬DescendsThrough (mixedHistoryCarrier density distance)
      (fun state : MixedHistory => state.1.val) :=
  descent_obstruction_not_descends (mixedHistoryObstruction density distance)

end BubbleAcoustics
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
