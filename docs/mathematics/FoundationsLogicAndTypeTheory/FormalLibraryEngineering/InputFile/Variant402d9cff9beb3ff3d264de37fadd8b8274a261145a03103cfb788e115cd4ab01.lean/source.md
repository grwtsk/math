# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InputFile.Variant402d9cff9beb3ff3d264de37fadd8b8274a261145a03103cfb788e115cd4ab01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f69eaa166a7926adfd0b2ba32ee5e7f526d8b7b` · SHA-256 `ca6bdb1fb17564a3ecbb15fb86ae59079f702a8613dee0d9aa8b350f89ba49c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InputFileRecFetch.Variantf1cb189f7b810589be539bdb4abec5a8ed7179ba08d122764fc6e41dcbf89779","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f1cb189f7b810589be539bdb4abec5a8ed7179ba08d122764fc6e41dcbf89779","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.InputFileRecFetch.Variantf1cb189f7b810589be539bdb4abec5a8ed7179ba08d122764fc6e41dcbf89779","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"f1cb189f7b810589be539bdb4abec5a8ed7179ba08d122764fc6e41dcbf89779","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Build/InputFile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Lake.Config.FacetConfig
import Lake.Build.Job
import Lake.Build.Common
import Lake.Build.Infos

/-! # Input File Build
Build function definitions for input files and directories.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InputFileRecFetch.Variantf1cb189f7b810589be539bdb4abec5a8ed7179ba08d122764fc6e41dcbf89779

open System (FilePath)

namespace Lake

/-! ## Input File -/

def InputFile.recFetch (t : InputFile) : FetchM (Job FilePath) :=
  withRegisterJob s!"{t.name}" do
  inputFile t.path t.text

/-- The facet configuration for the builtin `ExternLib.staticFacet`. -/
public def InputFile.defaultFacetConfig : KFacetConfig InputFile.facetKind defaultFacet :=
  mkFacetJobConfig recFetch

/--
A name-configuration map for the initial set of
input file facets (e.g., `default`).
-/
public def InputFile.initFacetConfigs : DNameMap (KFacetConfig InputFile.facetKind) :=
  DNameMap.empty
  |>.insert defaultFacet defaultFacetConfig

/-! ## Input Directory -/

def InputDir.recFetch (t : InputDir) : FetchM (Job (Array FilePath)) :=
  withRegisterJob s!"{t.name}" do
  inputDir t.path t.text t.filter

/-- The facet configuration for the builtin `ExternLib.staticFacet`. -/
public def InputDir.defaultFacetConfig : KFacetConfig InputDir.facetKind defaultFacet :=
  mkFacetJobConfig recFetch

/--
A name-configuration map for the initial set of
input directory facets (e.g., `default`).
-/
public def InputDir.initFacetConfigs : DNameMap (KFacetConfig InputDir.facetKind) :=
  DNameMap.empty
  |>.insert defaultFacet defaultFacetConfig
```
