# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variant0cf1eb7faffb31dae39fc44b8bf5bb9fd5858f22f728e2e70b13640bc8c168b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bceecd2e359af11bb4f1ad226566229e237ca69b` · SHA-256 `b559ea6cc86347d84419798be5745197d41f279a176a788a56a34f4c3ac5936e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.PolynomialEvalEval.Variantcfea8d391b875c5069b5f8d8389cc859af16998c6f8be309f229a62b1e5d7b33","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cfea8d391b875c5069b5f8d8389cc859af16998c6f8be309f229a62b1e5d7b33","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.PolynomialEvalEval.Variantcfea8d391b875c5069b5f8d8389cc859af16998c6f8be309f229a62b1e5d7b33","mathematical_subject":"Algebra.Polynomials","original_sha256":"cfea8d391b875c5069b5f8d8389cc859af16998c6f8be309f229a62b1e5d7b33","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/MvPolynomial/Polynomial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.MvPolynomial.Equiv

/-!
# Some lemmas relating polynomials and multivariable polynomials.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.PolynomialEvalEval.Variantcfea8d391b875c5069b5f8d8389cc859af16998c6f8be309f229a62b1e5d7b33

namespace MvPolynomial

variable {R S σ : Type*}

theorem polynomial_eval_eval₂ [CommSemiring R] [CommSemiring S]
    {x : S} (f : R →+* Polynomial S) (g : σ → Polynomial S) (p : MvPolynomial σ R) :
    Polynomial.eval x (eval₂ f g p) =
      eval₂ ((Polynomial.evalRingHom x).comp f) (fun s => Polynomial.eval x (g s)) p := by
  apply induction_on p
  · simp
  · intro p q hp hq
    simp [hp, hq]
  · intro p n hp
    simp [hp]

theorem eval_polynomial_eval_finSuccEquiv {n : ℕ} {x : Fin n → R}
    [CommSemiring R] (f : MvPolynomial (Fin (n + 1)) R) (q : MvPolynomial (Fin n) R) :
    (eval x) (Polynomial.eval q (finSuccEquiv R n f)) = eval (Fin.cases (eval x q) x) f := by
  simp only [finSuccEquiv_apply, coe_eval₂Hom, polynomial_eval_eval₂, eval_eval₂]
  conv in RingHom.comp _ _ =>
    refine @RingHom.ext _ _ _ _ _ (RingHom.id _) fun r => ?_
    simp
  simp only [eval₂_id]
  congr
  funext i
  refine Fin.cases (by simp) (by simp) i

end MvPolynomial
```
