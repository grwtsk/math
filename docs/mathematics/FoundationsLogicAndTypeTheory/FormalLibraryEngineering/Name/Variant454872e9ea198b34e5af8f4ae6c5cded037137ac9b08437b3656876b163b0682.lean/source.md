# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Name.Variant454872e9ea198b34e5af8f4ae6c5cded037137ac9b08437b3656876b163b0682

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55a2f09b4533f1ad61841b0f5175fd8461d6646f` · SHA-256 `4c7e52a375db7892f24549ab2c9c9332e39823143edf612474f797b2f864a45f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PhaseName.Variant6dc5bc557fd31bc927c3a0c86379fa37935148db857bc03181cc73e83d3f29b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6dc5bc557fd31bc927c3a0c86379fa37935148db857bc03181cc73e83d3f29b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PhaseName.Variant6dc5bc557fd31bc927c3a0c86379fa37935148db857bc03181cc73e83d3f29b4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6dc5bc557fd31bc927c3a0c86379fa37935148db857bc03181cc73e83d3f29b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Rule/Name.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Meta.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PhaseName.Variant6dc5bc557fd31bc927c3a0c86379fa37935148db857bc03181cc73e83d3f29b4

public section

open Lean
open Lean.Meta

namespace Aesop

inductive PhaseName
  | norm
  | safe
  | «unsafe»
  deriving Inhabited, BEq, Hashable, ToJson
  -- NOTE: Constructors should be listed in alphabetical order for the Ord
  -- instance.

namespace PhaseName

instance : Ord PhaseName where
  compare s₁ s₂ := compare s₁.ctorIdx s₂.ctorIdx

instance : ToString PhaseName where
  toString
    | norm => "norm"
    | safe => "safe"
    | «unsafe» => "unsafe"

end PhaseName


inductive ScopeName
  | global
  | «local»
  deriving Inhabited, BEq, Hashable, ToJson
  -- NOTE: Constructors should be listed in alphabetical order for the Ord
  -- instance.

namespace ScopeName

instance : Ord ScopeName where
  compare s₁ s₂ := compare s₁.ctorIdx s₂.ctorIdx

instance : ToString ScopeName where
  toString
    | global => "global"
    | «local» => "local"

end ScopeName


inductive BuilderName
  | apply
  | cases
  | constructors
  | destruct
  | forward
  | simp
  | tactic
  | unfold
  deriving Inhabited, BEq, Hashable, ToJson
  -- NOTE: Constructors should be listed in alphabetical order for the Ord
  -- instance.

namespace BuilderName

instance : Ord BuilderName where
  compare b₁ b₂ := compare b₁.ctorIdx b₂.ctorIdx

instance : ToString BuilderName where
  toString
    | apply => "apply"
    | cases => "cases"
    | constructors => "constructors"
    | destruct => "destruct"
    | forward => "forward"
    | simp => "simp"
    | tactic => "tactic"
    | unfold => "unfold"

end BuilderName


-- Rules are identified by a `RuleName` throughout Aesop. We assume that rule
-- names are unique within our 'universe', i.e. within the rule sets that we are
-- working with. All data structures should enforce this invariant.
structure RuleName where
  name : Name
  builder : BuilderName
  phase : PhaseName
  scope : ScopeName
  protected hash : UInt64 :=
    mixHash (hash name) $ mixHash (hash builder) $ mixHash (hash phase)
      (hash scope)
  deriving Inhabited

namespace RuleName

instance : Hashable RuleName where
  hash n := n.hash

instance : BEq RuleName where
  beq n₁ n₂ :=
    n₁.hash == n₂.hash && n₁.builder == n₂.builder && n₁.phase == n₂.phase &&
    n₁.scope == n₂.scope && n₁.name == n₂.name

protected def compare : (_ _ : RuleName) → Ordering :=
  compareLex (compareOn (·.builder)) $
  compareLex (compareOn (·.phase)) $
  compareLex (compareOn (·.scope)) $
  (λ n₁ n₂ => n₁.name.cmp n₂.name)

protected def quickCompare (n₁ n₂ : RuleName) : Ordering :=
  match compare n₁.hash n₂.hash with
  | Ordering.eq => n₁.compare n₂
  | ord => ord

instance : Ord RuleName :=
  ⟨RuleName.compare⟩

instance : ToString RuleName where
  toString n := s!"{n.phase}|{n.builder}|{n.scope}|{n.name}"

private structure Json where
  name : Name
  builder : BuilderName
  phase : PhaseName
  scope : ScopeName
  rendered : String
  deriving ToJson

instance : ToJson RuleName where
  toJson n := private toJson { n with rendered := toString n : RuleName.Json }

end RuleName

def getRuleNameForExpr : Expr → MetaM Name
  | .const decl _ => return decl
  | .fvar fvarId => return (← fvarId.getDecl).userName
  | _ => mkFreshId


inductive DisplayRuleName
  | ruleName (n : RuleName)
  | normSimp
  | normUnfold
  deriving Inhabited, BEq, Ord, Hashable

namespace DisplayRuleName

instance : Coe RuleName DisplayRuleName :=
  ⟨DisplayRuleName.ruleName⟩

instance : ToString DisplayRuleName where
  toString
    | ruleName n => toString n
    | normSimp => "<norm simp>"
    | normUnfold => "<norm unfold>"

private def toJsonRuleName : DisplayRuleName → RuleName
  | .ruleName n => n
  | .normSimp => { name := `simp, builder := .simp, phase := .norm, scope := .global }
  | .normUnfold => { name := `unfold, builder := .unfold, phase := .norm, scope := .global }

instance : ToJson DisplayRuleName where
  toJson n := private toJson n.toJsonRuleName

end Aesop.DisplayRuleName
```
