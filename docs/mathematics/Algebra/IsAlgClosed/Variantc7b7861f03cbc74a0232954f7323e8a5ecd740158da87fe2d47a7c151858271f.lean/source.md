# Complete source: GRWTSK.Algebra.IsAlgClosed.Variantc7b7861f03cbc74a0232954f7323e8a5ecd740158da87fe2d47a7c151858271f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30c3e8d7c40b6f323a0eb59a6b3137275cedc1c3` · SHA-256 `a5e008e707c3bcc59b227b9b17c52abe3d474eb6553db1b970b8436fc5e6ccde`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IsSimpleRingExistsAlgEquivMatrixOfIsAlgClosed.Variant5286043ef554f614099943df75ee6c53ac2cad1f182dab4a35b8f505fe2d61d1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5286043ef554f614099943df75ee6c53ac2cad1f182dab4a35b8f505fe2d61d1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IsSimpleRingExistsAlgEquivMatrixOfIsAlgClosed.Variant5286043ef554f614099943df75ee6c53ac2cad1f182dab4a35b8f505fe2d61d1","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"5286043ef554f614099943df75ee6c53ac2cad1f182dab4a35b8f505fe2d61d1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/SimpleModule/IsAlgClosed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
import Mathlib.FieldTheory.IsAlgClosed.Basic
import Mathlib.RingTheory.SimpleModule.WedderburnArtin

/-!
# Wedderburn-Artin Theorem over an algebraically closed field
-/


namespace GRWTSK.Algebra.IsSimpleRingExistsAlgEquivMatrixOfIsAlgClosed.Variant5286043ef554f614099943df75ee6c53ac2cad1f182dab4a35b8f505fe2d61d1

theorem IsSimpleRing.exists_algEquiv_matrix_of_isAlgClosed (F R) [Field F] [IsAlgClosed F]
    [Ring R] [IsSimpleRing R] [Algebra F R] [FiniteDimensional F R] :
    ∃ (n : ℕ) (_ : NeZero n), Nonempty (R ≃ₐ[F] Matrix (Fin n) (Fin n) F) :=
  have := IsArtinianRing.of_finite F R
  have ⟨n, hn, D, _, _, _, ⟨e⟩⟩ := exists_algEquiv_matrix_divisionRing_finite F R
  ⟨n, hn, ⟨e.trans <| .mapMatrix <| .symm <| .ofBijective (Algebra.ofId F D)
    IsAlgClosed.algebraMap_bijective_of_isIntegral⟩⟩
```
