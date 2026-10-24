# Complete source: GRWTSK.Algebra.LinearAlgebra.Ec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecddFeshbachHermitia.Variantec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecdd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78875f95d634b590745c6cccd031072c3bf0b8fa` · SHA-256 `ec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecdd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.FeshbachHermitian
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Tactic

/-!
Finite tests of the exact Hermitian Feshbach sign adapter.

The nonzero-coupling packet checks the cross-block and inverse normalization.
The two diagonal packets have the same linear equation kernel but different
signs. No radical-ideal equality is claimed by this fixture; that obligation is
owned by the polynomial equation layer. Tests authored by the Codex AI assistant.
-/

namespace FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures

open Matrix

noncomputable section

attribute [local instance] invertibleOne

/-- A positive packet with genuine cross coupling has center `3 - 1 = 2`.
At `(x,y)=(2,3)`, its energy is `8 + 25 = 33`. -/
theorem coupled_completion :
    star (Sum.elim (fun _ : Fin 1 => (2 : ℝ)) (fun _ : Fin 1 => (3 : ℝ))) ⬝ᵥ
        (Matrix.fromBlocks (3 : Matrix (Fin 1) (Fin 1) ℝ)
          (1 : Matrix (Fin 1) (Fin 1) ℝ) 1 1).mulVec
          (Sum.elim (fun _ : Fin 1 => (2 : ℝ)) (fun _ : Fin 1 => (3 : ℝ))) = 33 := by
  have h := completion_of_squares (3 : Matrix (Fin 1) (Fin 1) ℝ)
    (1 : Matrix (Fin 1) (Fin 1) ℝ) 1 Matrix.isHermitian_one
    (fun _ => 2) (fun _ => 3)
  convert h using 1 <;>
    norm_num [Feshbach.schur, ← Matrix.diagonal_natCast, dotProduct, Matrix.mulVec,
      Matrix.sub_apply]
  change (33 : ℝ) = 2 * ((3 - 1) * 2) + 25
  norm_num

/-- The same positive packet is PSD exactly through its positive center. -/
theorem coupled_posSemidef :
    (Matrix.fromBlocks (3 : Matrix (Fin 1) (Fin 1) ℝ)
      (1 : Matrix (Fin 1) (Fin 1) ℝ) 1 1).PosSemidef := by
  have h := posSemidef_iff (3 : Matrix (Fin 1) (Fin 1) ℝ)
    (1 : Matrix (Fin 1) (Fin 1) ℝ) 1 Matrix.PosDef.one
  have hcenter :
      Feshbach.schur (3 : Matrix (Fin 1) (Fin 1) ℝ)
        (1 : Matrix (Fin 1) (Fin 1) ℝ)ᴴ 1 1 = 2 := by
    dsimp [Feshbach.schur]
    ext i j
    fin_cases i
    fin_cases j
    norm_num
    change (3 : ℝ) - 1 = 2
    norm_num
  have hpositive := h.mpr (hcenter ▸
    (Matrix.PosDef.ofNat (2 : ℕ) : (2 : Matrix (Fin 1) (Fin 1) ℝ).PosDef).posSemidef)
  simpa using hpositive

open scoped ComplexOrder

/-- An imaginary cross block distinguishes conjugate transpose from transpose. -/
def imaginaryCoupling : Matrix (Fin 1) (Fin 1) ℂ := fun _ _ => Complex.I

/-- The actual complex Schur correction is `(-I)I = 1`. -/
theorem imaginary_center :
    Feshbach.schur (2 : Matrix (Fin 1) (Fin 1) ℂ)
      imaginaryCouplingᴴ imaginaryCoupling 1 = 1 := by
  ext i j
  fin_cases i
  fin_cases j
  norm_num [Feshbach.schur, imaginaryCoupling, Matrix.mul_apply,
    Matrix.conjTranspose_apply]
  change (2 : ℂ) - 1 = 1
  norm_num

/-- Hermitian sign transport handles the imaginary coupling without dropping
complex conjugation. -/
theorem imaginary_packet_posSemidef :
    (Matrix.fromBlocks (2 : Matrix (Fin 1) (Fin 1) ℂ)
      imaginaryCouplingᴴ imaginaryCoupling 1).PosSemidef := by
  apply (posSemidef_iff _ imaginaryCoupling 1 Matrix.PosDef.one).mpr
  rw [imaginary_center]
  exact Matrix.PosSemidef.one

/-- The positive diagonal packet. -/
def positiveDiagonal : Matrix (Fin 2) (Fin 2) ℝ := 1

/-- The indefinite diagonal packet. -/
def indefiniteDiagonal : Matrix (Fin 2) (Fin 2) ℝ :=
  Matrix.diagonal ![-1, 1]

/-- Equality of the two linear equation kernels coexists with positive
definiteness of one packet and failure of PSD for the other. -/
theorem same_kernel_different_sign :
    (∀ x : Fin 2 → ℝ,
      positiveDiagonal.mulVec x = 0 ↔ indefiniteDiagonal.mulVec x = 0) ∧
      positiveDiagonal.PosDef ∧ ¬ indefiniteDiagonal.PosSemidef := by
  constructor
  · intro x
    simp only [positiveDiagonal, Matrix.one_mulVec, indefiniteDiagonal,
      funext_iff, Pi.zero_apply, Matrix.mulVec_diagonal]
    constructor
    · intro hx i
      rw [hx i]
      simp
    · intro hx i
      fin_cases i
      · simpa using hx 0
      · simpa using hx 1
  · constructor
    · exact Matrix.PosDef.one
    · rw [indefiniteDiagonal, Matrix.posSemidef_diagonal_iff]
      intro h
      have hzero := h (0 : Fin 2)
      norm_num at hzero

end

end FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures

set_option pp.proofs false
#check FormalResearch.PositiveAtlas.FeshbachHermitian.completion_of_squares
#print axioms FormalResearch.PositiveAtlas.FeshbachHermitian.completion_of_squares
#check FormalResearch.PositiveAtlas.FeshbachHermitian.isHermitian_iff
#print axioms FormalResearch.PositiveAtlas.FeshbachHermitian.isHermitian_iff
#check FormalResearch.PositiveAtlas.FeshbachHermitian.posSemidef_iff
#print axioms FormalResearch.PositiveAtlas.FeshbachHermitian.posSemidef_iff
#check FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.coupled_completion
#print axioms FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.coupled_completion
#check FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.coupled_posSemidef
#print axioms FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.coupled_posSemidef
#check FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.imaginary_center
#print axioms FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.imaginary_center
#check FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.imaginary_packet_posSemidef
#print axioms FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.imaginary_packet_posSemidef
#check FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.same_kernel_different_sign
#print axioms FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.same_kernel_different_sign
```
