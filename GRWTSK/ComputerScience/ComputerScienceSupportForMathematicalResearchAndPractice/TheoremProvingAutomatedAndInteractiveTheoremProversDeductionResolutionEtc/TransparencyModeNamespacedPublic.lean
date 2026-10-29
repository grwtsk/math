-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hash.Variante26c8d01b9182e126bbdf01134e327aa85446219694aeeb61ad6161696cc9b69","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e26c8d01b9182e126bbdf01134e327aa85446219694aeeb61ad6161696cc9b69","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Hash.Variante26c8d01b9182e126bbdf01134e327aa85446219694aeeb61ad6161696cc9b69","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e26c8d01b9182e126bbdf01134e327aa85446219694aeeb61ad6161696cc9b69","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/TransparencyMode.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.UInt.Basic
public import Init.MetaTypes


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hash.Variante26c8d01b9182e126bbdf01134e327aa85446219694aeeb61ad6161696cc9b69

public section
namespace Lean.Meta

namespace TransparencyMode

def hash : TransparencyMode → UInt64
  | all       => 7
  | default   => 11
  | reducible => 13
  | instances => 17
  | implicit  => 23
  | none      => 19

instance : Hashable TransparencyMode := ⟨hash⟩

protected def toString : TransparencyMode → String
  | all       => "all"
  | default   => "default"
  | reducible => "reducible"
  | instances => "instances"
  | implicit  => "implicit"
  | none      => "none"

instance : ToString TransparencyMode := ⟨TransparencyMode.toString⟩

def lt : TransparencyMode → TransparencyMode → Bool
  | _,         none      => false
  | none,      _         => true
  | _,         reducible => false
  | reducible, _         => true
  | _,         instances => false
  | instances, _         => true
  | _,         implicit  => false
  | implicit,  _         => true
  | default,   all       => true
  | _,         _         => false

end TransparencyMode

example (a b c : TransparencyMode) : a.lt b → b.lt c → a.lt c := by
  cases a <;> cases b <;> cases c <;> simp [TransparencyMode.lt]

example (a : TransparencyMode) : ¬ a.lt a := by
  cases a <;> simp [TransparencyMode.lt]

example (a b : TransparencyMode) : a.lt b → ¬ b.lt a := by
  cases a <;> cases b <;> simp [TransparencyMode.lt]

example : TransparencyMode.lt .none .reducible := rfl
example : TransparencyMode.lt .reducible .instances := rfl
example : TransparencyMode.lt .instances .implicit := rfl
example : TransparencyMode.lt .implicit .default := rfl
example : TransparencyMode.lt .default .all := rfl

end Lean.Meta
