# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Testable.Variant8dd2fa46c03e631020b225433b1e57aecbb5198e900745da9f7d501e5c44cf4a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `288deb1f409a1b03b62410aa5a75c8fa2e12f94d` · SHA-256 `3e40a9d59d9a360c074e09964ba2a1b65c6026a6cad3931b2571079bffbf48d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Testable.Variantff40220cf6b1b40b6ed5dbba27880516508da4d80772670c5b66028d1b900e77","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ff40220cf6b1b40b6ed5dbba27880516508da4d80772670c5b66028d1b900e77","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Testable.Variantff40220cf6b1b40b6ed5dbba27880516508da4d80772670c5b66028d1b900e77","mathematical_subject":"Logic.Foundations","original_sha256":"ff40220cf6b1b40b6ed5dbba27880516508da4d80772670c5b66028d1b900e77","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Testing/Plausible/Testable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Henrik Böving. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving, Simon Hudon
-/
import Plausible.Testable
import Mathlib.Logic.Basic

/-!
This module contains `Plausible.Testable` and `Plausible.PrintableProb` instances for mathlib types.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Testable.Variantff40220cf6b1b40b6ed5dbba27880516508da4d80772670c5b66028d1b900e77

namespace Plausible

namespace Testable

open TestResult

instance factTestable {p : Prop} [Testable p] : Testable (Fact p) where
  run cfg min := do
    let h ← runProp p cfg min
    pure <| iff fact_iff h

end Testable

section PrintableProp

instance Fact.printableProp {p : Prop} [PrintableProp p] : PrintableProp (Fact p) where
  printProp := printProp p

end PrintableProp

end Plausible
```
