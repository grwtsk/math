# Complete source: GRWTSK.Algebra.LinearAlgebra.QuantitativeGapSourceCertificate.Variantca4ce52c8b3d698e1ad3c7e22886c40f3e9111331e4300fc35f5aa4e8ac0c82c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8bbcd6a90ee4163fe19e21c4c25af389785817b1` · SHA-256 `bb823ebc1793ced3c801166ce2f08e4b256ee90d7d9bbd93250e399707f34aae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Two.Variantdce90abcbbed1e5bca89da1c88e8b77a855b5701fa6ce578d3e0492c35e6a8b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dce90abcbbed1e5bca89da1c88e8b77a855b5701fa6ce578d3e0492c35e6a8b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Two.Variantdce90abcbbed1e5bca89da1c88e8b77a855b5701fa6ce578d3e0492c35e6a8b9","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"dce90abcbbed1e5bca89da1c88e8b77a855b5701fa6ce578d3e0492c35e6a8b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/FormalResearch/PositiveAtlas/QuantitativeGapSourceCertificate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.QuantitativeGapSourceSchur
import FormalResearch.PositiveAtlas.FiniteQuadraticCertificate

/-!
# A supplied certificate for the literal two-state source Gram matrix

At `A=2`, the actual canonical source Gram restriction has real mixed entry
`0<C<1`. Its residual at the sharper constant `1-C` is the rank-one Gram matrix
of a row whose two entries are `sqrt C`. Empty constraint families make every
coefficient vector admissible. This is a real supplied-certificate soundness
application, not an executable rational search or a uniform/signed/physical gap.

Originating direction and evaluation: grwtsk contributors.
Proof construction: OpenAI Codex, reusing the exact PR267 quadratic checker.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Two.Variantdce90abcbbed1e5bca89da1c88e8b77a855b5701fa6ce578d3e0492c35e6a8b9

noncomputable section
set_option autoImplicit false

namespace FormalResearch.PositiveAtlas.QuantitativeGap.Source

open Matrix FiniteQuadraticCertificate
open scoped InnerProductSpace

/-- Exactly the two retained original-channel source indices at scale two. -/
abbrev Two := Fin 1 ⊕ Fin 1

/-- The realification of the literal canonical source Gram restriction. -/
def realSourceGram : Matrix Two Two ℝ := fun i j => (twoSourceGram i j).re

/-- The sharper lower constant for this fixed real two-state coefficient packet. -/
def actualSourceSharpGap : ℝ := 1 - actualSourceCoupling

theorem actualSourceSharpGap_pos : 0 < actualSourceSharpGap := by
  unfold actualSourceSharpGap
  linarith [actualSourceCoupling_lt_one]

theorem actualSourceGap_eq_sharp_div :
    actualSourceGap = actualSourceSharpGap / (1 + actualSourceCoupling) := by
  unfold actualSourceGap actualSourceSharpGap
  have hd : 1 + actualSourceCoupling ≠ 0 := by
    linarith [actualSourceCoupling_pos]
  field_simp [hd]
  ring

theorem actualSourceSharpGap_improves : actualSourceGap < actualSourceSharpGap := by
  rw [actualSourceGap_eq_sharp_div]
  apply (div_lt_iff₀ (by linarith [actualSourceCoupling_pos])).2
  nlinarith [mul_pos actualSourceSharpGap_pos actualSourceCoupling_pos]

/-- The certificate supplies this actual real row, rather than assuming a square root. -/
def realSourceFactor : Matrix (Fin 1) Two ℝ := fun _ _ => Real.sqrt actualSourceCoupling

/-- All entries, including the mixed source entry, are retained in this exact identity. -/
theorem realSourceGram_residual :
    realSourceGram - actualSourceSharpGap • (1 : Matrix Two Two ℝ) =
      realSourceFactor.transpose * realSourceFactor := by
  ext i j
  cases i <;> cases j <;> rename_i i j <;> fin_cases i <;> fin_cases j
  all_goals
    simp [realSourceGram, twoSourceGram_eq_block, actualSourceCross,
      actualSourceSharpGap, realSourceFactor, Matrix.mul_apply, Matrix.fromBlocks,
      smul_eq_mul, Real.mul_self_sqrt actualSourceCoupling_pos.le]

