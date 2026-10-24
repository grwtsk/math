-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Stream.Variantca6d1596c85a093918aa390fa53e85caa689e62c78ee475a4dfae5bfd60036b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca6d1596c85a093918aa390fa53e85caa689e62c78ee475a4dfae5bfd60036b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Stream.Variantca6d1596c85a093918aa390fa53e85caa689e62c78ee475a4dfae5bfd60036b5","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ca6d1596c85a093918aa390fa53e85caa689e62c78ee475a4dfae5bfd60036b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Vector/Stream.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Shreyas Srinivas. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Shreyas Srinivas, François G. Dorais, Kim Morrison
-/
module

prelude
public import Init.Data.Stream
public import Init.Data.Vector.Basic
import Init.Data.Slice.Array.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Stream.Variantca6d1596c85a093918aa390fa53e85caa689e62c78ee475a4dfae5bfd60036b5

namespace Vector

/-! ### ToStream instance -/

@[no_expose]
public instance : Std.ToStream (Vector α n) (Subarray α) where
  toStream xs := xs.toArray[*...*]

end Vector
