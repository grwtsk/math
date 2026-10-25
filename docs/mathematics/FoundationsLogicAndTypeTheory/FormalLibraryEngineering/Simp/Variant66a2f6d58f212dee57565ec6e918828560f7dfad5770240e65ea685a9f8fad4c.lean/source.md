# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Variant66a2f6d58f212dee57565ec6e918828560f7dfad5770240e65ea685a9f8fad4c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6170103ab1ca5b564f2727c75efb6546a42b3e2` · SHA-256 `e8670ccfd33adc69a1f46cef7b04731958719d645bc04d20ac3b2b6d46f4ee02`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MethodsDischargeQ.Variant2154f99a3dd246a860bcb847cfe423dffcb043054971a89fd08cdc26e8b44023","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2154f99a3dd246a860bcb847cfe423dffcb043054971a89fd08cdc26e8b44023","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MethodsDischargeQ.Variant2154f99a3dd246a860bcb847cfe423dffcb043054971a89fd08cdc26e8b44023","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2154f99a3dd246a860bcb847cfe423dffcb043054971a89fd08cdc26e8b44023","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Util/Simp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Paul Lezeau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Lezeau
-/
import Lean.Meta.Tactic.Simp.Types
import Mathlib.Init
import Qq

/-! # Additional simp utilities

This file adds additional tools for metaprogramming with the `simp` tactic

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MethodsDischargeQ.Variant2154f99a3dd246a860bcb847cfe423dffcb043054971a89fd08cdc26e8b44023

open Lean Meta Qq

namespace Lean.Meta.Simp

/-- `Qq` version of `Lean.Meta.Simp.Methods.discharge?`, which avoids having to use `~q` matching
on the proof expression returned by `discharge?`

`dischargeQ? (a : Q(Prop))` attempts to prove `a` using the discharger, returning
`some (pf : Q(a))` if a proof is found and `none` otherwise. -/
@[inline]
def Methods.dischargeQ? (M : Methods) (a : Q(Prop)) : SimpM <| Option Q($a) := M.discharge? a

end Lean.Meta.Simp
```
