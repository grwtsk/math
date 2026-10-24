# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BranchRankOneCubic.Variant943ab5b7603abdec321564a5a80c2b3b4ba3280551050adaa0ca02e8473560f4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0917764f1244f48761a9593f3f668e20dfc69c3e` · SHA-256 `943ab5b7603abdec321564a5a80c2b3b4ba3280551050adaa0ca02e8473560f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.RankOneTraceBoundary

/-!
# The signed cubic trace of the actual rank-one locus

Batch 26, `marked-detail-and-cubic-port.md`, sections 1--3a. The ordinary
matrix powers below are not Hilbert--Schmidt energy. The rank-one hypothesis
is implemented by the outer product, and no self-adjointness is assumed.
Human source selection and correction: grwtsk contributors. Proofs: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.Conversation.BranchRankOneCubic
open scoped BigOperators
open GRWTSK.RiemannHypothesis.Conversation.RankOneTraceBoundary

/-- The root in this module, with the following exact parameterization.

def root (u v : Fin 22 → ℝ) : ℝ := ∑ i, u i * v i
-/
def root (u v : Fin 22 → ℝ) : ℝ := ∑ i, u i * v i
/-- The detail in this module, with the following exact parameterization.

def detail (u v : Fin 22 → ℝ) : Operator := rankOneMatrix u v - (root u v / 22) • 1
-/
def detail (u v : Fin 22 → ℝ) : Operator := rankOneMatrix u v - (root u v / 22) • 1

theorem outer_trace (u v : Fin 22 → ℝ) : Matrix.trace (rankOneMatrix u v) = root u v := rfl

theorem outer_square (u v : Fin 22 → ℝ) :
    rankOneMatrix u v * rankOneMatrix u v = root u v • rankOneMatrix u v := by
  ext i j
  simp only [Matrix.mul_apply, rankOneMatrix, Matrix.smul_apply, smul_eq_mul, root]
  calc
    (∑ k, u i * v k * (u k * v j)) = ∑ k, (u k * v k) * (u i * v j) := by
      apply Finset.sum_congr rfl
      intro k _
      ring
    _ = _ := (Finset.sum_mul _ _ _).symm

theorem outer_action (u v : Fin 22 → ℝ) :
    Matrix.mulVec (rankOneMatrix u v) u = root u v • u := by
  ext i
  simp only [Matrix.mulVec, dotProduct, rankOneMatrix, Pi.smul_apply, smul_eq_mul, root]
  calc
    (∑ j, u i * v j * u j) = ∑ j, (u j * v j) * u i := by
      apply Finset.sum_congr rfl
      intro j _
      ring
    _ = _ := (Finset.sum_mul _ _ _).symm

theorem detail_trace_zero (u v : Fin 22 → ℝ) : Matrix.trace (detail u v) = 0 := by
  simp [detail, Matrix.trace_sub, Matrix.trace_smul, outer_trace, Matrix.trace_one]

theorem marked_action (u v : Fin 22 → ℝ) :
    Matrix.mulVec (detail u v) u = ((21 / 22 : ℝ) * root u v) • u := by
  rw [detail, Matrix.sub_mulVec, Matrix.smul_mulVec, Matrix.one_mulVec, outer_action]
  module

theorem detail_square (u v : Fin 22 → ℝ) :
    detail u v ^ 2 = (root u v - 2 * (root u v / 22)) • rankOneMatrix u v +
      (root u v / 22) ^ 2 • (1 : Operator) := by
  simp only [detail, pow_two, sub_mul, mul_sub, smul_mul_assoc, mul_smul_comm,
    mul_one, one_mul]
  rw [outer_square]
  module

theorem detail_cube (u v : Fin 22 → ℝ) :
    detail u v ^ 3 =
      (root u v ^ 2 - 3 * (root u v / 22) * root u v + 3 * (root u v / 22) ^ 2) •
        rankOneMatrix u v - (root u v / 22) ^ 3 • (1 : Operator) := by
  rw [pow_succ, detail_square]
  simp only [detail, add_mul, mul_sub, smul_mul_assoc, mul_smul_comm,
    mul_one, one_mul]
  rw [outer_square]
  module

theorem quadratic_trace (u v : Fin 22 → ℝ) :
    Matrix.trace (detail u v ^ 2) = (21 / 22 : ℝ) * root u v ^ 2 := by
  rw [detail_square, Matrix.trace_add, Matrix.trace_smul, Matrix.trace_smul,
    outer_trace, Matrix.trace_one]
  norm_num
  ring

theorem cubic_trace (u v : Fin 22 → ℝ) :
    Matrix.trace (detail u v ^ 3) = (105 / 121 : ℝ) * root u v ^ 3 := by
  rw [detail_cube, Matrix.trace_sub, Matrix.trace_smul, Matrix.trace_smul,
    outer_trace, Matrix.trace_one]
  norm_num
  ring

theorem signed_cube_recovers_root (u v : Fin 22 → ℝ) :
    (121 / 105 : ℝ) * Matrix.trace (detail u v ^ 3) = root u v ^ 3 := by
  rw [cubic_trace]
  ring

theorem cubic_order_iff (u v : Fin 22 → ℝ) (b : ℝ) :
    Matrix.trace (detail u v ^ 3) ≤ (105 / 121 : ℝ) * b ^ 3 ↔ root u v ≤ b := by
  rw [cubic_trace]
  have h : (105 / 121 : ℝ) * root u v ^ 3 ≤ (105 / 121 : ℝ) * b ^ 3 ↔
      root u v ^ 3 ≤ b ^ 3 := by constructor <;> intro h <;> nlinarith
  rw [h]
  exact (Odd.strictMono_pow (by decide : Odd (3 : ℕ))).le_iff_le

theorem cube_zero_iff_root_zero (u v : Fin 22 → ℝ) :
    Matrix.trace (detail u v ^ 3) = 0 ↔ root u v = 0 := by
  rw [cubic_trace]
  simp

/-- Rescaling a marked directional decoder preserves its numerator/denominator
ratio. The nonzero norm and scale hypotheses are retained. -/
theorem marked_rescaling (c num den : ℝ) (hc : c ≠ 0) (hd : den ≠ 0) :
    (c ^ 2 * num) / (c ^ 2 * den) = num / den := by
  field_simp

end FormalResearch.RiemannHypothesis.Conversation.BranchRankOneCubic
```
