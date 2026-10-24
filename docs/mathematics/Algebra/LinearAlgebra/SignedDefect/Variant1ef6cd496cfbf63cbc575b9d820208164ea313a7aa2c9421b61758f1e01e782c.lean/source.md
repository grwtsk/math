# Complete source: GRWTSK.Algebra.LinearAlgebra.SignedDefect.Variant1ef6cd496cfbf63cbc575b9d820208164ea313a7aa2c9421b61758f1e01e782c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `976e076f0712861d4e37e595c4af38ae34dd7bb2` · SHA-256 `1ef6cd496cfbf63cbc575b9d820208164ea313a7aa2c9421b61758f1e01e782c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceArithmeticOrbit
import Mathlib.Tactic.NoncommRing

/-!
Exact signed accounting on the existing actual-source coefficient carrier.
No arithmetic budget, active source symmetry or cross-scale identification is
assumed. Direction: grwtsk contributors. Proof construction: OpenAI Codex.
-/

namespace FormalResearch.MutationGame.SignedDefect
open scoped BigOperators
open Matrix

variable {ι κ : Type*} [Fintype ι] [Fintype κ]

/-- Adjoint convention for complex columns. -/
def defect (H M : Matrix ι ι ℂ) : Matrix ι ι ℂ := Mᴴ * H * M - H

theorem defect_comp (H M N : Matrix ι ι ℂ) :
    defect H (M * N) = Nᴴ * defect H M * N + defect H N := by
  simp only [defect, Matrix.conjTranspose_mul]
  noncomm_ring

theorem defect_involution [DecidableEq ι] (H M : Matrix ι ι ℂ) (hM : M * M = 1) :
    Mᴴ * defect H M * M + defect H M = 0 := by
  rw [← defect_comp, hM]
  simp [defect]

/-- The sesquilinear readout, conjugate-linear in its first column. -/
def pairing (H : Matrix ι ι ℂ) (c d : ι → ℂ) : ℂ := star c ⬝ᵥ (H *ᵥ d)

theorem pairing_pullback (H : Matrix κ κ ℂ) (M : Matrix κ ι ℂ) (c d : ι → ℂ) :
    pairing H (M *ᵥ c) (M *ᵥ d) = pairing (Mᴴ * H * M) c d := by
  simp only [pairing, Matrix.star_mulVec, Matrix.dotProduct_mulVec,
    Matrix.vecMul_vecMul]

theorem pairing_sub (H K : Matrix ι ι ℂ) (c d : ι → ℂ) :
    pairing (H - K) c d = pairing H c d - pairing K c d := by
  simp [pairing, Matrix.sub_mulVec, dotProduct_sub]

theorem pairing_defect (H M : Matrix ι ι ℂ) (c d : ι → ℂ) :
    pairing H (M *ᵥ c) (M *ᵥ d) - pairing H c d = pairing (defect H M) c d := by
  rw [pairing_pullback, defect, pairing_sub]

/-- Both mixed increments and the complete new signed form remain explicit. -/
theorem refinement_increment (H : Matrix ι ι ℂ) (Hnext : Matrix κ κ ℂ)
    (I : Matrix κ ι ℂ) (c d : ι → ℂ) (u v : κ → ℂ) :
    pairing Hnext (I *ᵥ c + u) (I *ᵥ d + v) - pairing H c d =
      pairing (Iᴴ * Hnext * I - H) c d +
      pairing Hnext (I *ᵥ c) v + pairing Hnext u (I *ᵥ d) + pairing Hnext u v := by
  rw [pairing_sub, ← pairing_pullback]
  simp only [pairing, star_add, Matrix.mulVec_add, add_dotProduct, dotProduct_add]
  ring

open FormalResearch.RiemannHypothesis.SourceArithmeticOrbit
open FormalResearch.RiemannHypothesis.SourceReflectionDuality
open scoped InnerProductSpace

/-- The existing synthesis theorem identifies the literal signed matrix. -/
theorem actual_pairing (q : ComplexL2) (I : Finset ℕ) (c d : OrbitIndex I → ℂ) :
    ⟪synthesis q I c, reflection (synthesis q I d)⟫_ℂ =
      pairing (reflectedMatrix q I) c d := by
  rw [synthesis_reflected_inner]
  simp only [pairing, dotProduct, Matrix.mulVec, Pi.star_apply, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- An arbitrary coefficient move has its actual signed defect, even if it
preserves some other positive metric. This is accounting, not an estimate. -/
theorem actual_move_defect (q : ComplexL2) (I : Finset ℕ)
    (M : Matrix (OrbitIndex I) (OrbitIndex I) ℂ) (c d : OrbitIndex I → ℂ) :
    ⟪synthesis q I (M *ᵥ c), reflection (synthesis q I (M *ᵥ d))⟫_ℂ -
      ⟪synthesis q I c, reflection (synthesis q I d)⟫_ℂ =
      pairing (defect (reflectedMatrix q I) M) c d := by
  rw [actual_pairing, actual_pairing, pairing_defect]

end FormalResearch.MutationGame.SignedDefect
```
