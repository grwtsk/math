# Complete source: GRWTSK.Algebra.Basis.Variant1630e0172f5bd37ebd34349760048155e62a61d8ae044f249fceb902a69f719f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9ca5e6a3d630b930a285e65e97837e2be9cf010` · SHA-256 `ccdc53b4a1e0d681f504d2122efb7023ebd9e85b93fb2a5228f90557744055cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.BasisSpanSingleton.Variant1077a1b8b2c3aad1fd233a5c158b45dfe607690fe3a582456fcadf4fe37e8334","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1077a1b8b2c3aad1fd233a5c158b45dfe607690fe3a582456fcadf4fe37e8334","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.BasisSpanSingleton.Variant1077a1b8b2c3aad1fd233a5c158b45dfe607690fe3a582456fcadf4fe37e8334","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"1077a1b8b2c3aad1fd233a5c158b45dfe607690fe3a582456fcadf4fe37e8334","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Ideal/Basis.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.Algebra.Algebra.Bilinear
import Mathlib.LinearAlgebra.Basis.Defs
import Mathlib.LinearAlgebra.Basis.Submodule
import Mathlib.RingTheory.Ideal.Span

/-!
# The basis of ideals

Some results involving `Ideal` and `Basis`.
-/


namespace GRWTSK.Algebra.BasisSpanSingleton.Variant1077a1b8b2c3aad1fd233a5c158b45dfe607690fe3a582456fcadf4fe37e8334

namespace Ideal

variable {ι R S : Type*} [CommSemiring R] [CommRing S] [IsDomain S] [Algebra R S]

/-- A basis on `S` gives a basis on `Ideal.span {x}`, by multiplying everything by `x`. -/
noncomputable def basisSpanSingleton (b : Basis ι R S) {x : S} (hx : x ≠ 0) :
    Basis ι R (span ({x} : Set S)) :=
  b.map <|
    LinearEquiv.ofInjective (LinearMap.mulLeft R x) (mul_right_injective₀ hx) ≪≫ₗ
        LinearEquiv.ofEq _ _
          (by
            ext
            simp [mem_span_singleton', mul_comm]) ≪≫ₗ
      (Submodule.restrictScalarsEquiv R S S (Ideal.span ({x} : Set S))).restrictScalars R

@[simp]
theorem basisSpanSingleton_apply (b : Basis ι R S) {x : S} (hx : x ≠ 0) (i : ι) :
    (basisSpanSingleton b hx i : S) = x * b i := by
  simp only [basisSpanSingleton, Basis.map_apply, LinearEquiv.trans_apply,
    Submodule.restrictScalarsEquiv_apply, LinearEquiv.ofInjective_apply, LinearEquiv.coe_ofEq_apply,
    LinearEquiv.restrictScalars_apply, LinearMap.mulLeft_apply, LinearMap.mul_apply']

@[simp]
theorem constr_basisSpanSingleton {N : Type*} [Semiring N] [Module N S] [SMulCommClass R N S]
    (b : Basis ι R S) {x : S} (hx : x ≠ 0) :
    (b.constr N).toFun (((↑) : _ → S) ∘ (basisSpanSingleton b hx)) = Algebra.lmul R S x :=
  b.ext fun i => by simp

end Ideal

-- Porting note: added explicit coercion `(b i : S)`
/-- If `I : Ideal S` has a basis over `R`,
`x ∈ I` iff it is a linear combination of basis vectors. -/
theorem Basis.mem_ideal_iff {ι R S : Type*} [CommSemiring R] [Semiring S] [Algebra R S]
    {I : Ideal S} (b : Basis ι R I) {x : S} :
    x ∈ I ↔ ∃ c : ι →₀ R, x = Finsupp.sum c fun i x => x • (b i : S) :=
  (b.map ((I.restrictScalarsEquiv R _ _).restrictScalars R).symm).mem_submodule_iff

/-- If `I : Ideal S` has a finite basis over `R`,
`x ∈ I` iff it is a linear combination of basis vectors. -/
theorem Basis.mem_ideal_iff' {ι R S : Type*} [Fintype ι] [CommSemiring R] [Semiring S] [Algebra R S]
    {I : Ideal S} (b : Basis ι R I) {x : S} : x ∈ I ↔ ∃ c : ι → R, x = ∑ i, c i • (b i : S) :=
  (b.map ((I.restrictScalarsEquiv R _ _).restrictScalars R).symm).mem_submodule_iff'
```
