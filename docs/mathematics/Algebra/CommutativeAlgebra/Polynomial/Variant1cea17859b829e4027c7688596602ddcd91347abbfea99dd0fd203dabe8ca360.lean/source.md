# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variant1cea17859b829e4027c7688596602ddcd91347abbfea99dd0fd203dabe8ca360

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dadaca210e674d9af3deca6636f3aebcc4607f57` · SHA-256 `0472dbd26ce5faa157ea5269d68b093fccb78bd09f2049465840d5c810a81feb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.JacobsonBotPolynomialLeSInfMapMaximal.Variant854371433d1c668bc7a8907c0ca889e0a3041eb69ce66a89a8810c8d6e531677","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"854371433d1c668bc7a8907c0ca889e0a3041eb69ce66a89a8810c8d6e531677","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.JacobsonBotPolynomialLeSInfMapMaximal.Variant854371433d1c668bc7a8907c0ca889e0a3041eb69ce66a89a8810c8d6e531677","mathematical_subject":"Algebra.Polynomials","original_sha256":"854371433d1c668bc7a8907c0ca889e0a3041eb69ce66a89a8810c8d6e531677","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Jacobson/Polynomial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Devon Tuma. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Devon Tuma
-/
import Mathlib.RingTheory.Jacobson.Ideal
import Mathlib.RingTheory.Polynomial.Quotient
/-!
# Jacobson radical of polynomial ring

-/


namespace GRWTSK.Algebra.CommutativeAlgebra.JacobsonBotPolynomialLeSInfMapMaximal.Variant854371433d1c668bc7a8907c0ca889e0a3041eb69ce66a89a8810c8d6e531677

namespace Ideal

section Polynomial

open Polynomial

variable {R : Type*} [CommRing R]

theorem jacobson_bot_polynomial_le_sInf_map_maximal :
    jacobson (⊥ : Ideal R[X]) ≤ sInf (map (C : R →+* R[X]) '' { J : Ideal R | J.IsMaximal }) := by
  refine le_sInf fun J => exists_imp.2 fun j hj => ?_
  haveI : j.IsMaximal := hj.1
  refine Trans.trans (jacobson_mono bot_le) (le_of_eq ?_ : J.jacobson ≤ J)
  suffices t : (⊥ : Ideal (Polynomial (R ⧸ j))).jacobson = ⊥ by
    rw [← hj.2, jacobson_eq_iff_jacobson_quotient_eq_bot]
    replace t := congr_arg (map (polynomialQuotientEquivQuotientPolynomial j).toRingHom) t
    rwa [map_jacobson_of_bijective _, map_bot] at t
    exact RingEquiv.bijective (polynomialQuotientEquivQuotientPolynomial j)
  refine eq_bot_iff.2 fun f hf => ?_
  have r1 : (X : (R ⧸ j)[X]) ≠ 0 := ne_of_apply_ne (coeff · 1) <| by simp
  simpa [r1] using eq_C_of_degree_eq_zero (degree_eq_zero_of_isUnit ((mem_jacobson_bot.1 hf) X))

theorem jacobson_bot_polynomial_of_jacobson_bot (h : jacobson (⊥ : Ideal R) = ⊥) :
    jacobson (⊥ : Ideal R[X]) = ⊥ := by
  refine eq_bot_iff.2 (le_trans jacobson_bot_polynomial_le_sInf_map_maximal ?_)
  refine fun f hf => (Submodule.mem_bot R[X]).2 <| Polynomial.ext fun n =>
    Trans.trans (?_ : coeff f n = 0) (coeff_zero n).symm
  suffices f.coeff n ∈ Ideal.jacobson ⊥ by rwa [h, Submodule.mem_bot] at this
  exact mem_sInf.2 fun j hj => (mem_map_C_iff.1 ((mem_sInf.1 hf) ⟨j, ⟨hj.2, rfl⟩⟩)) n

end Polynomial

end Ideal
```
