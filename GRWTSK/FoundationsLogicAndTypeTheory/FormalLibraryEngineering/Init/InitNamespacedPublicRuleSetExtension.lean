-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclaredRuleSets.Varianteebb1c6f6ed50edda3817e580e456b158d943acc8aa39754d1073fc16c98352c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eebb1c6f6ed50edda3817e580e456b158d943acc8aa39754d1073fc16c98352c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DeclaredRuleSets.Varianteebb1c6f6ed50edda3817e580e456b158d943acc8aa39754d1073fc16c98352c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"eebb1c6f6ed50edda3817e580e456b158d943acc8aa39754d1073fc16c98352c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Frontend/Extension/Init.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.RuleSet


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeclaredRuleSets.Varianteebb1c6f6ed50edda3817e580e456b158d943acc8aa39754d1073fc16c98352c

public section

open Lean

namespace Aesop

/--
An environment extension containing an Aesop rule set. Each rule set has its
own extension.
-/
abbrev RuleSetExtension :=
  SimpleScopedEnvExtension BaseRuleSetMember BaseRuleSet

/--
Structure containing information about all declared Aesop rule sets.
-/
structure DeclaredRuleSets where
  /--
  The collection of declared rule sets. Each rule set has an extension, the
  name of the associated `SimpExtension` and the name of the associated
  `SimprocExtension`. The two simp extensions are expected to be declared.
  -/
  ruleSets : Std.HashMap RuleSetName (RuleSetExtension × Name × Name)
  /--
  The set of Aesop rule sets that are enabled by default.
  -/
  defaultRuleSets : Std.HashSet RuleSetName
  deriving Inhabited

instance : EmptyCollection DeclaredRuleSets :=
  ⟨∅, ∅⟩

initialize declaredRuleSetsRef : IO.Ref DeclaredRuleSets ←
  IO.mkRef ∅

def getDeclaredRuleSets : IO (Std.HashMap RuleSetName (RuleSetExtension × Name × Name)) :=
  return (← declaredRuleSetsRef.get).ruleSets

def getDefaultRuleSetNames : IO (Std.HashSet Name) :=
  return (← declaredRuleSetsRef.get).defaultRuleSets

end Aesop
