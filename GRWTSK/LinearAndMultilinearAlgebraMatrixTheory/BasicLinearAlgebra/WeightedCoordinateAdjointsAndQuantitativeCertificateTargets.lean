import FormalResearch.PositiveAtlas.QuantitativeGap
import FormalResearch.PositiveAtlas.FiniteQuadraticCertificate

/-!
# Weighted-coordinate adjoints and quantitative certificate targets

The coordinate energy is `xᵀ G H x`. Consequently the weighted adjoint is
`G'⁻¹ Tᵀ G`; the certificate target is `G' (H' - Δ Q')`. The existing checker
uses ordinary congruence only after this metric conversion.

Originating direction and evaluation: grwtsk contributors.
Proof construction: OpenAI Codex, reusing the exact PR267 certificate checker.
-/

namespace FormalResearch.PositiveAtlas.QuantitativeGap

set_option autoImplicit false

open Matrix FiniteQuadraticCertificate

variable {ι κ : Type*} [Fintype ι] [Fintype κ] [DecidableEq κ]

/-- Adjoint in explicitly supplied source and target metric matrices. -/
def weightedAdjoint (T : Matrix ι κ ℝ) (G : Matrix ι ι ℝ) (G' : Matrix κ κ ℝ)
    [Invertible G'] : Matrix κ ι ℝ := ⅟G' * T.transpose * G

/-- The metric-converted transport is precisely ordinary congruence. -/
theorem metric_pullback_identity (T : Matrix ι κ ℝ) (G H : Matrix ι ι ℝ)
    (G' : Matrix κ κ ℝ) [Invertible G'] :
    G' * (weightedAdjoint T G G' * H * T) = congruence T (G * H) := by
  simp only [weightedAdjoint, congruence, LinearMap.coe_mk, AddHom.coe_mk]
  simp only [← Matrix.mul_assoc, mul_invOf_self, Matrix.one_mul]

omit [DecidableEq κ] in
/-- Exact quadratic congruence uses the existing checker's coefficient convention. -/
theorem quadratic_congruence (T : Matrix ι κ ℝ) (M : Matrix ι ι ℝ) (x : κ → ℝ) :
    quadratic (congruence T M) x = quadratic M (T.mulVec x) := by
  simp only [quadratic, congruence, LinearMap.coe_mk, AddHom.coe_mk,
    ← Matrix.mulVec_mulVec, Matrix.dotProduct_transpose_mulVec]
  exact dotProduct_comm _ _

/-- Quantitative weighted pullback, with protected metric squares declared
explicitly. Source/domain/admissibility identification remains a separate premise. -/
theorem weighted_coercivity (T : Matrix ι κ ℝ) (G H : Matrix ι ι ℝ)
    (G' H' E : Matrix κ κ ℝ) [Invertible G']
    (oldSquare : (ι → ℝ) → ℝ) (newSquare : (κ → ℝ) → ℝ)
    (admissible : (κ → ℝ) → Prop) (Δ c ε : ℝ) (hΔ : 0 ≤ Δ)
    (hsource : H' = weightedAdjoint T G G' * H * T + E)
    (hcoercive : ∀ x, admissible x → Δ * oldSquare (T.mulVec x) ≤
      quadratic (G * H) (T.mulVec x))
    (hnorm : ∀ x, admissible x → c ^ 2 * newSquare x ≤ oldSquare (T.mulVec x))
    (herror : ∀ x, admissible x → -ε * newSquare x ≤ quadratic (G' * E) x)
    (x : κ → ℝ) (hx : admissible x) :
    (Δ * c ^ 2 - ε) * newSquare x ≤ quadratic (G' * H') x := by
  have he : quadratic (G' * H') x =
      quadratic (G * H) (T.mulVec x) + quadratic (G' * E) x := by
    rw [hsource, Matrix.mul_add, metric_pullback_identity]
    simp only [quadratic, Matrix.add_mulVec, dotProduct_add]
    rw [← quadratic, quadratic_congruence]
    rfl
  have h := mul_le_mul_of_nonneg_left (hnorm x hx) hΔ
  rw [he]
  nlinarith [hcoercive x hx, herror x hx]

omit [DecidableEq κ] in
/-- A supplied checker certificate for the metric-converted gap target gives
the weighted coercivity conclusion on the checker's exact admissible vectors. -/
theorem certificate_gap {ε γ ν : Type*} [Fintype ε] [Fintype γ] [Fintype ν]
    (G H Q : Matrix κ κ ℝ) (Δ : ℝ) (P : Problem ℝ κ ε γ)
    (S : Certificate ℝ κ ε γ ν)
    (hsource : P.target = G * (H - Δ • Q)) (hvalid : Valid P S)
    (x : κ → ℝ) (hx : P.Admissible x) :
    Δ * quadratic (G * Q) x ≤ quadratic (G * H) x := by
  have h := sound P S hvalid x hx
  rw [hsource, Matrix.mul_sub, Matrix.mul_smul] at h
  simp only [quadratic, Matrix.sub_mulVec, Matrix.smul_mulVec,
    dotProduct_sub, dotProduct_smul, smul_eq_mul] at h ⊢
  linarith

end FormalResearch.PositiveAtlas.QuantitativeGap
