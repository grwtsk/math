# Complete source: GRWTSK.Algebra.UniversalAlgebra.AddChar.Variant4d3d8ad6534280859c43c9ca2f49d21f34606db438ed3d515fc7ff0bf02ec800

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce77d35e4dac7010110a39754da68050d606f61f` · SHA-256 `ae075e85a137eb0c04f54b8b1371718a6840d40f66b4a580af61aae4ef99b14b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.DirectSum.Variantca6fa42bf393a8d1a81ae38aa95348c63309dbfdeddaecc940974caac0958a11","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca6fa42bf393a8d1a81ae38aa95348c63309dbfdeddaecc940974caac0958a11","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.DirectSum.Variantca6fa42bf393a8d1a81ae38aa95348c63309dbfdeddaecc940974caac0958a11","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"ca6fa42bf393a8d1a81ae38aa95348c63309dbfdeddaecc940974caac0958a11","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/DirectSum/AddChar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.DirectSum.Basic
import Mathlib.Algebra.Group.AddChar

/-!
# Direct sum of additive characters

This file defines the direct sum of additive characters.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.DirectSum.Variantca6fa42bf393a8d1a81ae38aa95348c63309dbfdeddaecc940974caac0958a11

open Function
open scoped DirectSum

variable {ι R : Type*} {G : ι → Type*} [DecidableEq ι] [∀ i, AddCommGroup (G i)] [CommMonoid R]

namespace AddChar
section DirectSum

/-- Direct sum of additive characters. -/
@[simps!]
def directSum (ψ : ∀ i, AddChar (G i) R) : AddChar (⨁ i, G i) R :=
  toAddMonoidHomEquiv.symm <| DirectSum.toAddMonoid fun i ↦ toAddMonoidHomEquiv (ψ i)

lemma directSum_injective :
    Injective (directSum : (∀ i, AddChar (G i) R) → AddChar (⨁ i, G i) R) := by
  refine toAddMonoidHomEquiv.symm.injective.comp <| DirectSum.toAddMonoid_injective.comp ?_
  rintro ψ χ h
  simpa [funext_iff] using h

end DirectSum
end AddChar
```
