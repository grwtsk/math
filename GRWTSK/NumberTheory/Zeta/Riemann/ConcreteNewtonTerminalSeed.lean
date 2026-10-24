/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.RationalPowerIntegerSeed
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonPacket
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Integer seed for the separate terminal base 4097

The fixed 4096-term prefix does NOT contain this base. Its source remains
-c, and the 13-fuel reduction gives exponent 12 and mantissa 4097/4096.
Both logarithm widths survive, including twelve copies of width(2,18).
This applies the reusable complete-error refinement rather than copying
its algebra. All large arithmetic scripts are unexecuted and unaudited.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonTerminalSeed

open GRWTSK.Analysis.ComplexAnalysis
open RationalRoundedArithmetic IntegerDyadicTrace IntegerTaylorPolynomial
open RationalPowerIntegerSeed
open GRWTSK.Analysis.Real.RationalLogEnclosure
open ConcreteNewtonPacket RationalZetaCenterEvaluation

def encoding : Encoding where
  argumentDen := 67457252106571701601549396381559166345890704378215597786031505035651993132850520780544312226040351174852508403674692053593265938076283033476166148738252800000000000
  argumentNum := (-1095918195932683076361798192285230350882360888610702607449891613199431624323007392624004833426421399653577957546007378491161556450351591050378746893227360750000000, -30981004955249955237938029593648391751756776673126319191613878980529890480856622643148772943523921129540516893565118228953062553485273817518981324668310331030657953)
  radiusNum := 10692307717060879438099942595311207367546379187245673933021256864576440701726543345257592592316780843064698283703708535814741369978541802856453357187179230593552651
  radiusDen := 22485750702190567200516465460519722115296901459405199262010501678550664377616840260181437408680117058284169467891564017864421979358761011158722049579417600000000000
  displacementNum := 458637949469040467067956123403918465063261765898556933441375174504164283948207872053595225712640581368058050765094911364137670183751526361
  displacementDen := 267595027022526182905039252663938794218535271602591040190567096149351266727959278810928057473418896828424178153276559295965270487013696556693979136000000000

theorem encoding_valid : Valid encoding := by
  constructor <;> norm_num [encoding]

/-- The extra terminal base is neither 4096 nor a new prefix index. -/
theorem reduction_data :
    (schedule 4097).logExponent = 12 ∧
      RationalPowerEvaluation.mantissa 4097 (schedule 4097) = 4097 / 4096 ∧
      ratio (4097 / 4096) = 1 / 8193 := by
  norm_num [schedule, logExponent, RationalPowerEvaluation.mantissa, scaleQ, ratio]

/-- The exponent multiplies BOTH the value and uncertainty of log(2). -/
theorem log_decomposition :
    RationalPowerEvaluation.logCenter 4097 (schedule 4097) =
      12 * lower 2 18 + lower (4097 / 4096) 18 +
        (12 * width 2 18 + width (4097 / 4096) 18) / 2 ∧
    RationalPowerEvaluation.logError 4097 (schedule 4097) =
        (12 * width 2 18 + width (4097 / 4096) 18) / 2 := by
  norm_num [RationalPowerEvaluation.logCenter, RationalPowerEvaluation.logError,
    RationalPowerEvaluation.logLower, RationalPowerEvaluation.logWidth,
    RationalPowerEvaluation.mantissa, schedule, logExponent, scaleQ]

/-- These are equalities of the finite rational supplier, not exact logarithms. -/
theorem log_data :
    RationalPowerEvaluation.logCenter 4097 (schedule 4097) =
      4383672783730732305447192769140921403529443554442810429799566452797726497292029570496019333705685598614311830184029513964646225801406364201514987572909443 / 527009782082591418762104659230930987077271127954809357703371133091031196350394693598002439265940243553535221903708531668697390141220961199032548037017600 ∧
    RationalPowerEvaluation.logError 4097 (schedule 4097) =
      188034122275163861250175076258600688544422448804699361988759040202067479573115663802302202080936320478546115259222233514826473473 / 6271758445840457411836857484311065489496920428185727504466416316000420313936545597131126347033255394416191675467419358499186027039383513047515136 := by
  norm_num [RationalPowerEvaluation.logCenter, RationalPowerEvaluation.logError,
    RationalPowerEvaluation.logLower, RationalPowerEvaluation.logWidth,
    RationalPowerEvaluation.mantissa, schedule, logExponent, scaleQ,
    lower, width, ratio, Finset.sum_range_succ]

