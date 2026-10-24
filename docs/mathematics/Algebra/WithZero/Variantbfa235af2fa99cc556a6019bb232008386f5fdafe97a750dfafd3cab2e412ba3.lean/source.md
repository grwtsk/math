# Complete source: GRWTSK.Algebra.WithZero.Variantbfa235af2fa99cc556a6019bb232008386f5fdafe97a750dfafd3cab2e412ba3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b78aa859f6cfe56e0bed4792ffa7b490835ba944` · SHA-256 `1151ea29025c111ec6437f7bd036c8d3c671ec4d3c8eb0061207d1241b0f807a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.WithZero.Variant9d59869a9c7c20a2e76d3d1798bfbb941d367785fb0fdf0be21730d522b7705b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9d59869a9c7c20a2e76d3d1798bfbb941d367785fb0fdf0be21730d522b7705b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.WithZero.Variant9d59869a9c7c20a2e76d3d1798bfbb941d367785fb0fdf0be21730d522b7705b","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"9d59869a9c7c20a2e76d3d1798bfbb941d367785fb0fdf0be21730d522b7705b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/WithZero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Mario Carneiro, Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Johan Commelin
-/
import Mathlib.Algebra.GroupWithZero.WithZero
import Mathlib.Algebra.Ring.Defs

/-!
# Adjoining a zero to a semiring
-/


namespace GRWTSK.Algebra.WithZero.Variant9d59869a9c7c20a2e76d3d1798bfbb941d367785fb0fdf0be21730d522b7705b

namespace WithZero
variable {α : Type*}

instance instLeftDistribClass [Mul α] [Add α] [LeftDistribClass α] :
    LeftDistribClass (WithZero α) where
  left_distrib a b c := by
    cases a; · rfl
    cases b <;> cases c <;> try rfl
    exact congr_arg some (left_distrib _ _ _)

instance instRightDistribClass [Mul α] [Add α] [RightDistribClass α] :
    RightDistribClass (WithZero α) where
  right_distrib a b c := by
    cases c; · simp
    cases a <;> cases b <;> try rfl
    exact congr_arg some (right_distrib _ _ _)

instance instDistrib [Distrib α] : Distrib (WithZero α) where
  left_distrib := left_distrib
  right_distrib := right_distrib

instance instSemiring [Semiring α] : Semiring (WithZero α) where

end WithZero
```
