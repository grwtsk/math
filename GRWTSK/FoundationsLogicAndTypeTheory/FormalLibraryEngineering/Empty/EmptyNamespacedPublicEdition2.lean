-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterEmpty.Variant2cf70aa3004a1c376ddc86f5d781716b71e2a8c0318cba645ac1625b2607205a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2cf70aa3004a1c376ddc86f5d781716b71e2a8c0318cba645ac1625b2607205a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterEmpty.Variant2cf70aa3004a1c376ddc86f5d781716b71e2a8c0318cba645ac1625b2607205a","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"2cf70aa3004a1c376ddc86f5d781716b71e2a8c0318cba645ac1625b2607205a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Producers/Empty.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Producers.Monadic.Empty


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterEmpty.Variant2cf70aa3004a1c376ddc86f5d781716b71e2a8c0318cba645ac1625b2607205a

@[expose] public section

namespace Std

/--
Returns an iterator that terminates immediately.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[always_inline, inline]
def Iter.empty (β : Type w) :=
  ((IterM.empty Id β).toIter : Iter β)

end Std
