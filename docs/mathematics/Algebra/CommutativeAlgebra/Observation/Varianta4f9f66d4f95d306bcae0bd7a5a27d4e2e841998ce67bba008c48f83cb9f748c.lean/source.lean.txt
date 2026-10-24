-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.PolynomialSource.Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.PolynomialSource.Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22","mathematical_subject":"Algebra.Polynomials","original_sha256":"9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Observation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Polynomial.Degree.Operations
import Mathlib.Algebra.Polynomial.Eval.Defs
import Mathlib.Tactic.NormNum

/-!
# Source-bound exact polynomial observations

This interface compiles an explicitly supplied integer polynomial. It does not
construct a canonical polynomial for an arbitrary proposition or Diophantine
presentation. Source identities are data; their external byte validation remains
an orchestration obligation. Semantic claims require the proof fields below.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.PolynomialSource.Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Observation

open Polynomial

/-- Immutable names supplied by the source-admission layer, never a proof token. -/
structure PolynomialSource where
  /-- Repository commit containing the exact source. -/
  commit : String
  /-- Repository tree containing the exact source. -/
  tree : String
  /-- Digest of the exact input artifact. -/
  artifactDigest : String
  /-- Exact declared polynomial. -/
  polynomial : Polynomial ℤ

/-- A compiler result binds one exact input and a root-preservation theorem.
It has no Galois-invariance, DPRM-completeness, or theorem-validity field. -/
structure RootPreservingCompilation (source : PolynomialSource) where
  /-- Versioned compiler identity. -/
  compiler : String
  /-- Exact transformed polynomial. -/
  output : Polynomial ℤ
  /-- Preservation is limited to integer roots of the supplied presentation. -/
  preserves : ∀ x : ℤ, output.eval x = 0 ↔ source.polynomial.eval x = 0

/-- Multiplication by a declared nonzero integer is an exact finite compiler. -/
noncomputable def scaleCompilation (source : PolynomialSource) (c : ℤ) (hc : c ≠ 0) :
    RootPreservingCompilation source where
  compiler := "integer-nonzero-scale-v1"
  output := C c * source.polynomial
  preserves x := by simp [hc]

/-- Executing this compiler never changes the declared integer-root predicate. -/
theorem scale_compilation_sound (source : PolynomialSource) (c : ℤ) (hc : c ≠ 0) (x : ℤ) :
    (scaleCompilation source c hc).output.eval x = 0 ↔ source.polynomial.eval x = 0 :=
  (scaleCompilation source c hc).preserves x

/-- Squaring preserves integer roots, although it changes a polynomial presentation. -/
theorem square_preserves_integer_roots (p : Polynomial ℤ) (x : ℤ) :
    (p ^ 2).eval x = 0 ↔ p.eval x = 0 := by simp

/-- Every strictly positive power preserves the integer-root predicate. Exponent
zero is excluded, so this cannot replace a nonconstant polynomial by a constant. -/
theorem positive_power_preserves_integer_roots (p : Polynomial ℤ) (n : ℕ)
    (hn : n ≠ 0) (x : ℤ) : (p ^ n).eval x = 0 ↔ p.eval x = 0 := by
  simp [hn]

/-- Integer-root equivalence permits arbitrarily large declared degree. Observed
degree therefore requires a fixed presentation or a separate invariance theorem. -/
theorem arbitrary_degree_inflation (n : ℕ) (hn : n ≠ 0) :
    (∀ x : ℤ, (X : Polynomial ℤ).eval x = 0 ↔ ((X : Polynomial ℤ) ^ n).eval x = 0) ∧
      ((X : Polynomial ℤ) ^ n).natDegree = n := by
  constructor
  · intro x
    simp [hn]
  · simp

/-- Equal integer-root predicates do not make degree presentation-independent. -/
theorem root_equivalence_does_not_determine_degree :
    (∀ x : ℤ, (X : Polynomial ℤ).eval x = 0 ↔ ((X : Polynomial ℤ) ^ 2).eval x = 0) ∧
      (X : Polynomial ℤ).natDegree ≠ ((X : Polynomial ℤ) ^ 2).natDegree := by
  constructor
  · intro x
    simp
  · norm_num

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Observation
