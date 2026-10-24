# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Observation.Variant9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f84448f2ebe8c84419a7bc3d17b7a3aabd898b9` · SHA-256 `9015bde92652ad40e6a6d8679acce0d9e01a78278f9d96a28605d35bc7fdeb22`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
