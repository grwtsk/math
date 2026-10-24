-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReprEqIf.Varianta58123dc1ca2fbb2b16d0c39aee70a7bc04dbe2f2f760e870945aaf8f61f507b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a58123dc1ca2fbb2b16d0c39aee70a7bc04dbe2f2f760e870945aaf8f61f507b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ReprEqIf.Varianta58123dc1ca2fbb2b16d0c39aee70a7bc04dbe2f2f760e870945aaf8f61f507b","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"a58123dc1ca2fbb2b16d0c39aee70a7bc04dbe2f2f760e870945aaf8f61f507b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Int/ToString.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia Markus Himmel
-/
module

prelude
public import Init.Data.ToString.Extra
import all Init.Data.Int.Repr
import Init.Data.Int.Order
import Init.Data.Int.LemmasAux


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReprEqIf.Varianta58123dc1ca2fbb2b16d0c39aee70a7bc04dbe2f2f760e870945aaf8f61f507b

namespace Int

public theorem repr_eq_if {a : Int} :
    a.repr = if 0 ≤ a then a.toNat.repr else "-" ++ (-a).toNat.repr := by
  cases a <;> simp [Int.repr]

@[simp]
public theorem toString_eq_repr {a : Int} : toString a = a.repr := (rfl)

end Int
