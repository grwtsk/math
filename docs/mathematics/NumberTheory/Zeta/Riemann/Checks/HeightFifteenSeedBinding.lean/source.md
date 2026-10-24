# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenSeedBinding

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e525262a349eb9240a943a2cd12c0cd41066758a` · SHA-256 `13916f1f0b9d0c7be71faec106ae0fcf12797bd5fb5793ab789326490f127f13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenSeedLog

set_option autoImplicit false

/-!
# Close the source seed binding for the existing cell-275/base-16 witness

The source statements below have no supplied SeedBinding or SourceReady premise.
They are CLOSED PROOF SCRIPTS ONLY: no Lean elaboration or kernel acceptance has
occurred. Only this one inverse-power leaf is addressed, not a complete contour
cell, computation block, regional count, zero inventory or prime margin.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenSeedBinding

open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalDyadicArithmetic IntegerSeedWindows
open RationalNewtonDisk (magnitude)
open HeightFifteenSquareWitness
open HeightFifteenSeedLog

def scaledExponent : Coordinates := ((-1675927046744002453193903/309485009821345068724781056),(-417002491843795946401253750557/1267650600228229401496703205376))

/-- Exact sixteen-term polynomial coordinates, not rounded output coordinates. -/
def seedValue : Coordinates := ((958195544604169507984896252942004628690227694868635352802572132873142548705109594885821254093615771071900008369059575786373489052576140297645558005343781491810100471933175060044251695706721351888556971827321491595864262813738139941300840409389211532629204842112464460592288674924727334668989462819210451642107073607544168553801649330691271338609996858085827745733342039270474919817182238599628448500691194148713865371523980064401962160613980389112210051161099/1017982879263036617209504118992468929314170489149804248345159409760390891011102601354928101409132620683853650865926106641703912973474826851307729240966912309177325172685108055250095627224134214929504919749286449735888393013804245494846247967917147263715315278038404533229214785398826761669506678394293547154574616153837776724114449172616726018294929403918182694864631843624830095051632901890352935746261080628241693478717741415493640890492473559612106211328000),(-1339758634534081000837580169705516053894468646203195769380016591758877107053892090262818189081271238433183600135214238789533248937529994872425933404144570628471551061358441519466296234550026842280615253882592150423004831153879966171999729661486009086209367118391178768970283857122155937659721038213375150015954100287267254420870332221548235486398388717286774708282641589898577914321744595188493751256757413722540668672105094406348661357128681237306559224244768641/4169657873461397984090128871393152734470842323557598201221772942378561089581476255149785503371807214321064553946833332804419227539352890782956458971000472818390323907318202594304391689110053744351252151293077298118198857784542189546890231676588635192177931378845304968106863760993594415798299354703026369145137627766119533461972783811038109770936030838448876318165532031487304069331488366142885624816685386253277976488827868837861953087457171700171187041599488000))

theorem scaled_exponent_value : divNat exponentValue (2^7) = scaledExponent := by
  norm_num [divNat, exponentValue, scaledExponent]

/-- The only finite polynomial being evaluated is the maintained original one. -/
theorem seed_value : RationalExpStateFold.taylor (divNat exponentValue (2^7)) 16 =
    seedValue := by
  rw [scaled_exponent_value, RationalExpStateFold.taylor_eq]
  norm_num [RationalComplexEnclosure.taylor, RationalComplexEnclosure.power,
    RationalComplexEnclosure.divNat, RationalComplexEnclosure.add,
    RationalComplexEnclosure.mul, RationalComplexEnclosure.one,
    RationalComplexEnclosure.zero, Nat.factorial_succ, scaledExponent, seedValue]

/-- These windows prove floors of the actual polynomial, not its displayed decimals. -/
theorem seed_real_window : FloorWindow 80 seedValue.1 state0.re := by
  norm_num [FloorWindow, denominator, seedValue, state0]

theorem seed_imag_window : FloorWindow 80 seedValue.2 state0.im := by
  norm_num [FloorWindow, denominator, seedValue, state0]

theorem seed_error_window : CeilWindow 80
    (RationalExpTrace.seedTail (magnitude exponentValue) 7 16 +
      magnitude (sub seedValue (IntegerDyadicSquare.decode 80 state0).mid)) state0.error := by
  norm_num [CeilWindow, denominator, RationalExpTrace.seedTail, magnitude,
    exponentValue, seedValue, state0, IntegerDyadicSquare.decode,
    IntegerDyadicSquare.scale, sub, Nat.factorial_succ]

