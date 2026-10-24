# Complete source: GRWTSK.Algebra.LinearAlgebra.BilinForm.Variant8f74dcdf3338f8adf7ba085e62aa6e58da7b1a55828de6bfbbe5895472cbebf2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4f777ba9fb1bd504451a9eab8193717d8aa74df` · SHA-256 `b8e656298a6fc1911b44ce08c9e387f9e62f88edda5cc29a4d2c8c88d1f3818a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ExteriorPower.Variant518b7676b9e0f9d90fcac9af8564b5d7bf8b14dfc45f24c894bb1976e15ed407","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"518b7676b9e0f9d90fcac9af8564b5d7bf8b14dfc45f24c894bb1976e15ed407","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ExteriorPower.Variant518b7676b9e0f9d90fcac9af8564b5d7bf8b14dfc45f24c894bb1976e15ed407","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"518b7676b9e0f9d90fcac9af8564b5d7bf8b14dfc45f24c894bb1976e15ed407","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/ExteriorPower/BilinForm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Kirill Kondrashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash, Kirill Kondrashov
-/
module

public import Mathlib.LinearAlgebra.ExteriorPower.Basis

/-!
# Bilinear forms on exterior powers

The file is a home for results about the bilinear forms on exterior powers of a module.

## Main definitions / results:

* `LinearMap.BilinForm.exteriorPower`: a bilinear form on a module induces a bilinear form on its
  exterior powers.
* `LinearMap.BilinForm.bijective_exteriorPower`: if a module carries a bijective bilinear form,
  the induced bilinear forms on its exterior powers is also bijective.

-/


namespace GRWTSK.Algebra.LinearAlgebra.ExteriorPower.Variant518b7676b9e0f9d90fcac9af8564b5d7bf8b14dfc45f24c894bb1976e15ed407

noncomputable section

namespace LinearMap.BilinForm

open Function exteriorPower

variable {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M]
  (B : LinearMap.BilinForm R M) (n : ℕ)

/-- A bilinear form on `M` induces a bilinear form on each exterior power. -/
public protected def exteriorPower : LinearMap.BilinForm R (⋀[R]^n M) :=
  (pairingDual R M n).comp (map n B)

@[simp] lemma bilinForm_ιMulti_ιMulti (v w : Fin n → M) :
    B.exteriorPower n (ιMulti R n v) (ιMulti R n w) = (Matrix.of fun i j ↦ B (v j) (w i)).det := by
  simp [LinearMap.BilinForm.exteriorPower]

public lemma bijective_exteriorPower [Module.Free R M] [Module.Finite R M] (hB : Bijective B) :
    Bijective (B.exteriorPower n) := by
  refine (bijective_pairingDual R M n).comp ⟨?_, ?_⟩
  · exact exteriorPower.map_injective (LinearEquiv.ofBijective _ hB).symm (by ext; simp)
  · exact exteriorPower.map_surjective hB.surjective

end LinearMap.BilinForm
```
