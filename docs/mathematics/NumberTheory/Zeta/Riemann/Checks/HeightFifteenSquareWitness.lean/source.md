# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenSquareWitness

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2be6701926c77b8cbe805fea8214740b695361c2` · SHA-256 `986fc424dfc31e114f650521a77b0e653344b698f2a90ec79a88c4ea8695dcd4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.CheckedIntegerPower
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenJetCandidate

set_option autoImplicit false

/-!
# One concrete seven-square witness from the unchanged height-fifteen candidate

Cell275/base16 is an inverse-power calculation, NOT a zeta zero location.
The seven transition proofs use integer inequalities only. Their Lean scripts
remain unexecuted. The seed/source binding and original semantic guard are
explicitly UNPROVED; no whole-contour Success or block equality is asserted.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenSquareWitness

open GRWTSK.Analysis.ErrorBounds
open IntegerDyadicSquare IntegerSquareWitness RationalComplexEnclosure

def center : Coordinates := (HeightFifteenJetCandidate.plan 275).center

def resolution : RationalPowerValue.Resolution :=
  RationalPoleValue.resolution HeightFifteenJetCandidate.parameters 16

theorem center_value : center = (1/4,248819/16384) := by decide

theorem resolution_value : resolution = ⟨4,16,16,80,7,16⟩ := by decide

def state0 : State := ⟨1137924180955076615628762,-388441655045270929983695,2823⟩

def state1 : State := ⟨946281817847717158059535,-731256037375604565153006,5648⟩

def state2 : State := ⟨298375533666651110081893,-1144775438050428630721449,11297⟩

def state3 : State := ⟨-1010386927513935928453061,-565085097389440479171636,22596⟩

def state4 : State := ⟨580317306998253660092206,944565143818723214448455,45194⟩

def state5 : State := ⟨-459445174471198447514489,906833970540944022515572,90390⟩

def state6 : State := ⟨-505620751798514185125397,-689273874462217509009292,180781⟩

def state7 : State := ⟨-181521583712071944411114,576563373775500064707160,361563⟩

theorem transition0 : checkStep 80 state0 state1 = true := by
  change decide (StepBounds 80 state0 state1) = true
  rw [decide_eq_true_eq]
  norm_num [StepBounds, FloorBounds, CeilBounds, errorNumerator, proposedResidual,
    scale, realNumerator, imagNumerator, state0, state1]

theorem transition1 : checkStep 80 state1 state2 = true := by
  change decide (StepBounds 80 state1 state2) = true
  rw [decide_eq_true_eq]
  norm_num [StepBounds, FloorBounds, CeilBounds, errorNumerator, proposedResidual,
    scale, realNumerator, imagNumerator, state1, state2]

theorem transition2 : checkStep 80 state2 state3 = true := by
  change decide (StepBounds 80 state2 state3) = true
  rw [decide_eq_true_eq]
  norm_num [StepBounds, FloorBounds, CeilBounds, errorNumerator, proposedResidual,
    scale, realNumerator, imagNumerator, state2, state3]

theorem transition3 : checkStep 80 state3 state4 = true := by
  change decide (StepBounds 80 state3 state4) = true
  rw [decide_eq_true_eq]
  norm_num [StepBounds, FloorBounds, CeilBounds, errorNumerator, proposedResidual,
    scale, realNumerator, imagNumerator, state3, state4]

theorem transition4 : checkStep 80 state4 state5 = true := by
  change decide (StepBounds 80 state4 state5) = true
  rw [decide_eq_true_eq]
  norm_num [StepBounds, FloorBounds, CeilBounds, errorNumerator, proposedResidual,
    scale, realNumerator, imagNumerator, state4, state5]

theorem transition5 : checkStep 80 state5 state6 = true := by
  change decide (StepBounds 80 state5 state6) = true
  rw [decide_eq_true_eq]
  norm_num [StepBounds, FloorBounds, CeilBounds, errorNumerator, proposedResidual,
    scale, realNumerator, imagNumerator, state5, state6]

theorem transition6 : checkStep 80 state6 state7 = true := by
  change decide (StepBounds 80 state6 state7) = true
  rw [decide_eq_true_eq]
  norm_num [StepBounds, FloorBounds, CeilBounds, errorNumerator, proposedResidual,
    scale, realNumerator, imagNumerator, state6, state7]

def rows : List State := [state1,state2,state3,state4,state5,state6,state7]

/-- Arithmetic evidence about this literal sequence, not its source seed. -/
theorem tail_checked : walk 80 7 state0 rows = some state7 := by
  simp only [rows, walk, transition0, transition1, transition2, transition3,
    transition4, transition5, transition6, if_true]

/-- This definition is not a proof. It must be tied to the SAME exact source. -/
def SeedBinding : Prop := state0 = CheckedIntegerPower.start center 16 resolution

def SourceReady : Prop := RationalPowerValue.check center 16 resolution = true ∧ SeedBinding

def result : Option Ball := CheckedIntegerPower.evaluate center 16 resolution rows

/-- Still conditional: actual seed construction and semantic guards are not
replaced by the plausible appearance or origin of the seven rows. -/
theorem leaf_of_sourceReady (h : SourceReady) :
    result = some (CheckedIntegerPower.finish center 16 resolution state7) := by
  apply (CheckedIntegerPower.evaluate_eq_some_iff _ _ _ _ _).mpr
  refine ⟨h.1,state7,?_,rfl⟩
  rw [← h.2]
  simpa only [resolution_value] using tail_checked

theorem power_enclosure_of_sourceReady (h : SourceReady) :
    Holds (CheckedIntegerPower.finish center 16 resolution state7)
      ((16 : ℂ)^(-toComplex center)) :=
  CheckedIntegerPower.evaluate_sound (leaf_of_sourceReady h)

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenSquareWitness
```
