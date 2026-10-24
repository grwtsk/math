# Complete source: GRWTSK.Algebra.UniversalAlgebra.CompleteField.Variant3b387eb7fedcbec3c45264942833d48c49594572ad343a6d72996b828ae66042

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c4f3b7574948644c501c7b91313e33d4a7669b4` · SHA-256 `65316b4dd62be4086ffca7d452b372d62fd598202dfbad2b8dd8e47236779302`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.CompleteField.Variant21d402d9880f27eae0d0bab375dbae740d8dc64846387c51a3df4b45d4e78a93","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"21d402d9880f27eae0d0bab375dbae740d8dc64846387c51a3df4b45d4e78a93","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.CompleteField.Variant21d402d9880f27eae0d0bab375dbae740d8dc64846387c51a3df4b45d4e78a93","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"21d402d9880f27eae0d0bab375dbae740d8dc64846387c51a3df4b45d4e78a93","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Real/CompleteField.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Alex J. Best. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best
-/
import Mathlib.Algebra.Order.CompleteField
import Mathlib.Data.Real.Sqrt

/-!
# The reals are a conditionally complete linearly ordered field
-/


namespace GRWTSK.Algebra.UniversalAlgebra.CompleteField.Variant21d402d9880f27eae0d0bab375dbae740d8dc64846387c51a3df4b45d4e78a93

/-- The reals are a conditionally complete linearly ordered field. -/
noncomputable instance : ConditionallyCompleteLinearOrderedField ℝ := { }

/-- There exists no nontrivial ring homomorphism `ℝ →+* ℝ`. -/
instance Real.RingHom.unique : Unique (ℝ →+* ℝ) where
  default := RingHom.id ℝ
  uniq f := congr_arg OrderRingHom.toRingHom (@Subsingleton.elim (ℝ →+*o ℝ) _
      ⟨f, ringHom_monotone (fun r hr => ⟨√r, sq_sqrt hr⟩) f⟩ default)
```