/-- Exact source binding. No seed equality or endpoint acceptance is assumed. -/
theorem encoding_binding : Binding 4097 (sourceExponent center) (schedule 4097) 21 encoding := by
  constructor
  · norm_num [schedule]
  · unfold RationalPowerEvaluation.argument
    rw [log_data.1]
    norm_num [encoding, argumentQ, sourceExponent, center, schedule, scaleQ, QComplex.smul]
  · unfold RationalPowerEvaluation.radius
    rw [log_data.1]
    norm_num [encoding, sourceExponent, center, schedule, scaleQ, QComplex.smul, QComplex.rect]
  · unfold RationalPowerEvaluation.displacement
    rw [log_data.2]
    norm_num [encoding, sourceExponent, center, schedule, scaleQ, QComplex.smul, QComplex.rect]

/-- All original guards remain; source identities alone are not admissibility. -/
theorem terminal_admissible : RationalPowerEvaluation.Admissible 4097
    (sourceExponent center) (schedule 4097) := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · norm_num [RationalPowerEvaluation.mantissa, schedule, logExponent, scaleQ]
  · norm_num [schedule]
  · rw [encoding_binding.radius_eq]
    norm_num [encoding]
  · rw [encoding_binding.displacement_eq]
    norm_num [encoding]

def terminalStart : GridState := ⟨16268772562676342547, -8045531057412659087, 86⟩

/-- Three integer leaves; no old concrete seed-window theorem is imported. -/
theorem real_window : FloorWindow (seedDen encoding 21)
    (scaleZ 64 * (seedNum encoding 21).1) terminalStart.realPart := by
  norm_num [FloorWindow, terminalStart, seedDen, seedNum, encoding,
    numeratorZ, powerZ, addZ, mulZ, scalePair, denominatorZ, scaleZ, Nat.factorial]

theorem imag_window : FloorWindow (seedDen encoding 21)
    (scaleZ 64 * (seedNum encoding 21).2) terminalStart.imagPart := by
  norm_num [FloorWindow, terminalStart, seedDen, seedNum, encoding,
    numeratorZ, powerZ, addZ, mulZ, scalePair, denominatorZ, scaleZ, Nat.factorial]

theorem error_window : CeilingWindow (errorDen encoding 21)
    (scaleZ 64 * errorNum encoding 21 + 2 * errorDen encoding 21) terminalStart.errorPart := by
  norm_num [CeilingWindow, terminalStart, errorNum, errorDen, taylorNum, taylorDen,
    seedDen, seedNum, encoding, numeratorZ, powerZ, addZ, mulZ, scalePair,
    denominatorZ, scaleZ, Nat.factorial]

theorem terminal_windows : Windows 64 encoding 21 terminalStart :=
  ⟨by norm_num [terminalStart], real_window, imag_window, error_window⟩

/-- The ORIGINAL seed and its COMPLETE error, uniformly reconstructed. -/
theorem terminal_seed_valid : SeedValid 64
    (RationalPowerEvaluation.seed 4097 (sourceExponent center) (schedule 4097))
    (RationalPowerEvaluation.seedError 4097 (sourceExponent center) (schedule 4097))
    terminalStart :=
  seed_valid 4097 (sourceExponent center) (schedule 4097) 21 encoding
    encoding_valid encoding_binding terminalStart terminal_windows

end GRWTSK.RiemannHypothesis.ConcreteNewtonTerminalSeed
