# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ConjFinite.Variantf8f177861615d7dcdb737fb4528026ed2ee4ef59ef6cd529a7b6a2e69c84d978

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3dbf2519784e300275c68d41d3f3ea7db9ca2ccb` · SHA-256 `b4f8ebc3ce9b821707f39a460c34abdef4709e7d74dae2151654bf918d805782`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Conj.Variantdd90dfa97d89dde1f6a329fdd1f98e0ad47eff46b6a0905dcaf23c57b56f4752","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd90dfa97d89dde1f6a329fdd1f98e0ad47eff46b6a0905dcaf23c57b56f4752","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Conj.Variantdd90dfa97d89dde1f6a329fdd1f98e0ad47eff46b6a0905dcaf23c57b56f4752","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"dd90dfa97d89dde1f6a329fdd1f98e0ad47eff46b6a0905dcaf23c57b56f4752","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/ConjFinite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Rodriguez. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Rodriguez
-/
import Mathlib.Algebra.Group.Conj
import Mathlib.Data.Fintype.Units

/-!
# Conjugacy of elements of finite groups
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Conj.Variantdd90dfa97d89dde1f6a329fdd1f98e0ad47eff46b6a0905dcaf23c57b56f4752

assert_not_exists Field

-- TODO: the following `assert_not_exists` should work, but does not
-- assert_not_exists MonoidWithZero

variable {α : Type*} [Monoid α]

attribute [local instance] IsConj.setoid

instance [Fintype α] [DecidableRel (IsConj : α → α → Prop)] : Fintype (ConjClasses α) :=
  Quotient.fintype (IsConj.setoid α)

instance [Finite α] : Finite (ConjClasses α) :=
  Quotient.finite _

instance [DecidableEq α] [Fintype α] : DecidableRel (IsConj : α → α → Prop) := fun a b =>
  inferInstanceAs (Decidable (∃ c : αˣ, c.1 * a = b * c.1))

instance conjugatesOf.fintype [Fintype α] [DecidableRel (IsConj : α → α → Prop)] {a : α} :
  Fintype (conjugatesOf a) :=
  @Subtype.fintype _ _ (‹DecidableRel IsConj› a) _

namespace ConjClasses

variable [Fintype α] [DecidableRel (IsConj : α → α → Prop)]

instance {x : ConjClasses α} : Fintype (carrier x) :=
  Quotient.recOnSubsingleton x fun _ => conjugatesOf.fintype

end ConjClasses
```
