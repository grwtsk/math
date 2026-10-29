-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleBuilderOptions.Variant2aa56bbaa5bbf72b10a8d9c18d34a27acca3bebd9bd4c661e5b783715f5642f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2aa56bbaa5bbf72b10a8d9c18d34a27acca3bebd9bd4c661e5b783715f5642f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RuleBuilderOptions.Variant2aa56bbaa5bbf72b10a8d9c18d34a27acca3bebd9bd4c661e5b783715f5642f0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2aa56bbaa5bbf72b10a8d9c18d34a27acca3bebd9bd4c661e5b783715f5642f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Builder/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.RuleSet.Member
public import Aesop.RuleTac.ElabRuleTerm


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleBuilderOptions.Variant2aa56bbaa5bbf72b10a8d9c18d34a27acca3bebd9bd4c661e5b783715f5642f0

public section

open Lean Lean.Meta Lean.Elab.Term

namespace Aesop

/--
Options for the builders. Most options are only relevant for certain builders.
-/
structure RuleBuilderOptions where
  immediatePremises? : Option (Array Name)
  indexingMode? : Option IndexingMode
  casesPatterns? : Option (Array CasesPattern)
  pattern? : Option Term
  /-- The transparency used by the rule tactic. -/
  transparency? : Option TransparencyMode
  /-- The transparency used for indexing the rule. Currently, the rule is not
  indexed unless this is `.reducible`. -/
  indexTransparency? : Option TransparencyMode
  deriving Inhabited

namespace RuleBuilderOptions

protected def default : RuleBuilderOptions :=
  ⟨none, none, none, none, none, none⟩

instance : EmptyCollection RuleBuilderOptions :=
  ⟨.default⟩

end RuleBuilderOptions

structure CoreRuleBuilderOutput where
  ruleExprName : Name
  builderName : BuilderName
  scopeName : ScopeName
  tac : RuleTacDescr
  indexingMode : IndexingMode
  pattern? : Option RulePattern

inductive PhaseSpec
  | safe (info : SafeRuleInfo)
  | norm (info : NormRuleInfo)
  | «unsafe» (info : UnsafeRuleInfo)
  deriving Inhabited

namespace PhaseSpec

def phase : PhaseSpec → PhaseName
  | safe .. => .safe
  | «unsafe» .. => .unsafe
  | norm .. => .norm

def toRule (phase : PhaseSpec) (ruleExprName : Name) (builder : BuilderName)
    (scope : ScopeName) (tac : RuleTacDescr) (indexingMode : IndexingMode)
    (pattern? : Option RulePattern) : BaseRuleSetMember :=
  let name := {
    name := ruleExprName
    phase := phase.phase
    builder, scope
  }
  match phase with
  | .safe info => .safeRule {
      extra := info
      name, indexingMode, pattern?, tac
    }
  | .unsafe info => .unsafeRule {
      extra := info
      name, indexingMode, pattern?, tac
    }
  | .norm info => .normRule {
      extra := info
      name, indexingMode, pattern?, tac
    }

end PhaseSpec


structure RuleBuilderInput where
  term : Term
  options : RuleBuilderOptions
  phase : PhaseSpec
  deriving Inhabited

namespace RuleBuilderInput

def phaseName (input : RuleBuilderInput) : PhaseName :=
  input.phase.phase

end RuleBuilderInput


abbrev RuleBuilder := RuleBuilderInput → ElabM LocalRuleSetMember


def elabGlobalRuleIdent (builderName : BuilderName) (term : Term) :
    TermElabM Name := do
  if let some decl ← elabGlobalRuleIdent? term then
    return decl
  else
    throwError "aesop: {builderName} builder: expected '{term}' to be an unambiguous global constant"

def elabInductiveRuleIdent (builderName : BuilderName) (term : Term) (md : TransparencyMode) :
    TermElabM (Name × InductiveVal) := do
  if let some info ← elabInductiveRuleIdent? term md then
    return info
  else
    throwError "aesop: {builderName} builder: expected '{term}' to be an inductive type or structure (or to reduce to one at the given transparency)"

end Aesop