/-- The previous explicit SeedBinding is discharged at source-script scope. -/
theorem seed_binding : SeedBinding := by
  unfold SeedBinding
  symm
  change IntegerExpStateFold.initial resolution.bits
    (RationalPowerValue.exponent center 16 resolution) resolution.squarings resolution.expTerms = state0
  rw [exponent_value, resolution_value]
  apply initial_eq_of_windows
  · rw [seed_value]; exact seed_real_window
  · rw [seed_value]; exact seed_imag_window
  · rw [seed_value]; exact seed_error_window

theorem source_ready : SourceReady := ⟨source_guard,seed_binding⟩

/-- The final logarithm sensitivity is charged after the seven squares. -/
def outputBall : Ball :=
  ⟨((-181521583712071944411114 : ℚ)/(2:ℚ)^80,
     (576563373775500064707160 : ℚ)/(2:ℚ)^80),
    (915910313 : ℚ)/(2:ℚ)^80⟩

theorem finish_error_window : CeilWindow 80
    ((IntegerDyadicSquare.decode 80 state7).rad + magnitude center * logValue.rad)
    915910313 := by
  rw [center_value]
  norm_num [CeilWindow, denominator, state7, logValue, logState,
    IntegerDyadicSquare.decode, IntegerDyadicSquare.scale, magnitude]

theorem finish_value : CheckedIntegerPower.finish center 16 resolution state7 = outputBall := by
  unfold CheckedIntegerPower.finish
  rw [logBall_value, resolution_value]
  change Ball.mk _ _ = Ball.mk _ _
  apply congrArg₂ Ball.mk
  · norm_num [state7, IntegerDyadicSquare.decode, IntegerDyadicSquare.scale, outputBall]
  · rw [up_eq_of_window finish_error_window]
    rfl

/-- Closed composition through the original seven transition scripts. -/
theorem leaf_checked : result = some outputBall := by
  rw [leaf_of_sourceReady source_ready, finish_value]

/-- Same ORIGINAL evaluator, same literal input, same full ball. -/
theorem original_evaluator_checked :
    RationalPowerValue.evaluate center 16 resolution = some outputBall :=
  CheckedIntegerPower.evaluate_refines leaf_checked

theorem power_enclosed : Holds outputBall ((16 : ℂ)^(-toComplex center)) :=
  CheckedIntegerPower.evaluate_sound leaf_checked

theorem radius_bound : outputBall.rad < (1/10^15 : ℚ) := by
  norm_num [outputBall]

theorem requested_tolerance_checked :
    CheckedIntegerPower.evaluateWithin center 16 resolution rows (1/10^15) = some outputBall := by
  change (match result with
    | none => none
    | some b => if decide (0 ≤ (1/10^15 : ℚ) ∧ b.rad ≤ 1/10^15) then some b else none) = _
  rw [leaf_checked]
  have h : 0 ≤ (1/10^15 : ℚ) ∧ outputBall.rad ≤ 1/10^15 :=
    ⟨by norm_num,radius_bound.le⟩
  simp [h]

/-- A failed seed window cannot be replaced by a familiar midpoint or a PASS label. -/
theorem seed_without_tail_rejected : ¬ CeilWindow 80
    (magnitude (sub seedValue (IntegerDyadicSquare.decode 80 state0).mid)) state0.error := by
  norm_num [CeilWindow, denominator, seedValue, state0, IntegerDyadicSquare.decode,
    IntegerDyadicSquare.scale, magnitude, sub]

theorem seed_smaller_error_rejected : ¬ CeilWindow 80
    (RationalExpTrace.seedTail (magnitude exponentValue) 7 16 +
      magnitude (sub seedValue (IntegerDyadicSquare.decode 80 state0).mid)) (state0.error-1) := by
  norm_num [CeilWindow, denominator, RationalExpTrace.seedTail, magnitude,
    exponentValue, seedValue, state0, IntegerDyadicSquare.decode,
    IntegerDyadicSquare.scale, sub, Nat.factorial_succ]

/-- The square error alone is not the final inverse-power error. -/
theorem final_error_strictly_above_square_error :
    (IntegerDyadicSquare.decode 80 state7).rad < outputBall.rad := by
  norm_num [IntegerDyadicSquare.decode, IntegerDyadicSquare.scale, state7, outputBall]

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenSeedBinding
```
