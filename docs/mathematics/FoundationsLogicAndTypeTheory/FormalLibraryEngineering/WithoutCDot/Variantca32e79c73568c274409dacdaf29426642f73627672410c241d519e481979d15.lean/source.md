# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithoutCDot.Variantca32e79c73568c274409dacdaf29426642f73627672410c241d519e481979d15

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab67358f7cb847f2a339a08d2eca2b70ce5ae8dc` · SHA-256 `a83a9f9904c9fe172ea04bb66f4f45e1956511e2e09f11998de383177f02c113`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithoutCDotContents.Variant80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.WithoutCDotContents.Variant80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/WithoutCDot.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Lean.Elab.SyntheticMVars
import Mathlib.Init

/-!
# The `without_cdot()` elaborator
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WithoutCDotContents.Variant80ab1d0da009fc64eb94462e7e1c4a107f3013af7bc7ff820cae7f6f55bae265

namespace Lean.Elab.Term

open Parser

private def withoutCDotContents : Parser :=
  withoutPosition <|
    withoutForbidden (termParser >> optional (" :" >> optional (ppSpace >> termParser)))

/-- A set of parentheses, supporting type ascriptions, which does not process `·`.

Primarily, this is useful when quoting user-provided syntax inside parentheses, as it prevents `·`s
from the caller being interpreted in the context of `()`s from the macro. -/
@[term_parser]
def withoutCDot := leading_parser
  "without_cdot(" >> withoutCDotContents >> ")"

/-- Implementation detail of `withoutCDot` -/
@[term_parser]
def withoutCDotImpl := leading_parser
  "without_cdot_impl(" >> withoutCDotContents >> ")"

-- The `no_implicit_lambda%`s here are to emulate the behavior of `blockImplicitLambda`
macro_rules
  | `(without_cdot($e :)) => `(no_implicit_lambda% without_cdot_impl($e :))
  | `(without_cdot($e : $ty)) => `(no_implicit_lambda% without_cdot_impl($e : $ty))
  | `(without_cdot($e)) => `(without_cdot_impl($e))

@[term_elab withoutCDotImpl, inherit_doc withoutCDot]
def elabWithoutCDot : TermElab
  -- copied from `elabTypeAscription`
  | `(without_cdot_impl($e : $type)), _ => do
    let type ← withSynthesize (postpone := .yes) <| elabType type
    let e ← elabTerm e type
    ensureHasType type e
  | `(without_cdot_impl($e :)), expectedType? => do
    let e ← withSynthesize (postpone := .no) <| elabTerm e none
    ensureHasType expectedType? e
  | `(without_cdot_impl($e)), expectedType? => do
    elabTerm e expectedType?
  | _, _ => throwUnsupportedSyntax

end Lean.Elab.Term
```
