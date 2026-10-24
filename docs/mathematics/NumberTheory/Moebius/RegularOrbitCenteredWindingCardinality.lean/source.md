# Complete source: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingCardinality

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74c73858eb73ab7fc7ec4bd6ad594ef3ac4636a4` · SHA-256 `ce3bd19bbb6d0cfa3790575e6f7152af4cfee26932db0046f711692bfc24866f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #819. Direct stacked parent: draft PR #815 at exact head
`b0ef92cdebef78d6096407dcacaaa218d2a61e02`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingRange
import Mathlib.Data.Int.Interval

/-!
# Exact cardinality of the centered winding family

The finite candidate set from the parent is cut out by

`|z*d^2| ≤ b`.

Since `d≠0`, this is exactly

`|z| ≤ floor(b/d^2)`.

Thus the candidate set is the symmetric integer interval

`[-floor(b/d^2), floor(b/d^2)]`

and has exact cardinality

`2*floor(b/d^2)+1`.

Removing zero leaves at most `2*floor(b/d^2)` nonzero winding classes.
No analytic estimate is proved.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Natural radius of the centered winding family. -/
def centeredWindingRadius
    (b d : ℕ) : ℕ :=
  b / (d * d)

/-- Sharp equivalence between the displacement inequality and the integer
winding-radius bound. -/
theorem abs_squareMul_le_endpoint_iff_abs_le_radius
    (b d : ℕ) [NeZero d]
    (z : ℤ) :
    |(((d * d : ℕ) : ℤ) * z)| ≤ (b : ℤ) ↔
      |z| ≤ (centeredWindingRadius b d : ℤ) := by
  have hqNat : 0 < d * d := by
    exact Nat.mul_pos (Nat.pos_of_ne_zero (NeZero.ne d))
      (Nat.pos_of_ne_zero (NeZero.ne d))
  have hqInt : 0 < (((d * d : ℕ) : ℤ)) := by
    exact_mod_cast hqNat
  rw [abs_mul, abs_of_pos hqInt]
  rw [← Int.natCast_natAbs z]
  unfold centeredWindingRadius
  have hnat : (d * d) * z.natAbs ≤ b ↔ z.natAbs ≤ b / (d * d) := by
    rw [Nat.le_div_iff_mul_le hqNat]
    simp only [mul_comm]
  exact_mod_cast hnat

/-- The candidate set is exactly the symmetric integer interval of radius
`floor(b/d^2)`. -/
theorem centeredWindingCandidateSet_eq_Icc_radius
    (b d : ℕ) [NeZero d] :
    centeredWindingCandidateSet b d =
      Finset.Icc
        (-(centeredWindingRadius b d : ℤ))
        (centeredWindingRadius b d : ℤ) := by
  ext z
  simp only [centeredWindingCandidateSet, Finset.mem_filter,
    Finset.mem_Icc]
  rw [abs_squareMul_le_endpoint_iff_abs_le_radius]
  constructor
  · intro h
    exact abs_le.mp h.2
  · intro h
    refine ⟨?_, abs_le.mpr h⟩
    have hr :
        centeredWindingRadius b d ≤ b := by
      unfold centeredWindingRadius
      exact Nat.div_le_self _ _
    have hrz :
        (centeredWindingRadius b d : ℤ) ≤ (b : ℤ) := by
      exact_mod_cast hr
    constructor <;> linarith

/-- Exact total number of winding classes. -/
theorem card_centeredWindingCandidateSet
    (b d : ℕ) [NeZero d] :
    (centeredWindingCandidateSet b d).card =
      2 * centeredWindingRadius b d + 1 := by
  rw [centeredWindingCandidateSet_eq_Icc_radius]
  have hle :
      (-(centeredWindingRadius b d : ℤ)) ≤
        (centeredWindingRadius b d : ℤ) + 1 := by
    omega
  have hcard :=
    Int.card_Icc_of_le
      (-(centeredWindingRadius b d : ℤ))
      (centeredWindingRadius b d : ℤ)
      hle
  have hcast : ((Finset.Icc (-(centeredWindingRadius b d : ℤ))
      (centeredWindingRadius b d : ℤ)).card : ℤ) =
      ((2 * centeredWindingRadius b d + 1 : ℕ) : ℤ) := by
    push_cast
    linarith [hcard]
  exact_mod_cast hcast

