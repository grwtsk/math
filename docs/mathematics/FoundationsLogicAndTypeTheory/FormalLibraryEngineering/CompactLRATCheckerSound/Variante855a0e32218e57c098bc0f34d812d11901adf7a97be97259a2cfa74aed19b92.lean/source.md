# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactLRATCheckerSound.Variante855a0e32218e57c098bc0f34d812d11901adf7a97be97259a2cfa74aed19b92

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e4a47d78bdf6994bcd963d81b0ab0334a161faa` · SHA-256 `2b89b15e8766e4e36e90ad30d5f386b8482d30901935cba826017afc6d6f791d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoSound.Variant74c10d9f28d47d316ec964d0e06df5ffdc75435c23a6d3f6eeb605bebba4541b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"74c10d9f28d47d316ec964d0e06df5ffdc75435c23a6d3f6eeb605bebba4541b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.GoSound.Variant74c10d9f28d47d316ec964d0e06df5ffdc75435c23a6d3f6eeb605bebba4541b","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"74c10d9f28d47d316ec964d0e06df5ffdc75435c23a6d3f6eeb605bebba4541b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/LRAT/Internal/CompactLRATCheckerSound.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.LRAT.Internal.CompactLRATChecker
import Std.Tactic.BVDecide.LRAT.Internal.LRATCheckerSound


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoSound.Variant74c10d9f28d47d316ec964d0e06df5ffdc75435c23a6d3f6eeb605bebba4541b

namespace Std.Tactic.BVDecide
namespace LRAT
namespace Internal

theorem go_sound (f : DefaultFormula n) (proof : Array IntAction) (idx : Nat)
    (h1 : Formula.ReadyForRupAdd f) (h2 : Formula.ReadyForRatAdd f) :
    compactLratChecker.go f proof idx = .success → Unsatisfiable (PosFin n) f := by
  fun_induction compactLratChecker.go
  case case1 ih1 => apply ih1 <;> assumption
  case case2 _ _ _ _ _ hints _ _ h3 =>
    intro _
    apply addEmptyCaseSound (rupHints := hints)
    · assumption
    · simp [h3]
  case case3 => simp
  case case4 => grind [Unsatisfiable, Liff]
  case case5 => simp
  case case6 => grind [Equisat, Clause.limplies_iff_mem]
  case case7 => simp
  case case8 ih1 => apply ih1 <;> assumption
  case case9 ih1 =>
    intro h3 p pf
    apply ih1 (by grind) (by grind) h3 p
    apply Formula.limplies_delete
    assumption
  case case10 => simp

public theorem compactLratChecker_sound (f : DefaultFormula n) (proof : Array IntAction)
    (h1 : Formula.ReadyForRupAdd f) (h2 : Formula.ReadyForRatAdd f) :
    compactLratChecker f proof = .success → Unsatisfiable (PosFin n) f := by
  apply go_sound <;> assumption

end Internal
end LRAT
end Std.Tactic.BVDecide
```
