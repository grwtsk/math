# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WeightedHaarCoordinates.Variant17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d12587b1dbc7372a970ce58322810a1995a50f9` · SHA-256 `17eaa1a1a4b764e157dad1833091f77732f8d93d2e1b9ad528f7a2ec78c2d190`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.RefinementTree

/-!
# Normalized weighted Haar coordinates retain the harmonic root

Batch 06 HC04 uses a complete finite binary tree with positive native masses.
The two-child change of normalized coordinates is an orthogonal involution:
it preserves squares and pairings and recovers both signed inputs. For every
such tree, the literal normalized root and one normalized coefficient at each
split have total squared mass equal to the atomic energy. The next energy
consumer explicitly includes the root. This finite identity does not identify
an arithmetic differential or prove any prime-energy supplier.

Human tree and root-retention direction: grwtsk contributors. Local normalized
coordinates and Lean implementation: OpenAI Codex. Mathlib real square roots
and algebra retain their upstream source identity.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.WeightedHaarCoordinates

open RefinementTree
noncomputable section

def rootCoefficient (t : Tree) : ℝ := value t / Real.sqrt (width t)

def splitCoefficient (l r : Tree) : ℝ :=
  (width r * value l - width l * value r) /
    Real.sqrt (width l * width r * (width l + width r))

def detailCoefficients : Tree → List ℝ
  | .leaf _ _ => []
  | .split l r => detailCoefficients l ++ detailCoefficients r ++ [splitCoefficient l r]

def coefficients (t : Tree) : List ℝ := rootCoefficient t :: detailCoefficients t

def squaredMass (xs : List ℝ) : ℝ := (xs.map (fun x => x ^ 2)).sum

theorem root_coefficient_square (t : Tree) (ht : Positive t) :
    rootCoefficient t ^ 2 = value t ^ 2 / width t := by
  rw [rootCoefficient, div_pow, Real.sq_sqrt (width_positive t ht).le]

theorem split_coefficient_square (l r : Tree) (hl : Positive l) (hr : Positive r) :
    splitCoefficient l r ^ 2 =
      (width r * value l - width l * value r) ^ 2 /
        (width l * width r * (width l + width r)) := by
  have hw : 0 ≤ width l * width r * (width l + width r) := by
    have := width_positive l hl
    have := width_positive r hr
    positivity
  rw [splitCoefficient, div_pow, Real.sq_sqrt hw]

theorem detail_squared_mass (t : Tree) (ht : Positive t) :
    squaredMass (detailCoefficients t) = detailEnergy t := by
  induction t with
  | leaf w v => simp [squaredMass, detailCoefficients, detailEnergy]
  | split l r ihl ihr =>
      simp only [detailCoefficients, squaredMass, List.map_append, List.sum_append,
        List.map_cons, List.map_nil, List.sum_cons, List.sum_nil, add_zero]
      change squaredMass (detailCoefficients l) + squaredMass (detailCoefficients r) +
        splitCoefficient l r ^ 2 = _
      rw [ihl ht.1, ihr ht.2, split_coefficient_square l r ht.1 ht.2]
      rfl

theorem complete_coordinate_energy (t : Tree) (ht : Positive t) :
    squaredMass (coefficients t) = leafEnergy t := by
  change rootCoefficient t ^ 2 + squaredMass (detailCoefficients t) = _
  rw [root_coefficient_square t ht, detail_squared_mass t ht,
    ← full_tree_identity t ht]

def firstWeight (w₁ w₂ : ℝ) : ℝ := Real.sqrt w₁ / Real.sqrt (w₁ + w₂)
def secondWeight (w₁ w₂ : ℝ) : ℝ := Real.sqrt w₂ / Real.sqrt (w₁ + w₂)
def harmonicCoordinate (c s x y : ℝ) : ℝ := c * x + s * y
def detailCoordinate (c s x y : ℝ) : ℝ := s * x - c * y

theorem positive_weights_are_unit {w₁ w₂ : ℝ} (h₁ : 0 < w₁) (h₂ : 0 < w₂) :
    firstWeight w₁ w₂ ^ 2 + secondWeight w₁ w₂ ^ 2 = 1 := by
  rw [firstWeight, secondWeight, div_pow, div_pow,
    Real.sq_sqrt h₁.le, Real.sq_sqrt h₂.le, Real.sq_sqrt (add_pos h₁ h₂).le]
  field_simp

theorem binary_coordinate_energy {c s : ℝ} (hunit : c ^ 2 + s ^ 2 = 1) (x y : ℝ) :
    harmonicCoordinate c s x y ^ 2 + detailCoordinate c s x y ^ 2 = x ^ 2 + y ^ 2 := by
  unfold harmonicCoordinate detailCoordinate
  calc
    _ = (c ^ 2 + s ^ 2) * (x ^ 2 + y ^ 2) := by ring
    _ = _ := by rw [hunit, one_mul]

theorem binary_coordinate_pairing {c s : ℝ} (hunit : c ^ 2 + s ^ 2 = 1)
    (x y u v : ℝ) :
    harmonicCoordinate c s x y * harmonicCoordinate c s u v +
      detailCoordinate c s x y * detailCoordinate c s u v = x * u + y * v := by
  unfold harmonicCoordinate detailCoordinate
  calc
    _ = (c ^ 2 + s ^ 2) * (x * u + y * v) := by ring
    _ = _ := by rw [hunit, one_mul]

theorem binary_perfect_recovery {c s : ℝ} (hunit : c ^ 2 + s ^ 2 = 1) (x y : ℝ) :
    harmonicCoordinate c s (harmonicCoordinate c s x y) (detailCoordinate c s x y) = x ∧
      detailCoordinate c s (harmonicCoordinate c s x y) (detailCoordinate c s x y) = y := by
  unfold harmonicCoordinate detailCoordinate
  constructor
  · calc
      _ = (c ^ 2 + s ^ 2) * x := by ring
      _ = _ := by rw [hunit, one_mul]
  · calc
      _ = (c ^ 2 + s ^ 2) * y := by ring
      _ = _ := by rw [hunit, one_mul]

/-- A complete coefficient budget controls the root; a detail-only budget does not. -/
theorem complete_budget_controls_signed_root (t : Tree) (ht : Positive t) {E : ℝ}
    (hbudget : squaredMass (coefficients t) ≤ E) : value t ^ 2 ≤ width t * E := by
  have hroot := root_energy_le t ht
  rw [complete_coordinate_energy t ht] at hbudget
  have h := (div_le_iff₀ (width_positive t ht)).mp (hroot.trans hbudget)
  simpa only [mul_comm] using h

end
end GRWTSK.RiemannHypothesis.Conversation.WeightedHaarCoordinates
```
