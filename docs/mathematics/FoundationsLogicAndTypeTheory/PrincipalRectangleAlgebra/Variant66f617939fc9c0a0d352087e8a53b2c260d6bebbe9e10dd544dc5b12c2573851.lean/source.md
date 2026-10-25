# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.PrincipalRectangleAlgebra.Variant66f617939fc9c0a0d352087e8a53b2c260d6bebbe9e10dd544dc5b12c2573851

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4a7dd9a4dd108c8b8a3382dd47652e38f4f61c6` · SHA-256 `66f617939fc9c0a0d352087e8a53b2c260d6bebbe9e10dd544dc5b12c2573851`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

/-!
# The full principal rectangle retains the off-residue factor

Pinned Batch 02 Section 8 and CR03-02 use R=a_p^2 Q^(4-6x-6z),
not its restriction at z=1/6. The local H and Pstar identities are exact
field identities with every denominator guard retained. The literal minimum
decay margins have the stated 401/600 threshold and the 43/50 specialization.
These checks do not establish prime-ideal normal convergence, phase-uniform
analytic estimates, contour extraction, a general physical-row box or RH.
Human source and domain-correction direction: grwtsk contributors. Local
exact-algebra and margin consumer: OpenAI Codex. Mathlib field arithmetic
and order infrastructure retain their own declarations and source identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.PrincipalRectangleAlgebra
noncomputable section

/-- The principal star in this module, with the following exact parameterization.

def principalStar {K : Type*} [Field K] (Q D V W R : K) : K := (R * (1 - Q⁻¹) - (Q - 1) * D *
W * V + (1 - V) * (-D + W * R)) / ((1 - R) * (1 - V))
-/
def principalStar {K : Type*} [Field K] (Q D V W R : K) : K :=
  (R * (1 - Q⁻¹) - (Q - 1) * D * W * V + (1 - V) * (-D + W * R)) /
    ((1 - R) * (1 - V))

/-- The principal in this module, with the following exact parameterization.

def principal {K : Type*} [Field K] (Q D V W R : K) : K := 1 / (1 - V) + W / (1 - W) +
principalStar Q D V W R
-/
def principal {K : Type*} [Field K] (Q D V W R : K) : K :=
  1 / (1 - V) + W / (1 - W) + principalStar Q D V W R

/-- The normalized in this module, with the following exact parameterization.

def normalized {K : Type*} [Field K] (Q D V W R : K) : K := principal Q D V W R * (1 - V) * (1
- W) / (1 - D)
-/
def normalized {K : Type*} [Field K] (Q D V W R : K) : K :=
  principal Q D V W R * (1 - V) * (1 - W) / (1 - D)

theorem full_off_residue_normalized_identity {K : Type*} [Field K]
    (Q D V W R : K) (hQ : Q ≠ 0) (hD : 1 - D ≠ 0) (hV : 1 - V ≠ 0)
    (hW : 1 - W ≠ 0) (hR : 1 - R ≠ 0) :
    normalized Q D V W R - 1 =
      (R * (1 - Q⁻¹ * (1 - W) - W ^ 2 * (1 - V) - D) +
        D * (V + W - Q * W * V + (Q - 1) * W ^ 2 * V) - W * V) /
        ((1 - R) * (1 - D)) := by
  unfold normalized principal principalStar
  field_simp [hQ, hD, hV, hW, hR]
  ring

theorem full_off_residue_selected_identity {K : Type*} [Field K]
    (Q D V W R : K) (hR : 1 - R ≠ 0) (hV : 1 - V ≠ 0) :
    principalStar Q D V W R + D =
      (R * ((1 - Q⁻¹) + W * (1 - V) - D * (1 - V)) -
        D * (Q - 1) * W * V) / ((1 - R) * (1 - V)) := by
  unfold principalStar
  field_simp [hR, hV]
  ring

/-- The delta h in this module, with the following exact parameterization.

def deltaH (σ : ℝ) : ℝ := min (6 * σ - 401 / 100) (min (σ - 3 / 50) (47 / 50))
-/
def deltaH (σ : ℝ) : ℝ := min (6 * σ - 401 / 100) (min (σ - 3 / 50) (47 / 50))
/-- The delta b in this module, with the following exact parameterization.

def deltaB (σ : ℝ) : ℝ := min σ (min (99 / 100) (min (5 * σ - 301 / 100) (47 / 50)))
-/
def deltaB (σ : ℝ) : ℝ := min σ (min (99 / 100) (min (5 * σ - 301 / 100) (47 / 50)))

theorem full_box_margin_positive_iff (σ : ℝ) : 0 < deltaH σ ↔ 401 / 600 < σ := by
  unfold deltaH
  rw [lt_min_iff, lt_min_iff]
  constructor
  · rintro ⟨h, _, _⟩
    linarith
  · intro h
    exact ⟨by linarith, by linarith, by norm_num⟩

theorem selected_margin_positive_on_full_box {σ : ℝ} (hσ : 401 / 600 < σ) :
    0 < deltaB σ := by
  unfold deltaB
  rw [lt_min_iff, lt_min_iff, lt_min_iff]
  exact ⟨by linarith, by norm_num, by linarith, by norm_num⟩

theorem concrete_full_box_margins :
    deltaH (43 / 50) = 4 / 5 ∧ deltaB (43 / 50) = 43 / 50 := by
  norm_num [deltaH, deltaB]

theorem literal_off_residue_decay_gap (σ : ℝ) :
    (6 * σ + 6 * (33 / 200) - 4) - (6 * σ - 3) = -(1 / 100 : ℝ) := by
  ring

theorem double_residue_restriction (x : ℝ) :
    4 - 6 * x - 6 * (1 / 6) = 3 - 6 * x := by ring

theorem two_thirds_does_not_supply_the_full_box_margin :
    (2 / 3 : ℝ) < 267 / 400 ∧ deltaH (267 / 400) = -(1 / 200 : ℝ) := by
  norm_num [deltaH]

end
end GRWTSK.RiemannHypothesis.Conversation.PrincipalRectangleAlgebra
```
