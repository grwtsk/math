# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Observation.Variant8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1da6e5b572071a87715ba648789d948645ce7175` · SHA-256 `8ab4412030187af8ad0c4bc7c8a52ee4625ef312b537b34e9ef6ce3cce0ae5fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Recoverability
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

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Observation

/-- The set of all integer roots of the supplied polynomial, without multiplicities. -/
def integerRootSet (p : Polynomial ℤ) : Set ℤ := {x | p.eval x = 0}

/-- Squaring preserves the complete integer-root observation map. -/
theorem integerRootSet_square (p : Polynomial ℤ) : integerRootSet p = integerRootSet (p ^ 2) := by
  ext x
  exact (square_preserves_integer_roots p x).symm

/-- The existing hostile presentations have equal integer-root observations. -/
theorem integerRootSet_X_eq_X_sq :
    integerRootSet (Polynomial.X : Polynomial ℤ) =
      integerRootSet ((Polynomial.X : Polynomial ℤ) ^ 2) :=
  integerRootSet_square Polynomial.X

/-- The same integer-root class contains different ordinary polynomial degrees. -/
noncomputable def natDegreeRecoveryObstruction :
    RecoveryObstruction integerRootSet (fun p : Polynomial ℤ => p.natDegree) where
  left := Polynomial.X
  right := Polynomial.X ^ 2
  sameObservation := integerRootSet_X_eq_X_sq
  differentTarget := root_equivalence_does_not_determine_degree.2

/-- Ordinary degree cannot be reconstructed from the integer-root set alone. -/
theorem natDegree_not_recoverable_from_integerRootSet :
    ¬RecoverableFrom integerRootSet (fun p : Polynomial ℤ => p.natDegree) :=
  natDegreeRecoveryObstruction.notRecoverable

/-- The same observation does recover the distinct target of integer-root existence. -/
theorem integer_root_existence_recoverable :
    RecoverableFrom integerRootSet (fun p : Polynomial ℤ => ∃ x : ℤ, p.eval x = 0) :=
  ⟨Set.Nonempty, fun _ => rfl⟩

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Observation
```