/-- Zero winding belongs to every candidate set. -/
theorem zero_mem_centeredWindingCandidateSet
    (b d : ℕ) [NeZero d] :
    (0 : ℤ) ∈ centeredWindingCandidateSet b d := by
  rw [centeredWindingCandidateSet_eq_Icc_radius]
  simp

/-- Nonzero winding candidate set. -/
def centeredNonzeroWindingCandidateSet
    (b d : ℕ) [NeZero d] : Finset ℤ :=
  (centeredWindingCandidateSet b d).erase 0

/-- Exact number of nonzero winding candidates. -/
theorem card_centeredNonzeroWindingCandidateSet
    (b d : ℕ) [NeZero d] :
    (centeredNonzeroWindingCandidateSet b d).card =
      2 * centeredWindingRadius b d := by
  unfold centeredNonzeroWindingCandidateSet
  rw [Finset.card_erase_of_mem
    (zero_mem_centeredWindingCandidateSet b d)]
  rw [card_centeredWindingCandidateSet]
  omega

/-- Explicit version in the original endpoint/modulus variables. -/
theorem card_centeredNonzeroWindingCandidateSet_eq
    (b d : ℕ) [NeZero d] :
    (centeredNonzeroWindingCandidateSet b d).card =
      2 * (b / (d * d)) := by
  rw [card_centeredNonzeroWindingCandidateSet]
  rfl

/-- Any realized nonzero winding lies in the exact nonzero candidate set. -/
theorem realizedNonzeroWinding_mem_candidateSet
    (b d r h g m n : ℕ) [NeZero d]
    {z : ℤ}
    (hm : m ∈ zeroWindingHalfIndexBaseSet b r h)
    (hn : n ∈ zeroWindingHalfIndexBaseSet b r g)
    (hz : z ≠ 0)
    (hw :
      CenteredSquareModulusWinding d
        (halfIndexZeroWindingCoordinate m h)
        (halfIndexZeroWindingCoordinate n g) z) :
    z ∈ centeredNonzeroWindingCandidateSet b d := by
  unfold centeredNonzeroWindingCandidateSet
  apply Finset.mem_erase.mpr
  exact ⟨hz, realizedHalfIndexWinding_mem_candidateSet
    b d r h g m n hm hn hw⟩

/-- Conservative source profile for a theorem using the exact winding count. -/
structure RegularCenteredWindingCardinalitySourceData where
  theoremStatement : Prop
  exactRadiusMatched : Prop
  symmetricIntervalMatched : Prop
  exactTotalCardinalityMatched : Prop
  exactNonzeroCardinalityMatched : Prop
  realizedWindingSubsetMatched : Prop
  squareModulusDependenceMatched : Prop
  naturalScaleNormalizationMatched : Prop

def RegularCenteredWindingCardinalitySource
    (d : RegularCenteredWindingCardinalitySourceData) : Prop :=
  d.theoremStatement ∧
    d.exactRadiusMatched ∧
    d.symmetricIntervalMatched ∧
    d.exactTotalCardinalityMatched ∧
    d.exactNonzeroCardinalityMatched ∧
    d.realizedWindingSubsetMatched ∧
    d.squareModulusDependenceMatched ∧
    d.naturalScaleNormalizationMatched

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.centeredWindingCandidateSet_eq_Icc_radius
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.card_centeredWindingCandidateSet
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.card_centeredNonzeroWindingCandidateSet
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.realizedNonzeroWinding_mem_candidateSet
```
