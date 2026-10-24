# Complete source: GRWTSK.Algebra.LinearAlgebra.StdBasis.Variant0c810c80a295dbcae88e39a3cd18f532c33bf67567ab445303ce469f4bc925fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `209e95ca5c6b819b413d2c17ae2fe1d2fd612a52` · SHA-256 `80dc6b2bf0dd094d27cf9c504757a7e173d199a1fbc3a165fbb5456dcdcf78af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Matrix.Variant6aa7e407cc55a5888882038200ea607469f1398b4f8754be6e1c6ead8ea3889b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6aa7e407cc55a5888882038200ea607469f1398b4f8754be6e1c6ead8ea3889b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Matrix.Variant6aa7e407cc55a5888882038200ea607469f1398b4f8754be6e1c6ead8ea3889b","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"6aa7e407cc55a5888882038200ea607469f1398b4f8754be6e1c6ead8ea3889b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Matrix/StdBasis.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Patrick Massot, Casper Putz, Anne Baanen
-/
import Mathlib.Data.Matrix.Basis
import Mathlib.LinearAlgebra.StdBasis

/-!
# Standard basis on matrices

## Main results

* `Basis.matrix`: extend a basis on `M` to the standard basis on `Matrix n m M`
-/


namespace GRWTSK.Algebra.LinearAlgebra.Matrix.Variant6aa7e407cc55a5888882038200ea607469f1398b4f8754be6e1c6ead8ea3889b

namespace Basis
variable {ι R M : Type*} (m n : Type*)
variable [Fintype m] [Fintype n] [Semiring R] [AddCommMonoid M] [Module R M]

/-- The standard basis of `Matrix m n M` given a basis on `M`. -/
protected noncomputable def matrix (b : Basis ι R M) :
    Basis (m × n × ι) R (Matrix m n M) :=
  Basis.reindex (Pi.basis fun _ : m => Pi.basis fun _ : n => b)
    ((Equiv.sigmaEquivProd _ _).trans <| .prodCongr (.refl _) (Equiv.sigmaEquivProd _ _))
    |>.map (Matrix.ofLinearEquiv R)

variable {n m}

@[simp]
theorem matrix_apply (b : Basis ι R M) (i : m) (j : n) (k : ι) [DecidableEq m] [DecidableEq n] :
    b.matrix m n (i, j, k) = Matrix.single i j (b k) := by
  simp [Basis.matrix, Matrix.single_eq_of_single_single]

end Basis

namespace Matrix

variable (R : Type*) (m n : Type*) [Fintype m] [Finite n] [Semiring R]

/-- The standard basis of `Matrix m n R`. -/
noncomputable def stdBasis : Basis (m × n) R (Matrix m n R) :=
  Basis.reindex (Pi.basis fun _ : m => Pi.basisFun R n) (Equiv.sigmaEquivProd _ _)
    |>.map (ofLinearEquiv R)

variable {n m}

theorem stdBasis_eq_single (i : m) (j : n) [DecidableEq m] [DecidableEq n] :
    stdBasis R m n (i, j) = single i j (1 : R) := by
  simp [stdBasis, single_eq_of_single_single]

@[deprecated (since := "2025-05-05")] alias stdBasis_eq_stdBasisMatrix := stdBasis_eq_single

end Matrix

namespace Module.Free

variable (R M : Type*) [Semiring R] [AddCommMonoid M] [Module R M] [Module.Free R M]

/-- The module of finite matrices is free. -/
instance matrix {m n : Type*} [Finite m] [Finite n] : Module.Free R (Matrix m n M) :=
  Module.Free.pi R _

end Module.Free
```
