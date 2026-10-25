# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AddRulesCommand.Variant77d8fa0447d69fb78c8b1a82dac6a47da71cfea646b973ef082eda5b8e6aea61

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61a85f44d12b4295347bd5c0674910a4689f8494` · SHA-256 `0d00df380ea389f369648c6d22410d46b08decccaaf16c278d711abdc824d9fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TT.Variante1076680cc3446cbf872eda721d1061f7c543169996787a2f1113b3fa63faa92","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e1076680cc3446cbf872eda721d1061f7c543169996787a2f1113b3fa63faa92","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TT.Variante1076680cc3446cbf872eda721d1061f7c543169996787a2f1113b3fa63faa92","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e1076680cc3446cbf872eda721d1061f7c543169996787a2f1113b3fa63faa92","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/AddRulesCommand.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TT.Variante1076680cc3446cbf872eda721d1061f7c543169996787a2f1113b3fa63faa92

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

-- Basic examples

structure TT₁ where

/-- error: Tactic `aesop` failed, made no progress -/
#guard_msgs in
example : TT₁ := by
  aesop

add_aesop_rules safe TT₁

example : TT₁ := by
  aesop

-- Local rules

structure TT₂ where

namespace Test

local add_aesop_rules safe TT₂

example : TT₂ := by
  aesop

end Test

/-- error: Tactic `aesop` failed, made no progress -/
#guard_msgs in
example : TT₂ := by
  aesop

-- Scoped rules

structure TT₃ where

namespace Test

scoped add_aesop_rules safe TT₃

example : TT₃ := by
  aesop

end Test

/-- error: Tactic `aesop` failed, made no progress -/
#guard_msgs in
example : TT₃ := by
  aesop

def Test.example : TT₃ := by
  aesop

-- Tactics

structure TT₄ where

/-- error: Tactic `aesop` failed, made no progress -/
#guard_msgs in
example : TT₄ := by
  aesop

add_aesop_rules safe (by exact TT₄.mk)

example : TT₄ := by
  aesop

-- Multiple rules

axiom T : Type
axiom U : Type
axiom f : T → U
axiom t : T

/-- error: Tactic `aesop` failed, made no progress -/
#guard_msgs in
example : U := by
  aesop

add_aesop_rules safe [(by apply f), t]

noncomputable example : U := by
  aesop
```
