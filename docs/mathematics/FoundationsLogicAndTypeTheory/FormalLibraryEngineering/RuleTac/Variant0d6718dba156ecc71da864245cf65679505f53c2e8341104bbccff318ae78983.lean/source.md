# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleTac.Variant0d6718dba156ecc71da864245cf65679505f53c2e8341104bbccff318ae78983

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5928dde33b21698d5313065c3b26b472d62b510b` · SHA-256 `01772a531551860f69b2948a30411c032c34d0af54515b91b08afbdc9426a7c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Run.Variantb0c4dc2069b3c874e533a11402c42d8edca375fde1c962e115e5e843a310d7e6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b0c4dc2069b3c874e533a11402c42d8edca375fde1c962e115e5e843a310d7e6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Run.Variantb0c4dc2069b3c874e533a11402c42d8edca375fde1c962e115e5e843a310d7e6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b0c4dc2069b3c874e533a11402c42d8edca375fde1c962e115e5e843a310d7e6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/RuleTac.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.RuleTac.Apply
public import Aesop.RuleTac.Basic
public import Aesop.RuleTac.Cases
public import Aesop.RuleTac.Forward
public import Aesop.RuleTac.Preprocess
public import Aesop.RuleTac.Tactic
public import Aesop.RuleTac.Descr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Run.Variantb0c4dc2069b3c874e533a11402c42d8edca375fde1c962e115e5e843a310d7e6

public section

open Lean

namespace Aesop.RuleTacDescr

protected def run : RuleTacDescr → RuleTac
  | apply t md => RuleTac.apply t md
  | constructors cs md => RuleTac.applyConsts cs md
  | forward t immediate clear => RuleTac.forward t immediate clear
  | cases target md isRecursiveType ctorNames =>
    RuleTac.cases target md isRecursiveType ctorNames
  | tacticM decl => RuleTac.tacticM decl
  | singleRuleTac decl => RuleTac.singleRuleTac decl
  | ruleTac decl => RuleTac.ruleTac decl
  | tacticStx stx => RuleTac.tacticStx stx
  | tacGen decl => RuleTac.tacGen decl
  | preprocess => RuleTac.preprocess
  | forwardMatches m => RuleTac.forwardMatches m

end RuleTacDescr
```
