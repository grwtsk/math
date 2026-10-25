# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variant38a2128ce5e2b259bb1f5713e54ff375fd8793e05975d308fd5bcba87c6ddf1f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bff85350f03a483e819cfaf7284e72948cfd085d` · SHA-256 `a4a64e52f0cab629cee5d848440a17f38fb2328f675ac4c1468cb3cb43b01e1c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CollectFVars.Variant74433623192530bbb27ab12a0e0a1a3c58b4eccec21ae22d818cec3b76529699","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"74433623192530bbb27ab12a0e0a1a3c58b4eccec21ae22d818cec3b76529699","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CollectFVars.Variant74433623192530bbb27ab12a0e0a1a3c58b4eccec21ae22d818cec3b76529699","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"74433623192530bbb27ab12a0e0a1a3c58b4eccec21ae22d818cec3b76529699","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Util.CollectFVars
public import Lean.Util.CollectLevelParams
public import Lean.Util.CollectMVars
public import Lean.Util.CollectLevelMVars
public import Lean.Util.CollectLooseBVars
public import Lean.Util.FindMVar
public import Lean.Util.FindLevelMVar
public import Lean.Util.MonadCache
public import Lean.Util.PPExt
public import Lean.Util.Path
public import Lean.Util.Profile
public import Lean.Util.RecDepth
public import Lean.Util.ShareCommon
public import Lean.Util.Sorry
public import Lean.Util.Trace
public import Lean.Util.FindExpr
public import Lean.Util.ReplaceExpr
public import Lean.Util.ForEachExpr
public import Lean.Util.ForEachExprWhere
public import Lean.Util.ReplaceLevel
public import Lean.Util.FoldConsts
public import Lean.Util.SCC
public import Lean.Util.TestExtern
public import Lean.Util.OccursCheck
public import Lean.Util.HasConstCache
public import Lean.Util.Heartbeats
public import Lean.Util.SafeExponentiation
public import Lean.Util.NumObjs
public import Lean.Util.NumApps
public import Lean.Util.FVarSubset
public import Lean.Util.SortExprs
public import Lean.Util.Reprove
public import Lean.Util.ParamMinimizer

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CollectFVars.Variant74433623192530bbb27ab12a0e0a1a3c58b4eccec21ae22d818cec3b76529699

```
