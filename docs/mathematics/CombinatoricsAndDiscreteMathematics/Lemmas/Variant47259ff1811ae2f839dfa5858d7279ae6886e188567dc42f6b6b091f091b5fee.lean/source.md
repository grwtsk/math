# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Lemmas.Variant47259ff1811ae2f839dfa5858d7279ae6886e188567dc42f6b6b091f091b5fee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a117fccaece52160fa1a4993ff8650759fe7ec7` · SHA-256 `e86a6b4ee9684c210b97b3973db5f54111514d0927c3943ad1370f707d0810db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CoeIndicator.Variant856dd0bade087b14e78dcf906af104dae28d6bce1598645c54b328a6a0657e60","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"856dd0bade087b14e78dcf906af104dae28d6bce1598645c54b328a6a0657e60","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CoeIndicator.Variant856dd0bade087b14e78dcf906af104dae28d6bce1598645c54b328a6a0657e60","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"856dd0bade087b14e78dcf906af104dae28d6bce1598645c54b328a6a0657e60","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/ENNReal/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Yury Kudryashov
-/
import Mathlib.Algebra.Group.Indicator
import Mathlib.Data.ENNReal.Basic
import Mathlib.Data.Finset.Lattice.Fold

/-!
# Some lemmas on extended non-negative reals

These are some lemmas split off from `ENNReal.Basic` because they need a lot more imports.
They are probably good targets for further cleanup or moves.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CoeIndicator.Variant856dd0bade087b14e78dcf906af104dae28d6bce1598645c54b328a6a0657e60

open Function Set NNReal

variable {α : Type*}

namespace ENNReal

@[simp, norm_cast]
theorem coe_indicator {α} (s : Set α) (f : α → ℝ≥0) (a : α) :
    ((s.indicator f a : ℝ≥0) : ℝ≥0∞) = s.indicator (fun x => ↑(f x)) a :=
  (ofNNRealHom : ℝ≥0 →+ ℝ≥0∞).map_indicator _ _ _

section Order

@[simp, norm_cast]
theorem coe_finset_sup {s : Finset α} {f : α → ℝ≥0} : ↑(s.sup f) = s.sup fun x => (f x : ℝ≥0∞) :=
  Finset.comp_sup_eq_sup_comp_of_is_total _ coe_mono rfl

end Order

end ENNReal
```
