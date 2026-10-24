# Complete source: GRWTSK.Algebra.Trace.Variantfe8a5cd8cc26fafe3890da07b44bc06de1aca118098813490b1715886a48ca91

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `629a96b8ef0310077f0940cd9d4ee4908fdd8330` · SHA-256 `68bf912390fec7a0b0760fa5f63176633d60d526ca2fbccae520380307cd0fb4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.TraceToZmodNondegenerate.Variant4954ffc15fe00d61dcd956160f973267ed75d044bec4c544176f0dd5171a3953","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4954ffc15fe00d61dcd956160f973267ed75d044bec4c544176f0dd5171a3953","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.TraceToZmodNondegenerate.Variant4954ffc15fe00d61dcd956160f973267ed75d044bec4c544176f0dd5171a3953","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"4954ffc15fe00d61dcd956160f973267ed75d044bec4c544176f0dd5171a3953","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/FieldTheory/Finite/Trace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Michael Stoll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Stoll
-/
import Mathlib.RingTheory.Trace.Basic
import Mathlib.FieldTheory.Finite.GaloisField

/-!
# The trace map for finite fields

We state the fact that the trace map from a finite field of
characteristic `p` to `ZMod p` is nondegenerate.

## Tags
finite field, trace
-/



namespace GRWTSK.Algebra.TraceToZmodNondegenerate.Variant4954ffc15fe00d61dcd956160f973267ed75d044bec4c544176f0dd5171a3953

namespace FiniteField

/-- The trace map from a finite field to its prime field is nongedenerate. -/
theorem trace_to_zmod_nondegenerate (F : Type*) [Field F] [Finite F]
    [Algebra (ZMod (ringChar F)) F] {a : F} (ha : a ≠ 0) :
    ∃ b : F, Algebra.trace (ZMod (ringChar F)) F (a * b) ≠ 0 := by
  haveI : Fact (ringChar F).Prime := ⟨CharP.char_is_prime F _⟩
  have htr := traceForm_nondegenerate (ZMod (ringChar F)) F a
  simp_rw [Algebra.traceForm_apply] at htr
  by_contra! hf
  exact ha (htr hf)

end FiniteField
```
