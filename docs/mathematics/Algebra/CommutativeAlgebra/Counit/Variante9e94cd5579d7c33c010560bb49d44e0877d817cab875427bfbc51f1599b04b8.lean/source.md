# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Counit.Variante9e94cd5579d7c33c010560bb49d44e0877d817cab875427bfbc51f1599b04b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c58c10c9b4dc3c4651f7522a17b1f04cc9850b9c` · SHA-256 `39068d819736d6102e62ff91a5fabb5ba3255a4f3c90b0a08e8e8764427cfd6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.ACounit.Variantaa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.ACounit.Variantaa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1","mathematical_subject":"Algebra.Polynomials","original_sha256":"aa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/MvPolynomial/Counit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Algebra.MvPolynomial.Eval

/-!
## Counit morphisms for multivariate polynomials

One may consider the ring of multivariate polynomials `MvPolynomial A R` with coefficients in `R`
and variables indexed by `A`. If `A` is not just a type, but an algebra over `R`,
then there is a natural surjective algebra homomorphism `MvPolynomial A R →ₐ[R] A`
obtained by `X a ↦ a`.

### Main declarations

* `MvPolynomial.ACounit R A` is the natural surjective algebra homomorphism
  `MvPolynomial A R →ₐ[R] A` obtained by `X a ↦ a`
* `MvPolynomial.counit` is an “absolute” variant with `R = ℤ`
* `MvPolynomial.counitNat` is an “absolute” variant with `R = ℕ`

-/



namespace GRWTSK.Algebra.CommutativeAlgebra.ACounit.Variantaa2e47d57ecf67f901afa597215e5de018e0b4602d776a58be51cf69a316c2e1

namespace MvPolynomial

open Function

variable (A B R : Type*) [CommSemiring A] [CommSemiring B] [CommRing R] [Algebra A B]

/-- `MvPolynomial.ACounit A B` is the natural surjective algebra homomorphism
`MvPolynomial B A →ₐ[A] B` obtained by `X a ↦ a`.

See `MvPolynomial.counit` for the “absolute” variant with `A = ℤ`,
and `MvPolynomial.counitNat` for the “absolute” variant with `A = ℕ`. -/
noncomputable def ACounit : MvPolynomial B A →ₐ[A] B :=
  aeval id

variable {B}

@[simp]
theorem ACounit_X (b : B) : ACounit A B (X b) = b :=
  aeval_X _ b

variable {A} (B)

theorem ACounit_C (a : A) : ACounit A B (C a) = algebraMap A B a :=
  aeval_C _ a

variable (A)

theorem ACounit_surjective : Surjective (ACounit A B) := fun b => ⟨X b, ACounit_X A b⟩

/-- `MvPolynomial.counit R` is the natural surjective ring homomorphism
`MvPolynomial R ℤ →+* R` obtained by `X r ↦ r`.

See `MvPolynomial.ACounit` for a “relative” variant for algebras over a base ring,
and `MvPolynomial.counitNat` for the “absolute” variant with `R = ℕ`. -/
noncomputable def counit : MvPolynomial R ℤ →+* R :=
  (ACounit ℤ R).toRingHom

/-- `MvPolynomial.counitNat A` is the natural surjective ring homomorphism
`MvPolynomial A ℕ →+* A` obtained by `X a ↦ a`.

See `MvPolynomial.ACounit` for a “relative” variant for algebras over a base ring
and `MvPolynomial.counit` for the “absolute” variant with `A = ℤ`. -/
noncomputable def counitNat : MvPolynomial A ℕ →+* A :=
  ACounit ℕ A

theorem counit_surjective : Surjective (counit R) :=
  ACounit_surjective ℤ R

theorem counitNat_surjective : Surjective (counitNat A) :=
  ACounit_surjective ℕ A

theorem counit_C (n : ℤ) : counit R (C n) = n :=
  ACounit_C _ _

theorem counitNat_C (n : ℕ) : counitNat A (C n) = n :=
  ACounit_C _ _

variable {R A}

@[simp]
theorem counit_X (r : R) : counit R (X r) = r :=
  ACounit_X _ _

@[simp]
theorem counitNat_X (a : A) : counitNat A (X a) = a :=
  ACounit_X _ _

end MvPolynomial
```