/-- The actual homogeneous quadratic target has no additional constraints. -/
def actualSourceCertificateProblem : Problem ℝ Two Empty Empty where
  target := realSourceGram - actualSourceSharpGap • (1 : Matrix Two Two ℝ)
  equalities := Empty.elim
  inequalities := Empty.elim

/-- The explicit row factor and the two empty multiplier families. -/
def actualSourceCertificate : Certificate ℝ Two Empty Empty (Fin 1) where
  gram := realSourceFactor
  equalityMultipliers := Empty.elim
  inequalityMultipliers := Empty.elim

theorem actualSourceCertificate_valid :
    Valid actualSourceCertificateProblem actualSourceCertificate := by
  refine ⟨fun g => g.elim, ?_⟩
  simpa [actualSourceCertificateProblem, actualSourceCertificate] using
    realSourceGram_residual

theorem actualSourceCertificate_admissible (x : Two → ℝ) :
    actualSourceCertificateProblem.Admissible x :=
  ⟨fun e => e.elim, fun g => g.elim⟩

/-- This Boolean equality follows from validity; no real-arithmetic execution is claimed. -/
theorem actualSourceCertificate_checked :
    check actualSourceCertificateProblem actualSourceCertificate = true := by
  exact decide_eq_true actualSourceCertificate_valid

/-- The existing checker consumer gives the sharper actual real coefficient bound. -/
theorem actual_real_source_certificate_coercive (x : Two → ℝ) :
    actualSourceSharpGap * (x ⬝ᵥ x) ≤ quadratic realSourceGram x := by
  have h := check_sound actualSourceCertificateProblem actualSourceCertificate
    actualSourceCertificate_checked x (actualSourceCertificate_admissible x)
  simp only [actualSourceCertificateProblem, quadratic, Matrix.sub_mulVec,
    Matrix.smul_mulVec, dotProduct_sub, dotProduct_smul, smul_eq_mul,
    Matrix.one_mulVec] at h ⊢
  linarith

/-- The same supplied row viewed in complex source coordinates. -/
def complexSourceFactor : Matrix (Fin 1) Two ℂ :=
  fun _ _ => (Real.sqrt actualSourceCoupling : ℂ)

theorem twoSourceGram_residual :
    twoSourceGram - actualSourceSharpGap • (1 : Matrix Two Two ℂ) =
      complexSourceFactorᴴ * complexSourceFactor := by
  ext i j
  cases i <;> cases j <;> rename_i i j <;> fin_cases i <;> fin_cases j
  all_goals
    simp [twoSourceGram_eq_block, actualSourceCross, actualSourceSharpGap,
      complexSourceFactor, Matrix.mul_apply, Matrix.fromBlocks, Complex.real_smul,
      ← Complex.ofReal_mul, Real.mul_self_sqrt actualSourceCoupling_pos.le]

/-- Conjugate Gram positivity gives the same bound on every complex coefficient vector. -/
theorem actual_complex_source_sharp_coercive (z : Two → ℂ) :
    actualSourceSharpGap * ‖WithLp.toLp 2 z‖ ^ 2 ≤ hermitianEnergy twoSourceGram z := by
  have hn : 0 ≤ hermitianEnergy (complexSourceFactorᴴ * complexSourceFactor) z := by
    rw [show complexSourceFactorᴴ * complexSourceFactor =
      complexSourceFactorᴴ * (1 : Matrix (Fin 1) (Fin 1) ℂ) * complexSourceFactor by simp,
      hermitianEnergy_congruence, hermitianEnergy_one]
    exact sq_nonneg _
  rw [← twoSourceGram_residual] at hn
  simp only [hermitianEnergy, Matrix.sub_mulVec, dotProduct_sub, Complex.sub_re] at hn
  rw [Matrix.smul_mulVec, Matrix.one_mulVec,
    dotProduct_smul actualSourceSharpGap (star z) z, Complex.smul_re, smul_eq_mul] at hn
  have hz := hermitianEnergy_one z
  simp only [hermitianEnergy, Matrix.one_mulVec] at hz
  rw [hz] at hn
  simp only [hermitianEnergy]
  linarith

end FormalResearch.PositiveAtlas.QuantitativeGap.Source
```
