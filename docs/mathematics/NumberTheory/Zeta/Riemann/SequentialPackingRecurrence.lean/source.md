# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.SequentialPackingRecurrence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a3caaddb9cd6a5aab90fb6aaa3b3f8ba23cdc611` · SHA-256 `74a6d495f05288f5b5fe01bec3d70e6258c66175345545ffd5b7f076a981cb4b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SequentialThreePointVolumePacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# One-new-point recurrence for sequential volume packing

After an initial three-point window, every subsequent positive quartic stage is
obtained by shifting the previous two points and appending exactly one new
source point and one new source label.  Positivity is therefore invariant under
the recurrence and never needs to be reproved analytically.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ONE_NEW_POINT_SOURCE_RULE_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open Filter Topology
open GRWTSK.Polynomial.ConjugateQuartic

/-- Finite state carried between adjacent packing stages. -/
structure ThreePointPackingState (P : ℕ → Prop) where
  first : PackingPoint
  second : PackingPoint
  third : PackingPoint
  firstSource : ℕ
  secondSource : ℕ
  thirdSource : ℕ
  firstSource_ok : P firstSource
  secondSource_ok : P secondSource
  thirdSource_ok : P thirdSource

namespace ThreePointPackingState

/-- Forget source labels and expose the geometric triple. -/
def packing {P : ℕ → Prop} (state : ThreePointPackingState P) :
    ThreePointPacking where
  first := state.first
  second := state.second
  third := state.third

/-- Positive quartic state value. -/
def value {P : ℕ → Prop} (state : ThreePointPackingState P) : ℝ :=
  state.packing.gramVolume

theorem value_nonnegative {P : ℕ → Prop}
    (state : ThreePointPackingState P) :
    0 ≤ state.value :=
  state.packing.gramVolume_nonnegative

/-- Shift the two retained points and append one new valid source point. -/
def advance {P : ℕ → Prop}
    (state : ThreePointPackingState P)
    (newPoint : PackingPoint)
    (newSource : ℕ)
    (hsource : P newSource) :
    ThreePointPackingState P where
  first := state.second
  second := state.third
  third := newPoint
  firstSource := state.secondSource
  secondSource := state.thirdSource
  thirdSource := newSource
  firstSource_ok := state.secondSource_ok
  secondSource_ok := state.thirdSource_ok
  thirdSource_ok := hsource

@[simp]
theorem advance_first {P : ℕ → Prop}
    (state : ThreePointPackingState P) (p : PackingPoint)
    (q : ℕ) (hq : P q) :
    (state.advance p q hq).first = state.second := by
  rfl

@[simp]
theorem advance_second {P : ℕ → Prop}
    (state : ThreePointPackingState P) (p : PackingPoint)
    (q : ℕ) (hq : P q) :
    (state.advance p q hq).second = state.third := by
  rfl

@[simp]
theorem advance_third {P : ℕ → Prop}
    (state : ThreePointPackingState P) (p : PackingPoint)
    (q : ℕ) (hq : P q) :
    (state.advance p q hq).third = p := by
  rfl

@[simp]
theorem advance_firstSource {P : ℕ → Prop}
    (state : ThreePointPackingState P) (p : PackingPoint)
    (q : ℕ) (hq : P q) :
    (state.advance p q hq).firstSource = state.secondSource := by
  rfl

@[simp]
theorem advance_secondSource {P : ℕ → Prop}
    (state : ThreePointPackingState P) (p : PackingPoint)
    (q : ℕ) (hq : P q) :
    (state.advance p q hq).secondSource = state.thirdSource := by
  rfl

@[simp]
theorem advance_thirdSource {P : ℕ → Prop}
    (state : ThreePointPackingState P) (p : PackingPoint)
    (q : ℕ) (hq : P q) :
    (state.advance p q hq).thirdSource = q := by
  rfl

/-- Every advanced state remains positive independently of the new point. -/
theorem advance_value_nonnegative {P : ℕ → Prop}
    (state : ThreePointPackingState P) (p : PackingPoint)
    (q : ℕ) (hq : P q) :
    0 ≤ (state.advance p q hq).value :=
  (state.advance p q hq).value_nonnegative

