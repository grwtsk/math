# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant2aa56bbaa5bbf72b10a8d9c18d34a27acca3bebd9bd4c661e5b783715f5642f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ed3b9219b0c9c0e407eeea9a52aeb0d1973e687` · SHA-256 `2aa56bbaa5bbf72b10a8d9c18d34a27acca3bebd9bd4c661e5b783715f5642f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.RuleSet.Member
public import Aesop.RuleTac.ElabRuleTerm

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
```
