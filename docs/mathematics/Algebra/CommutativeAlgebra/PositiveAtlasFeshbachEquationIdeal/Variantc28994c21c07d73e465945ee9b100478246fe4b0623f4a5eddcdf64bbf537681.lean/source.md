# Complete source: GRWTSK.Algebra.CommutativeAlgebra.PositiveAtlasFeshbachEquationIdeal.Variantc28994c21c07d73e465945ee9b100478246fe4b0623f4a5eddcdf64bbf537681

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d3e5e5f3f67b3ccf7e58721cf29ac9c93f6555d` · SHA-256 `301f22304867fac033bc7a6710ffd15bb2c857830f6d2d4a510d6278a9d78255`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.FeshbachEquationIdeal.Variant33ebb89ef2bf756997841feee2123471a4d10e3012116e676b1cfb8390c2aa3b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"33ebb89ef2bf756997841feee2123471a4d10e3012116e676b1cfb8390c2aa3b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.FeshbachEquationIdeal.Variant33ebb89ef2bf756997841feee2123471a4d10e3012116e676b1cfb8390c2aa3b","mathematical_subject":"Algebra.Polynomials","original_sha256":"33ebb89ef2bf756997841feee2123471a4d10e3012116e676b1cfb8390c2aa3b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass15/feshbach_review/pr267-source/tests/positive_atlas_feshbach_equation_ideal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.FeshbachEquationIdeal
import Mathlib.Data.ZMod.Basic

/-! Focused acceptance tests for exact ideal transport, coefficient lifting,
finite radicality scope, and the radical/sign non-implication fixture.

AI attribution: Codex authored these tests.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.FeshbachEquationIdeal.Variant33ebb89ef2bf756997841feee2123471a4d10e3012116e676b1cfb8390c2aa3b

open FormalResearch.PositiveAtlas

-- The row operation applies even over a ring with nonzero nilpotents.
example (p q : Unit → ZMod 4) :
    blockEquationIdeal (p + Matrix.mulVec (fun _ _ : Unit ↦ (2 : ZMod 4)) q) q =
      blockEquationIdeal p q := by
  let : Invertible (1 : Matrix Unit Unit (ZMod 4)) := invertibleOne
  simpa only [Matrix.one_mulVec] using
    blockEquationIdeal_elimination (fun _ _ : Unit ↦ (2 : ZMod 4))
      (1 : Matrix Unit Unit (ZMod 4)) p q

-- The off-diagonal matrices are independent; adjoint equality is not assumed.
example (A : Matrix (Fin 2) (Fin 2) ℚ) (U : Matrix (Fin 2) (Fin 3) ℚ)
    (C : Matrix (Fin 3) (Fin 2) ℚ) (B : Matrix (Fin 3) (Fin 3) ℚ) [Invertible B]
    (x : Fin 2 → ℚ) (y : Fin 3 → ℚ) :
    blockEquationIdeal (A.mulVec x + U.mulVec y) (C.mulVec x + B.mulVec y) =
      blockEquationIdeal ((Feshbach.schur A U C B).mulVec x)
        (y + (⅟ B).mulVec (C.mulVec x)) :=
  feshbach_equationIdeal_eq A U C B x y

-- A rank-one singular linear system still generates a radical ideal. This is
-- the `A = U = C = B = 1` block packet, whose Schur complement is zero.
example :
    (Ideal.span ({
      (MvPolynomial.X (Sum.inl ()) + MvPolynomial.X (Sum.inr ()) :
        MvPolynomial (Unit ⊕ Unit) ℚ)} : Set (MvPolynomial (Unit ⊕ Unit) ℚ))).IsRadical := by
  simpa [Fintype.sum_sum_type] using
    homogeneous_linear_equationIdeal_isRadical
      (fun (_ : Unit) (_ : Unit ⊕ Unit) ↦ (1 : ℚ))

example :
    letI : Invertible (1 : Matrix Unit Unit ℚ) := invertibleOne
    Feshbach.schur (1 : Matrix Unit Unit ℚ) 1 1 (1 : Matrix Unit Unit ℚ) = 0 := by
  let : Invertible (1 : Matrix Unit Unit ℚ) := invertibleOne
  simp [Feshbach.schur]

-- The origin witness remains available with a zero Schur complement.
example :
    letI : Invertible (1 : Matrix Unit Unit ℚ) := invertibleOne
    (MvPolynomial.zeroLocus ℚ (feshbachPolynomialEquationIdeal
      (1 : Matrix Unit Unit ℚ) 1 1 (1 : Matrix Unit Unit ℚ))).Nonempty ∧
    (MvPolynomial.zeroLocus ℚ (reducedFeshbachPolynomialEquationIdeal
      (1 : Matrix Unit Unit ℚ) 1 1 (1 : Matrix Unit Unit ℚ))).Nonempty := by
  let : Invertible (1 : Matrix Unit Unit ℚ) := invertibleOne
  exact feshbachPolynomialEquationIdeal_full_reduced_zeroLocus_nonempty
    (K := ℚ) (ι := Unit) (κ := Unit) 1 1 1 1

example :
    FeshbachEquationIdealFixture.diagonalEquationIdeal (-1) 1 =
      FeshbachEquationIdealFixture.diagonalEquationIdeal 1 1 ∧
    (FeshbachEquationIdealFixture.diagonalEquationIdeal (-1) 1).IsRadical ∧
    (∀ x y : ℝ, 0 ≤ x ^ 2 + y ^ 2) ∧
    (∃ x y : ℝ, -(x ^ 2) + y ^ 2 < 0) :=
  FeshbachEquationIdealFixture.radical_equationIdeal_does_not_determine_sign

#print FormalResearch.PositiveAtlas.feshbach_equationIdeal_eq
#print FormalResearch.PositiveAtlas.feshbach_polynomial_equationIdeal_eq
#print FormalResearch.PositiveAtlas.symmetric_linearIdeal_eq_ker
#print FormalResearch.PositiveAtlas.homogeneous_mulVec_equationIdeal_isPrime
#print FormalResearch.PositiveAtlas.feshbach_polynomial_equationIdeal_isRadical
#print FormalResearch.PositiveAtlas.reduced_feshbach_polynomial_equationIdeal_isRadical
#print FormalResearch.PositiveAtlas.homogeneous_mulVec_equationIdeal_eq_vanishingIdeal_zeroLocus
#print FormalResearch.PositiveAtlas.feshbachPolynomialEquationIdeal_eq_vanishingIdeal_zeroLocus
#print FormalResearch.PositiveAtlas.reducedFeshbachPolynomialEquationIdeal_eq_vanishingIdeal_zeroLocus
#print FormalResearch.PositiveAtlas.feshbachPolynomialEquationIdeal_full_reduced_zeroLocus_nonempty
#print FormalResearch.PositiveAtlas.blockCoordinateEquationIdeal_isRadical
#print FormalResearch.PositiveAtlas.nondegenerate_feshbach_polynomial_equationIdeal_isRadical
#print FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.radical_equationIdeal_does_not_determine_sign

#print axioms FormalResearch.PositiveAtlas.blockEquationIdeal_elimination
#print axioms FormalResearch.PositiveAtlas.feshbach_equationIdeal_eq
#print axioms FormalResearch.PositiveAtlas.feshbach_polynomial_equationIdeal_eq
#print axioms FormalResearch.PositiveAtlas.symmetric_linearIdeal_eq_ker
#print axioms FormalResearch.PositiveAtlas.symmetric_linearGeneratorIdeal_isPrime
#print axioms FormalResearch.PositiveAtlas.homogeneous_mulVec_equationIdeal_isPrime
#print axioms FormalResearch.PositiveAtlas.feshbach_polynomial_equationIdeal_isRadical
#print axioms FormalResearch.PositiveAtlas.reduced_feshbach_polynomial_equationIdeal_isRadical
#print axioms FormalResearch.PositiveAtlas.homogeneous_mulVec_equationIdeal_eq_vanishingIdeal_zeroLocus
#print axioms FormalResearch.PositiveAtlas.feshbachPolynomialEquationIdeal_eq_vanishingIdeal_zeroLocus
#print axioms FormalResearch.PositiveAtlas.reducedFeshbachPolynomialEquationIdeal_eq_vanishingIdeal_zeroLocus
#print axioms FormalResearch.PositiveAtlas.feshbachPolynomialEquationIdeal_full_reduced_zeroLocus_nonempty
#print axioms FormalResearch.PositiveAtlas.blockCoordinateEquationIdeal_isRadical
#print axioms FormalResearch.PositiveAtlas.nondegenerate_feshbach_polynomial_equationIdeal_isRadical
#print axioms FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.radical_equationIdeal_does_not_determine_sign
```
