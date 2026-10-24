# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant1a20e5d9d19502b50e50d17032bea0be51018675f249dbdcd754fabc6ca4593f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2d60338ee9707a63a4fac254721e4f0365c93fd` · SHA-256 `e9db8c2d8f85c3f7d95868ba94fde77d2dca12eba2ff42bc24dbeeeab7c1cfe6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ListProd.Variant70fc23bf8ad0a93204996b15a062509cf5b8e3470b4dc144eaa500d86dc9807c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"70fc23bf8ad0a93204996b15a062509cf5b8e3470b4dc144eaa500d86dc9807c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ListProd.Variant70fc23bf8ad0a93204996b15a062509cf5b8e3470b4dc144eaa500d86dc9807c","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"70fc23bf8ad0a93204996b15a062509cf5b8e3470b4dc144eaa500d86dc9807c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/Congruence/BigOperators.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Amelia Livingston. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Amelia Livingston
-/

import Mathlib.Algebra.BigOperators.Group.Multiset.Basic
import Mathlib.Algebra.BigOperators.Group.List.Lemmas
import Mathlib.GroupTheory.Congruence.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Defs

/-!
# Interactions between `∑, ∏` and `(Add)Con`

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ListProd.Variant70fc23bf8ad0a93204996b15a062509cf5b8e3470b4dc144eaa500d86dc9807c

namespace Con

/-- Multiplicative congruence relations preserve product indexed by a list. -/
@[to_additive "Additive congruence relations preserve sum indexed by a list."]
protected theorem list_prod {ι M : Type*} [MulOneClass M] (c : Con M) {l : List ι} {f g : ι → M}
    (h : ∀ x ∈ l, c (f x) (g x)) :
    c (l.map f).prod (l.map g).prod := by
  induction l with
  | nil =>
    simpa only [List.map_nil, List.prod_nil] using c.refl 1
  | cons x xs ih =>
    rw [List.map_cons, List.map_cons, List.prod_cons, List.prod_cons]
    exact c.mul (h _ <| .head _) <| ih fun k hk ↦ h _ (.tail _ hk)

/-- Multiplicative congruence relations preserve product indexed by a multiset. -/
@[to_additive "Additive congruence relations preserve sum indexed by a multiset."]
protected theorem multiset_prod {ι M : Type*} [CommMonoid M] (c : Con M) {s : Multiset ι}
    {f g : ι → M} (h : ∀ x ∈ s, c (f x) (g x)) :
    c (s.map f).prod (s.map g).prod := by
  rcases s; simpa using c.list_prod h

/-- Multiplicative congruence relations preserve finite product. -/
@[to_additive "Additive congruence relations preserve finite sum."]
protected theorem finset_prod {ι M : Type*} [CommMonoid M] (c : Con M) (s : Finset ι)
    {f g : ι → M} (h : ∀ i ∈ s, c (f i) (g i)) :
    c (s.prod f) (s.prod g) :=
  c.multiset_prod h

end Con
```
