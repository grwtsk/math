# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Default.Variant7587041857101f28f6d73a520dcfbb1085984aeb65a2408c42b851ba90505f15

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06f0617c1c0c21b0ddf5ff55c3816f79398ba17f` · SHA-256 `4fa3f9a43c3266b30fa1062e697b9df2bf2ff050b230c0486313c182d77a044b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleBuilderDefault.Variantcc901da10482780df7ff8b9e4eb7d529d16116ff2031298819d52595a5019a98","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cc901da10482780df7ff8b9e4eb7d529d16116ff2031298819d52595a5019a98","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RuleBuilderDefault.Variantcc901da10482780df7ff8b9e4eb7d529d16116ff2031298819d52595a5019a98","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"cc901da10482780df7ff8b9e4eb7d529d16116ff2031298819d52595a5019a98","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Builder/Default.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Builder.Constructors
public import Aesop.Builder.NormSimp
public import Aesop.Builder.Tactic
public import Aesop.Builder.Apply


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleBuilderDefault.Variantcc901da10482780df7ff8b9e4eb7d529d16116ff2031298819d52595a5019a98

public section

open Lean
open Lean.Meta

namespace Aesop

-- TODO In the default builders below, we should distinguish between fatal and
-- nonfatal errors. E.g. if the `tactic` builder finds a declaration that is not
-- of tactic type, this is a nonfatal error and we should continue with the next
-- builder. But if the simp builder finds an equation that cannot be interpreted
-- as a simp lemma for some reason, this is a fatal error. Continuing with the
-- next builder is more confusing than anything because the user probably
-- intended to add a simp lemma.

def RuleBuilder.default : RuleBuilder := λ input =>
  match input.phase.phase with
  | .safe =>
    constructors input <|>
    tactic input <|>
    apply input <|>
    err "a safe" input
  | .unsafe =>
    constructors input <|>
    tactic input <|>
    apply input <|>
    err "an unsafe" input
  | .norm =>
    constructors input <|>
    tactic input <|>
    simp input <|>
    apply input <|>
    err "a norm" input
where
  err (ruleType : String) : RuleBuilder := λ input =>
    throwError m!"aesop: Unable to interpret '{input.term}' as {ruleType} rule. Try specifying a builder."

end Aesop
```
