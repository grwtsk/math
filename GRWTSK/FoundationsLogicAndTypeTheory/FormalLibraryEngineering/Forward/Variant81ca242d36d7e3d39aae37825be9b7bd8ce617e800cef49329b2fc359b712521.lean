-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForwardRulePriority.Varianteb5613bd7d585643c601847f985613f4e54fc6719dbf010f858f4bee8f80c29d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eb5613bd7d585643c601847f985613f4e54fc6719dbf010f858f4bee8f80c29d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ForwardRulePriority.Varianteb5613bd7d585643c601847f985613f4e54fc6719dbf010f858f4bee8f80c29d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"eb5613bd7d585643c601847f985613f4e54fc6719dbf010f858f4bee8f80c29d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Rule/Forward.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Xavier Généreux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Xavier Généreux, Jannis Limperg
-/
module

public import Aesop.Forward.RuleInfo
public import Aesop.Percent
public import Aesop.RuleTac.RuleTerm


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForwardRulePriority.Varianteb5613bd7d585643c601847f985613f4e54fc6719dbf010f858f4bee8f80c29d

public section

set_option linter.missingDocs true

open Lean Lean.Meta

namespace Aesop

/-- The priority of a forward rule. -/
inductive ForwardRulePriority : Type where
  /-- If the rule is a norm or safe rule, its priority is an integer. -/
  | normSafe (n : Int) : ForwardRulePriority
  /-- If the rule is an unsafe rule, its priority is a percentage representing
  the rule's success probability. -/
  | «unsafe» (p : Percent) : ForwardRulePriority
  deriving Inhabited, BEq

namespace ForwardRulePriority

/-- If a `ForwardRulePriority` contains a penalty, extract it. -/
def penalty? : ForwardRulePriority → Option Int
  | .normSafe n => some n
  | .unsafe .. => none

/-- If a `ForwardRulePriority` contains a success probability, extract it. -/
def successProbability? : ForwardRulePriority → Option Percent
  | .unsafe p => some p
  | .normSafe .. => none

/-- Compare two rule priorities. Less means higher priority ('better').
Norm/safe rules have higher priority than unsafe rules. Among norm/safe rules,
lower penalty is better. Among unsafe rules, higher percentage is better. -/
protected def compare : (p₁ p₂ : ForwardRulePriority) → Ordering
  | .normSafe .., .unsafe .. => .lt
  | .unsafe .., .normSafe .. => .gt
  | .normSafe n₁, .normSafe n₂ => compare n₁ n₂
  | .unsafe p₁, .unsafe p₂ => compare p₁ p₂ |>.swap

instance : Ord ForwardRulePriority :=
  ⟨ForwardRulePriority.compare⟩

instance : ToString ForwardRulePriority where
  toString
    | .normSafe n => toString n
    | .unsafe p => p.toHumanString

end ForwardRulePriority

/-- A forward rule. -/
structure ForwardRule extends ForwardRuleInfo where
  /-- The rule's name. Should be unique among all rules in a rule set. -/
  name : RuleName
  /-- The theorem from which this rule is derived. -/
  term : RuleTerm
  /-- The rule's priority. -/
  prio : ForwardRulePriority
  deriving Inhabited

namespace ForwardRule

instance : BEq ForwardRule :=
  ⟨λ r₁ r₂ => r₁.name == r₂.name⟩

instance : Hashable ForwardRule :=
  ⟨λ r => hash r.name⟩

instance : Ord ForwardRule :=
  ⟨λ r₁ r₂ => compare r₁.prio r₂.prio |>.then (compare r₁.name r₂.name)⟩

instance : ToString ForwardRule where
  toString r := s!"[{r.prio}] {r.name}"

/-- Is this rule a `destruct` rule (i.e., should we clear matched hyps)? -/
def destruct (r : ForwardRule) : Bool :=
  r.name.builder matches .destruct

end Aesop.ForwardRule
