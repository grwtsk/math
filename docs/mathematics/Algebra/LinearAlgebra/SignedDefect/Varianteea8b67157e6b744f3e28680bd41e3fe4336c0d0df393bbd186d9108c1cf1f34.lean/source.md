# Complete source: GRWTSK.Algebra.LinearAlgebra.SignedDefect.Varianteea8b67157e6b744f3e28680bd41e3fe4336c0d0df393bbd186d9108c1cf1f34

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c1a644729112f3c1f0e703cc817c34a37965a24` · SHA-256 `2cb2724169be950d651be473e2f2476da875ee9a468da5956036e417d8fdc937`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Defect.Varianta2037cd59f73d769cc4cfe3a51edbb4aa6fcea9251f0ec9d38d893e3badc6dff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a2037cd59f73d769cc4cfe3a51edbb4aa6fcea9251f0ec9d38d893e3badc6dff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Defect.Varianta2037cd59f73d769cc4cfe3a51edbb4aa6fcea9251f0ec9d38d893e3badc6dff","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"a2037cd59f73d769cc4cfe3a51edbb4aa6fcea9251f0ec9d38d893e3badc6dff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mutation-d4-e8/SignedDefect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceArithmeticOrbit
import Mathlib.Tactic.NoncommRing

/-!
Exact signed accounting on the existing actual-source coefficient carrier.
No arithmetic budget, active source symmetry or cross-scale identification is
assumed. Direction: grwtsk contributors. Proof construction: OpenAI Codex.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Defect.Varianta2037cd59f73d769cc4cfe3a51edbb4aa6fcea9251f0ec9d38d893e3badc6dff

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
