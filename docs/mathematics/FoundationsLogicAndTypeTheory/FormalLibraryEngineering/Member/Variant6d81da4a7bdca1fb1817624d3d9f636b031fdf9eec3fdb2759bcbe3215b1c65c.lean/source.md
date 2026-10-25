# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Member.Variant6d81da4a7bdca1fb1817624d3d9f636b031fdf9eec3fdb2759bcbe3215b1c65c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc8bf2ca080f8c1242746183434b90c0c520de97` · SHA-256 `b835300fd731d842a10079198dc800f5946a4b4616ce49fd211b77540e2b8501`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseRuleSetMember.Variant0b11f44c4ce0dabb0da8023a17c819806c1969039dd8c2bf7309205dda49b323","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b11f44c4ce0dabb0da8023a17c819806c1969039dd8c2bf7309205dda49b323","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.BaseRuleSetMember.Variant0b11f44c4ce0dabb0da8023a17c819806c1969039dd8c2bf7309205dda49b323","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0b11f44c4ce0dabb0da8023a17c819806c1969039dd8c2bf7309205dda49b323","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/RuleSet/Member.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021-2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Rule


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseRuleSetMember.Variant0b11f44c4ce0dabb0da8023a17c819806c1969039dd8c2bf7309205dda49b323

public section

namespace Aesop

inductive BaseRuleSetMember
  | normRule (r : NormRule)
  | unsafeRule (r : UnsafeRule)
  | safeRule (r : SafeRule)
  | unfoldRule (r : UnfoldRule)
  | normForwardRule (r₁ : ForwardRule) (r₂ : NormRule)
  | unsafeForwardRule (r₁ : ForwardRule) (r₂ : UnsafeRule)
  | safeForwardRule (r₁ : ForwardRule) (r₂ : SafeRule)
  deriving Inhabited

def BaseRuleSetMember.name : BaseRuleSetMember → RuleName
  | normRule r => r.name
  | unsafeRule r => r.name
  | safeRule r => r.name
  | unfoldRule r => r.name
  | normForwardRule r _ => r.name
  | unsafeForwardRule r _ => r.name
  | safeForwardRule r _ => r.name

inductive GlobalRuleSetMember
  | base (m : BaseRuleSetMember)
  | normSimpRule (e : NormSimpRule)
  deriving Inhabited

def GlobalRuleSetMember.name : GlobalRuleSetMember → RuleName
  | base m => m.name
  | normSimpRule r => r.name

inductive LocalRuleSetMember
  | global (m : GlobalRuleSetMember)
  | localNormSimpRule (r : LocalNormSimpRule)
  deriving Inhabited

def LocalRuleSetMember.name : LocalRuleSetMember → RuleName
  | global m => m.name
  | localNormSimpRule r => r.name

def LocalRuleSetMember.toGlobalRuleSetMember? :
    LocalRuleSetMember → Option GlobalRuleSetMember
  | global m => some m
  | _ => none

end Aesop
```
