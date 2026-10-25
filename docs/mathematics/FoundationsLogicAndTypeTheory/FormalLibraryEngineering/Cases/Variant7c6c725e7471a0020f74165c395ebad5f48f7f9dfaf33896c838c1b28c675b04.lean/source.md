# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cases.Variant7c6c725e7471a0020f74165c395ebad5f48f7f9dfaf33896c838c1b28c675b04

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d2efb77e11756ca3ed75a6fefd54f9c56ea1b5b` · SHA-256 `ace50e619c4c9d8a94d59976f6b3fe56b87327ceb11c378b9d2711f9e01beb4c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Check.Variantfb150abdf155e3746bb623efca5f53c4947fcce7c9b0542a252abf402fbc71ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb150abdf155e3746bb623efca5f53c4947fcce7c9b0542a252abf402fbc71ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Check.Variantfb150abdf155e3746bb623efca5f53c4947fcce7c9b0542a252abf402fbc71ed","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fb150abdf155e3746bb623efca5f53c4947fcce7c9b0542a252abf402fbc71ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Builder/Cases.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Builder.Basic
public import Aesop.RuleTac.Cases
import Batteries.Lean.Expr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Check.Variantfb150abdf155e3746bb623efca5f53c4947fcce7c9b0542a252abf402fbc71ed

public section

open Lean
open Lean.Meta

namespace Aesop

namespace CasesPattern

def check (decl : Name) (p : CasesPattern) : MetaM Unit :=
  withoutModifyingState do
    let p ← p.toExpr
    unless p.isAppOf' decl do
      throwError "expected pattern '{p}' ({toString p}) to be an application of '{decl}'"

def toIndexingMode (p : CasesPattern) : MetaM IndexingMode :=
  withoutModifyingState do .hyps <$> mkDiscrTreePath (← p.toExpr)

end CasesPattern


namespace RuleBuilderOptions

def casesTransparency (opts : RuleBuilderOptions) : TransparencyMode :=
  opts.transparency?.getD .reducible

def casesIndexTransparency (opts : RuleBuilderOptions) : TransparencyMode :=
  opts.indexTransparency?.getD .reducible

def casesPatterns (opts : RuleBuilderOptions) : Array CasesPattern :=
  opts.casesPatterns?.getD #[]

end RuleBuilderOptions

namespace RuleBuilder

def mkCasesTarget (decl : Name) (casesPatterns : Array CasesPattern) :
    CasesTarget :=
  if casesPatterns.isEmpty then
    .decl decl
  else
    .patterns casesPatterns

def getCasesIndexingMode (decl : Name) (indexMd : TransparencyMode)
    (casesPatterns : Array CasesPattern) : MetaM IndexingMode := do
  if indexMd != .reducible then
    return .unindexed
  if casesPatterns.isEmpty then
    IndexingMode.hypsMatchingConst decl
  else
    .or <$> casesPatterns.mapM (·.toIndexingMode)

/-- `decl` is either the name of the inductive type described by `info`, or a
type synonym for it at transparency `default` or `md` (whichever is larger). -/
def casesCore (decl : Name) (info : InductiveVal) (pats : Array CasesPattern)
    (imode? : Option IndexingMode) (md indexMd : TransparencyMode)
    (phase : PhaseSpec) : MetaM LocalRuleSetMember := do
  pats.forM (·.check decl)
  let imode ← imode?.getDM $ getCasesIndexingMode decl indexMd pats
  let target := mkCasesTarget decl pats
  let ctorNames ← mkCtorNames info
  let tac := .cases target md info.isRec ctorNames
  return .global $ .base $ phase.toRule decl .cases .global tac imode none

def cases : RuleBuilder := λ input => do
  let opts := input.options
  if input.phase.phase == .norm then throwError
    "aesop: cases builder cannot currently be used for norm rules."
    -- TODO `Meta.cases` may assign and introduce metavariables.
    -- (Specifically, it can *replace* existing metavariables, which Aesop
    -- counts as an assignment and an introduction.)
  let (decl, info) ← elabInductiveRuleIdent .cases input.term opts.casesTransparency
  casesCore decl info opts.casesPatterns opts.indexingMode? opts.casesTransparency
    opts.casesIndexTransparency input.phase

end Aesop.RuleBuilder
```
