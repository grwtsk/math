# Complete source: GRWTSK.NumberTheory.CenteredVaughan.Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae8c48dccb17d24599ded8b8b530a78c12400cbe` · SHA-256 `777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Tactic

/-!
# Actual centered arithmetic and balanced Vaughan joins

Exact Dirichlet-convolution identities from audited RH conversation Batches
15–18. The unit is the delta at one; the constant-positive-integer function is
zeta. Their distinction prevents accidentally introducing a source atom at one.
Balanced correction changes packet boundaries but does not change their sum.
No estimate, zero-free region, character cancellation or RH is assumed.

Human framework and direction: grwtsk contributors. Lean implementation: OpenAI
Codex. Möbius inversion and von Mangoldt identities retain Mathlib provenance.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.CenteredVaughan

open scoped ArithmeticFunction.Moebius ArithmeticFunction.zeta

noncomputable section

/-- The centered mangoldt in this module, with the following exact parameterization.

def centeredMangoldt : ArithmeticFunction ℝ := ArithmeticFunction.vonMangoldt - (ζ - 1)
-/
def centeredMangoldt : ArithmeticFunction ℝ := ArithmeticFunction.vonMangoldt - (ζ - 1)

theorem centeredMangoldt_one : centeredMangoldt 1 = 0 := by
  change ArithmeticFunction.vonMangoldt 1 -
    ((ζ : ArithmeticFunction ℝ) 1 - (1 : ArithmeticFunction ℝ) 1) = 0
  simp [ArithmeticFunction.natCoe_apply, ArithmeticFunction.zeta_apply]

theorem centeredMangoldt_apply {n : ℕ} (hn : 2 ≤ n) :
    centeredMangoldt n = ArithmeticFunction.vonMangoldt n - 1 := by
  have hn0 : n ≠ 0 := by omega
  have hn1 : n ≠ 1 := by omega
  change ArithmeticFunction.vonMangoldt n -
    ((ζ : ArithmeticFunction ℝ) n - (1 : ArithmeticFunction ℝ) n) = _
  simp [ArithmeticFunction.natCoe_apply, ArithmeticFunction.zeta_apply, hn0,
    hn1]

/-- The cutoff preserves the required zero coefficient at zero. -/
def lowPart (U : ℕ) (f : ArithmeticFunction ℝ) : ArithmeticFunction ℝ :=
  ⟨fun n => if n ≤ U then f n else 0, by simp⟩

/-- The high part in this module, with the following exact parameterization.

def highPart (U : ℕ) (f : ArithmeticFunction ℝ) : ArithmeticFunction ℝ := f - lowPart U f
-/
def highPart (U : ℕ) (f : ArithmeticFunction ℝ) : ArithmeticFunction ℝ := f - lowPart U f

theorem low_add_high (U : ℕ) (f : ArithmeticFunction ℝ) :
    lowPart U f + highPart U f = f := by unfold highPart; abel

/-- The universal four-port identity needs an inverse law, not prime estimates. -/
theorem four_port_identity {R : Type*} [CommRing R] (f lo a b z : R)
    (hinv : (a + b) * z = 1) :
    f = lo + a * (z * f) - (a * lo) * z + (b * z) * (f - lo) := by
  calc
    f = lo + ((a + b) * z) * (f - lo) := by rw [hinv]; ring
    _ = _ := by ring

/-- Instantiate the four ports with the actual Möbius and constant-one functions. -/
theorem actual_vaughan_identity (U V : ℕ) (f : ArithmeticFunction ℝ) :
    f = lowPart V f + lowPart U μ * (ζ * f) -
      (lowPart U μ * lowPart V f) * ζ +
        (highPart U μ * ζ) * highPart V f := by
  unfold highPart
  apply four_port_identity
  simp only [add_sub_cancel, ArithmeticFunction.coe_moebius_mul_coe_zeta]

/-- A correction retains the exact inverse relation across both packet boundaries. -/
theorem balanced_vaughan_identity (U V : ℕ) (f r : ArithmeticFunction ℝ) :
    f = lowPart V f + (lowPart U μ - r) * (ζ * f) -
      ((lowPart U μ - r) * lowPart V f) * ζ +
        ((highPart U μ + r) * ζ) * highPart V f := by
  unfold highPart
  apply four_port_identity
  have h : lowPart U μ - r + (μ - lowPart U μ + r) = (μ : ArithmeticFunction ℝ) := by abel
  rw [h, ArithmeticFunction.coe_moebius_mul_coe_zeta]

/-- The centered divisor sum keeps the correction at one and the divisor-count term. -/
theorem centered_divisor_identity :
    (ζ : ArithmeticFunction ℝ) * centeredMangoldt =
      ArithmeticFunction.log - ζ * ζ + ζ := by
  have h : ArithmeticFunction.vonMangoldt = (μ : ArithmeticFunction ℝ) *
      ArithmeticFunction.log := ArithmeticFunction.moebius_mul_log_eq_vonMangoldt.symm
  unfold centeredMangoldt
  rw [h]
  calc
    _ = ((ζ : ArithmeticFunction ℝ) * μ) * ArithmeticFunction.log - ζ * ζ + ζ := by ring
    _ = _ := by rw [ArithmeticFunction.coe_zeta_mul_coe_moebius]; ring

/-- The correction gauge transfers signed work between joined ports without deleting it. -/
theorem gauge_transfer {R : Type*} [CommRing R] (η z c short : R) :
    -(η * z) * c + (η * z) * short + (η * z) * (c - short) = 0 := by ring

/-- Separated pole residues cancel only when all signed ports remain joined. -/
theorem raw_residue_sum (m c₁ cV : ℝ) :
    0 + m * c₁ - m * cV - m * (c₁ - cV) = 0 := by ring

/-- The single scalar allocation identity is exact; it is not a tail estimate. -/
theorem unit_jet_allocation (κ : ℝ) : κ + (1 - κ) = 1 := by ring

end
end GRWTSK.RiemannHypothesis.Conversation.CenteredVaughan
```
