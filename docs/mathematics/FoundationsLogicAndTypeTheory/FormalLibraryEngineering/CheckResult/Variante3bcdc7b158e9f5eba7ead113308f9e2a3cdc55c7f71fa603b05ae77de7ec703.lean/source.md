# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckResult.Variante3bcdc7b158e9f5eba7ead113308f9e2a3cdc55c7f71fa603b05ae77de7ec703

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6383f0395cb8a89cdbdad090d29088bccb9d7f99` · SHA-256 `34828a05f2db5749041deb566f152aec1a600a81a93b2002553545772565a6f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckResult.Variantdd0470ed4acb4a44d9721da6ff85054d0d2ebf1c74b2dfb0f78ea88332b48fa2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd0470ed4acb4a44d9721da6ff85054d0d2ebf1c74b2dfb0f78ea88332b48fa2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CheckResult.Variantdd0470ed4acb4a44d9721da6ff85054d0d2ebf1c74b2dfb0f78ea88332b48fa2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dd0470ed4acb4a44d9721da6ff85054d0d2ebf1c74b2dfb0f78ea88332b48fa2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/CheckResult.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Data.Repr
meta import Init.MetaTypes  -- shake: keep (dependency of `simp +decide`, fix)

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckResult.Variantdd0470ed4acb4a44d9721da6ff85054d0d2ebf1c74b2dfb0f78ea88332b48fa2

public section
namespace Lean.Meta.Grind
/--
Result type for satisfiability checking procedures.
-/
inductive CheckResult where
  | /-- No progress -/
    none
  | /-- Updated basis, simplified equations. -/
    progress
  | /-- Propagated equations back to the core. -/
    propagated
  | /-- Closed the goal. -/
    closed
  deriving BEq, Inhabited, Repr

def CheckResult.lt (r₁ r₂ : CheckResult) : Bool :=
  match r₁, r₂ with
  | _,          .none        => false
  | .none,       _           => true
  | _,           .progress   => false
  | .progress,   _           => true
  | _,           .propagated => false
  | .propagated, _           => true
  | .closed,     .closed     => false

def CheckResult.le (r₁ r₂ : CheckResult) : Bool :=
  r₁ == r₂ || r₁.lt r₂

/--
Joins two results. It uses the order `.none < .progress < .propagated < .closed`
-/
def CheckResult.join (r₁ r₂ : CheckResult) : CheckResult :=
  match r₁, r₂ with
  | .none,       _           => r₂
  | _,           .none       => r₁
  | .progress,   _           => r₂
  | _,           .progress   => r₁
  | .propagated, _           => r₂
  | _,           .propagated => r₁
  | .closed,     .closed     => .closed

/-! Sanity check theorems -/
section
open CheckResult
example : lt .none .progress := rfl
example : lt .progress .propagated := rfl
example : lt .propagated .closed := rfl
example {x} : lt x x = false := by cases x <;> rfl
example {x y z} : lt x y → lt y z → lt x z := by cases x <;> cases y <;> cases z <;> decide
example {x y z} : le x y → le y z → le x z := by cases x <;> cases y <;> cases z <;> decide
example {x y} : le x y ↔ x = y ∨ lt x y := by cases x <;> cases y <;> simp +decide
example {x} : le x x := by cases x <;> rfl
example {x y} : le x y → le y x → x = y := by cases x <;> cases y <;> simp +decide
example {x y} : le x (join x y) := by cases x <;> cases y <;> rfl
example {y x} : le y (join x y) := by cases x <;> cases y <;> rfl
example {x} : join x x = x := by cases x <;> rfl
end

end Lean.Meta.Grind
```
