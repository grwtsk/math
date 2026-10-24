# Complete source: GRWTSK.Algebra.LinearAlgebra.QuantitativeGapMetric.Variantf56f94f9f991517e9b2f16c4d0b817c5fc80b3aa852bf906b0247a59d41f5747

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77ec1b46b082e20d05014533755ad2a5eed0b519` · SHA-256 `396762051dfbd151b61df33490964e6b64ae7e5cc5b5207176cc877b4c634306`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.WeightedAdjoint.Variantedebcda2d8331b4e3949e990ca25d72e7ef36a1e9fa878ac3b43065120442ec0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"edebcda2d8331b4e3949e990ca25d72e7ef36a1e9fa878ac3b43065120442ec0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.WeightedAdjoint.Variantedebcda2d8331b4e3949e990ca25d72e7ef36a1e9fa878ac3b43065120442ec0","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"edebcda2d8331b4e3949e990ca25d72e7ef36a1e9fa878ac3b43065120442ec0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/FormalResearch/PositiveAtlas/QuantitativeGapMetric.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Algebra.LinearAlgebra.WeightedAdjoint.Variantedebcda2d8331b4e3949e990ca25d72e7ef36a1e9fa878ac3b43065120442ec0

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
```