end ThreePointPackingState

namespace SequentialThreePointPrimePacking

/-- Finite recurrence state cut from the global sequence at stage n. -/
def stateAt (seq : SequentialThreePointPrimePacking) (n : ℕ) :
    ThreePointPackingState seq.IsPrimePowerSource where
  first := seq.point n
  second := seq.point (n + 1)
  third := seq.point (n + 2)
  firstSource := seq.source n
  secondSource := seq.source (n + 1)
  thirdSource := seq.source (n + 2)
  firstSource_ok := seq.source_ok n
  secondSource_ok := seq.source_ok (n + 1)
  thirdSource_ok := seq.source_ok (n + 2)

/-- The finite state and global sliding-window value agree exactly. -/
theorem stateAt_value
    (seq : SequentialThreePointPrimePacking) (n : ℕ) :
    (seq.stateAt n).value = seq.valueAt n := by
  rfl

/-- The next finite state reuses the current second point as its first. -/
@[simp]
theorem stateAt_succ_first
    (seq : SequentialThreePointPrimePacking) (n : ℕ) :
    (seq.stateAt (n + 1)).first = (seq.stateAt n).second := by
  rfl

/-- The next finite state reuses the current third point as its second. -/
@[simp]
theorem stateAt_succ_second
    (seq : SequentialThreePointPrimePacking) (n : ℕ) :
    (seq.stateAt (n + 1)).second = (seq.stateAt n).third := by
  rfl

/-- The only geometrically new datum at the next stage is point n+3. -/
theorem stateAt_succ_third
    (seq : SequentialThreePointPrimePacking) (n : ℕ) :
    (seq.stateAt (n + 1)).third = seq.point (n + 3) := by
  congr 1

/-- The only new source label at the next stage is source n+3. -/
theorem stateAt_succ_thirdSource
    (seq : SequentialThreePointPrimePacking) (n : ℕ) :
    (seq.stateAt (n + 1)).thirdSource = seq.source (n + 3) := by
  congr 1

end SequentialThreePointPrimePacking

/-- Scalar forcing lemma: a nonnegative sequential packing whose exact
comparison has positive limiting weight and vanishing residual forces the
signed target scalar to be nonnegative. -/
theorem nonnegative_target_of_sequential_packing_limit
    (seq : SequentialThreePointPrimePacking)
    (target : ℝ)
    (weight residual : ℕ → ℝ)
    (L : ℝ)
    (hL : 0 < L)
    (identity : ∀ n, seq.valueAt n = weight n * target + residual n)
    (hweight : Tendsto weight atTop (𝓝 L))
    (hresidual : Tendsto residual atTop (𝓝 0)) :
    0 ≤ target := by
  have hlim :
      Tendsto seq.valueAt atTop (𝓝 (L * target)) := by
    simp_rw [funext identity]
    simpa using (hweight.mul_const target).add hresidual
  have hnonneg : 0 ≤ L * target :=
    ge_of_tendsto hlim (Eventually.of_forall seq.valueAt_nonnegative)
  exact (mul_nonneg_iff_of_pos_left hL).mp hnonneg

/-- Specialization of the scalar forcing lemma to the repository's signed
quartic witness. -/
theorem witnessTrace_nonnegative_of_sequential_packing_limit
    (seq : SequentialThreePointPrimePacking)
    (a t : ℝ)
    (weight residual : ℕ → ℝ)
    (L : ℝ)
    (hL : 0 < L)
    (identity :
      ∀ n, seq.valueAt n = weight n * witnessTrace a t + residual n)
    (hweight : Tendsto weight atTop (𝓝 L))
    (hresidual : Tendsto residual atTop (𝓝 0)) :
    0 ≤ witnessTrace a t :=
  nonnegative_target_of_sequential_packing_limit
    seq (witnessTrace a t) weight residual L hL identity hweight hresidual

end GRWTSK.RiemannHypothesis
```
