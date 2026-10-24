# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variantbf0a1771f48fb986b79f5dd30c7579a10810746f6f12da5177c9f3453ff6c64d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65b9087a71ad36f559e17a0b2f33f98f161f32ef` · SHA-256 `bc46f0acdbbda357cd8b477c3b7e03b43e13b1419c0de849ae2638d5801e50b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ListSum.Variant79bb652ad2be80fb9f67fe90e59b8b2aa00ad1db539da78fb9999effa14ec9c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"79bb652ad2be80fb9f67fe90e59b8b2aa00ad1db539da78fb9999effa14ec9c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ListSum.Variant79bb652ad2be80fb9f67fe90e59b8b2aa00ad1db539da78fb9999effa14ec9c7","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"79bb652ad2be80fb9f67fe90e59b8b2aa00ad1db539da78fb9999effa14ec9c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Congruence/BigOperators.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.GroupTheory.Congruence.BigOperators
import Mathlib.RingTheory.Congruence.Defs

/-!
# Interactions between `∑, ∏` and `RingCon`

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ListSum.Variant79bb652ad2be80fb9f67fe90e59b8b2aa00ad1db539da78fb9999effa14ec9c7

namespace RingCon

/-- Congruence relation of a ring preserves finite sum indexed by a list. -/
protected lemma listSum {ι S : Type*} [AddMonoid S] [Mul S]
    (t : RingCon S) (l : List ι) {f g : ι → S} (h : ∀ i ∈ l, t (f i) (g i)) :
    t (l.map f).sum (l.map g).sum :=
  t.toAddCon.list_sum h

/-- Congruence relation of a ring preserves finite sum indexed by a multiset. -/
protected lemma multisetSum {ι S : Type*} [AddCommMonoid S] [Mul S] (t : RingCon S)
    (s : Multiset ι) {f g : ι → S} (h : ∀ i ∈ s, t (f i) (g i)) :
    t (s.map f).sum (s.map g).sum :=
  t.toAddCon.multiset_sum h

/-- Congruence relation of a ring preserves finite sum. -/
protected lemma finsetSum {ι S : Type*} [AddCommMonoid S] [Mul S] (t : RingCon S) (s : Finset ι)
    {f g : ι → S} (h : ∀ i ∈ s, t (f i) (g i)) :
    t (s.sum f) (s.sum g) :=
  t.toAddCon.finset_sum s h

end RingCon
```
