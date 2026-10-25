-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransitiveClosure.Variantc6f046a83125a4680bc1343c3dd69cfcf48085cd398cef1e2117ad977e182be3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c6f046a83125a4680bc1343c3dd69cfcf48085cd398cef1e2117ad977e182be3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TransitiveClosure.Variantc6f046a83125a4680bc1343c3dd69cfcf48085cd398cef1e2117ad977e182be3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c6f046a83125a4680bc1343c3dd69cfcf48085cd398cef1e2117ad977e182be3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraph/Graph/TransitiveClosure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Paul Lezeau
-/
module

public import Lean.Data.NameMap.Basic

/-!
# Transitive closure of a graph

A "graph" in this context is a `NameMap (Array Name)`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransitiveClosure.Variantc6f046a83125a4680bc1343c3dd69cfcf48085cd398cef1e2117ad977e182be3

namespace Lean.NameMap

/--
Compute the transitive closure of an import graph.
-/
public partial def transitiveClosure (m : NameMap (Array Name)) : NameMap NameSet :=
  m.foldl (fun r n i => process r n i) {}
where
  process (r : NameMap NameSet) (n : Name) (i : Array Name) : NameMap NameSet :=
    if r.contains n then
      r
    else
      let r' := i.foldr (fun i r => process r i ((m.find? i).getD #[])) r
      let t := i.foldr
        (fun j s => ((r'.find? j).getD {}).foldl NameSet.insert s)
        (.ofList i.toList)
      r'.insert n t
