# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PPOptions.Variant579fddf88c11d245b2a213fa473bdea88ca729193f2372b02b57708f80ddf5ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf2650b3ab580eca988c3c1d2f8ad17b44c0e5ec` · SHA-256 `732545a04b3df4206e2609bbced265c6347196527692950754027bc9c1900089`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetPPBinderPredicates.Variantb4153e9adc7435e1ba941ecefc6bf4379b8f40277b8a5a490c299546384aba5e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b4153e9adc7435e1ba941ecefc6bf4379b8f40277b8a5a490c299546384aba5e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.GetPPBinderPredicates.Variantb4153e9adc7435e1ba941ecefc6bf4379b8f40277b8a5a490c299546384aba5e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"b4153e9adc7435e1ba941ecefc6bf4379b8f40277b8a5a490c299546384aba5e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Util/PPOptions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Init

/-!
Mathlib-specific pretty printer options.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetPPBinderPredicates.Variantb4153e9adc7435e1ba941ecefc6bf4379b8f40277b8a5a490c299546384aba5e

namespace Mathlib

open Lean

/--
The `pp.mathlib.binderPredicates` option is used to control whether mathlib pretty printers
should use binder predicate notation (such as `∀ x < 2, p x`).
-/
register_option pp.mathlib.binderPredicates : Bool := {
  defValue := true
  group    := "pp"
  descr    := "(pretty printer) pretty prints binders such as \
    `∀ (x : α) (x < 2), p x` as `∀ x < 2, p x`"
}

/-- Gets whether `pp.mathlib.binderPredicates` is enabled. -/
def getPPBinderPredicates (o : Options) : Bool :=
  o.get pp.mathlib.binderPredicates.name (!getPPAll o)

end Mathlib
```
