# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Affinity.Variantf0ac770a98acdb62a5cc0625b794287b6ed148ba69bd38fc99ef84e4013cb74a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0fb1fe55317684f886a4821c6d51502df35fdf8a` · SHA-256 `f0ac770a98acdb62a5cc0625b794287b6ed148ba69bd38fc99ef84e4013cb74a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Rhetorical.FeatureMap
import Mathlib.Analysis.InnerProductSpace.Basic

/-!
# Shared normalized real affinity

The scalar below is used by the distinct similarity, implication, and
opposition channels.  The public operation returns `none` when either vector
is null; division by zero is never assigned a rhetorical meaning.
-/

noncomputable section

namespace DAF.Rhetorical

open scoped ComplexInnerProductSpace

universe u

variable {Index : Type u} (kernel : PositiveKernel Index)

/-- Algebraic normalized real inner product.  Public relation APIs call this
only after proving both norms nonzero. -/
def normalizedRealAffinityValue
    (left right : RhetoricalSpace kernel) : ℝ :=
  (inner ℂ left right).re / (‖left‖ * ‖right‖)

/-- Partial normalized real inner product. -/
def normalizedRealAffinity
    (left right : RhetoricalSpace kernel) : Option ℝ :=
  if ‖left‖ = 0 ∨ ‖right‖ = 0 then none
  else some (normalizedRealAffinityValue kernel left right)

/-- The raw normalized real score is symmetric. -/
theorem normalizedRealAffinityValue_comm
    (left right : RhetoricalSpace kernel) :
    normalizedRealAffinityValue kernel left right =
      normalizedRealAffinityValue kernel right left := by
  have realSymmetry :
      (inner ℂ left right).re = (inner ℂ right left).re := by
    calc
      (inner ℂ left right).re =
          (star (inner ℂ right left)).re :=
        congrArg Complex.re (inner_conj_symm left right).symm
      _ = (inner ℂ right left).re := Complex.conj_re _
  rw [normalizedRealAffinityValue, normalizedRealAffinityValue,
    realSymmetry, mul_comm]

/-- The partial normalized real score is symmetric, including null rejection. -/
theorem normalizedRealAffinity_comm
    (left right : RhetoricalSpace kernel) :
    normalizedRealAffinity kernel left right =
      normalizedRealAffinity kernel right left := by
  rw [normalizedRealAffinity, normalizedRealAffinity]
  by_cases leftNull : ‖left‖ = 0
  · simp [leftNull]
  · by_cases rightNull : ‖right‖ = 0
    · simp [rightNull]
    · simp [leftNull, rightNull, normalizedRealAffinityValue_comm kernel]

/-- Cauchy--Schwarz bounds every normalized real score by one in absolute
value.  This algebraic lemma remains true at zero because Lean's field
division is total; the public API still rejects that case. -/
theorem abs_normalizedRealAffinityValue_le_one
    (left right : RhetoricalSpace kernel) :
    |normalizedRealAffinityValue kernel left right| ≤ 1 := by
  rw [normalizedRealAffinityValue, abs_div, abs_mul, abs_norm, abs_norm]
  exact div_le_one_of_le₀
    ((Complex.abs_re_le_norm _).trans (norm_inner_le_norm left right))
    (mul_nonneg (norm_nonneg left) (norm_nonneg right))

/-- Every successfully computed affinity lies in `[-1,1]`. -/
theorem normalizedRealAffinity_mem_Icc
    {left right : RhetoricalSpace kernel}
    {score : ℝ}
    (computed : normalizedRealAffinity kernel left right = some score) :
    score ∈ Set.Icc (-1 : ℝ) 1 := by
  rw [normalizedRealAffinity] at computed
  split at computed
  · contradiction
  · have scoreEq : score = normalizedRealAffinityValue kernel left right :=
      Option.some.inj computed.symm
    rw [scoreEq]
    exact abs_le.mp (abs_normalizedRealAffinityValue_le_one kernel left right)

end DAF.Rhetorical
```
