-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Test6.Variantf39d26348f4e11c8328b4b51c926133b2d25f1867ba1e014675baf7ad4b1d920","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f39d26348f4e11c8328b4b51c926133b2d25f1867ba1e014675baf7ad4b1d920","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Test6.Variantf39d26348f4e11c8328b4b51c926133b2d25f1867ba1e014675baf7ad4b1d920","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f39d26348f4e11c8328b4b51c926133b2d25f1867ba1e014675baf7ad4b1d920","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Server/Test/Refs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Marc Huisinga
-/
module

prelude
import Init.Prelude


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Test6.Variantf39d26348f4e11c8328b4b51c926133b2d25f1867ba1e014675baf7ad4b1d920

public def LeanServerTestRefsTest0 := Nat

public def Lean.Server.Test.LeanServerTestRefsTest0' := Nat

namespace Lean.Server.Test.Refs

public def Test1 := Nat
public def Test2 := Test1
public def Test3 := Test1
public def Test4 := Test2
public def Test5 := Test2

public inductive Test6
  | mk
public def test7 : Test6 := .mk
public def test8 : Test6 := .mk
public def test9 := test7
public def test10 := test9
