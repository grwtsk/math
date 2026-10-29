-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsBlackListed.Variantac8a36a73fa655798fb64c2c884f6dcf36d0e6776ed781e25cfa21a59e9f3e7f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ac8a36a73fa655798fb64c2c884f6dcf36d0e6776ed781e25cfa21a59e9f3e7f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsBlackListed.Variantac8a36a73fa655798fb64c2c884f6dcf36d0e6776ed781e25cfa21a59e9f3e7f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ac8a36a73fa655798fb64c2c884f6dcf36d0e6776ed781e25cfa21a59e9f3e7f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraph/Export/Gexf.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jon Eugster. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jon Eugster
-/
module

public import Lean.Data.NameMap.Basic
public import Lean.Environment
import Lean.Meta.Match.MatcherInfo


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsBlackListed.Variantac8a36a73fa655798fb64c2c884f6dcf36d0e6776ed781e25cfa21a59e9f3e7f

open Lean

namespace ImportGraph

open Elab Meta in
/-- Filter Lean internal declarations -/
private def isBlackListed (env : Environment) (declName : Name) : Bool :=
  declName == ``sorryAx
  || declName matches .str _ "inj"
  || declName matches .str _ "noConfusionType"
  || declName.isInternalDetail
  || isAuxRecursor env declName
  || isNoConfusion env declName
  || isRecCore env declName
  || isMatcherCore env declName

/-- Get number of non-blacklisted declarations per file. -/
private def getNumberOfDeclsPerFile (env: Environment) : NameMap Nat :=
  env.const2ModIdx.fold (fun acc n (idx : ModuleIdx) =>
    let mod := env.allImportedModuleNames[idx]!
    if isBlackListed env n then acc else acc.insert mod ((acc.getD mod 0) + 1)
    ) {}

/-- Gexf template for a node in th graph. -/
private def Gexf.nodeTemplate (n module : Name) (size : Nat) := s!"<node id=\"{n}\" label=\"{n}\"><attvalues><attvalue for=\"0\" value=\"{size}\" /><attvalue for=\"1\" value=\"{module.isPrefixOf n}\" /></attvalues></node>\n          "

/-- Gexf template for an edge in the graph -/
private def Gexf.edgeTemplate (source target : Name) := s!"<edge source=\"{source}\" target=\"{target}\" id=\"{source}--{target}\" />\n          "

open Gexf in
/-- Creates a `.gexf` file of the graph, see https://gexf.net/

Metadata can be stored in forms of attributes, currently we record the following:
* `decl_count` (Nat): number of declarations in the file
* `in_module` (Bool): whether the file belongs to the main module
  (used to strip the first part of the name when displaying).
-/
public def Graph.toGexf (graph : NameMap (Array Name)) (module : Name) (env : Environment) : String :=
  let sizes : NameMap Nat := getNumberOfDeclsPerFile env
  let nodes : String := graph.foldl (fun acc n _ => acc ++ nodeTemplate n module (sizes.getD n 0)) ""
  let edges : String := graph.foldl (fun acc n i => acc ++ (i.foldl (fun b j => b ++ edgeTemplate j n) "")) ""
  s!"<?xml version='1.0' encoding='utf-8'?>
    <gexf xmlns=\"http://www.gexf.net/1.2draft\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.gexf.net/1.2draft http://www.gexf.net/1.2draft/gexf.xsd\" version=\"1.2\">
      <meta>
        <creator>Lean ImportGraph</creator>
      </meta>
      <graph defaultedgetype=\"directed\" mode=\"static\" name=\"\">
        <attributes mode=\"static\" class=\"node\">
          <attribute id=\"0\" title=\"decl_count\" type=\"long\" />
          <attribute id=\"1\" title=\"in_module\" type=\"boolean\" />
        </attributes>
        <nodes>
          {nodes.trimAscii}
        </nodes>
        <edges>
          {edges.trimAscii}
        </edges>
      </graph>
    </gexf>
    "
