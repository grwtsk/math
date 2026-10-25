# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Align.Variantf394f86fe8978e365a842a181593726063a4fe3c12d1c1e91e02e3eccb4bf955

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f720553fef964eaf7976bccbe82563af86c4d1de` · SHA-256 `8c1efd1e2d418adf120a47f7f76656745a8d0e56ebe255f590d734624f45cece`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rename.Variant05826de31777ed5e3737ba051b52282d988a1b9a50aaca4f560a1067e8e85414","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05826de31777ed5e3737ba051b52282d988a1b9a50aaca4f560a1067e8e85414","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Rename.Variant05826de31777ed5e3737ba051b52282d988a1b9a50aaca4f560a1067e8e85414","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"05826de31777ed5e3737ba051b52282d988a1b9a50aaca4f560a1067e8e85414","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Init/Align.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Daniel Selsam, Mario Carneiro
-/
import Mathlib.Mathport.Rename
import Mathlib.Init.Logic
import Mathlib.Tactic.Relation.Rfl
import Mathlib.Tactic.Relation.Symm
import Mathlib.Tactic.Relation.Trans

/-!
# Realignments from lean 3 `init`

These are collected in one place only for ease of maintenance of a bunch of files that would
otherwise be nothing but `#align`s. Please use the respective files in `Mathlib.Init` if there are
actual theorems in the files.
-/

-- Implementation detail

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rename.Variant05826de31777ed5e3737ba051b52282d988a1b9a50aaca4f560a1067e8e85414

set_option align.precheck false in #align _sorry_placeholder_ _sorry_placeholder_

/-! ## `init.algebra.classes` -/

/-! ## `init.cc_lemmas` -/

/-! ## `init.classical` -/

#align classical.some Classical.choose
#align classical.some_spec Classical.choose_spec

/-! ## `init.coe` -/

#align has_coe Coe
#align has_coe.coe Coe.coe

#align has_coe_t CoeTCₓ -- universe level mismatch
#align has_coe_t.coe CoeTCₓ.coe

#align has_coe_to_fun CoeFun
#align has_coe_to_fun.coe CoeFun.coe

#align has_coe_to_sort CoeSort
#align has_coe_to_sort.coe CoeSort.coe

/-! ## `init.control.alternative` -/

/-! ## `init.control.applicative` -/

#align has_pure Pure
#align has_seq Seq
#align has_seq_left SeqLeft
#align has_seq_right SeqRight

/-! ## `init.control.except` -/

#align except.map Except.mapₓ
#align except.map_error Except.mapErrorₓ
#align except.bind Except.bindₓ

/-! ## `init.control.functor` -/

/-! ## `init.control.lift` -/

/-! ## `init.control.monad` -/

#align has_bind Bind

/-! ## `init.data.array.default` -/

-- These are TODOs, but we need to avoid aligning to `Array` which is significantly different
set_option align.precheck false in #align array Array'
set_option align.precheck false in #align mk_array mkArray'

/-! ## `init.data.char.basic` -/

/-! ## `init.data.char.classes` -/

/-! ## `init.data.char.default` -/

/-! ## `init.data.default` -/

/-! ## `init.data.fin.basic` -/

#align fin.elim0 Fin.elim0ₓ

/-! ## `init.data.int.comp_lemmas` -/

/-! ## `init.data.int.default` -/

/-! ## `init.data.list.basic` -/

#align list.erase List.eraseₓ
#align list.bag_inter List.bagInterₓ
#align list.diff List.diffₓ
#align list.empty List.isEmpty
#align list.filter List.filterₓ
#align list.partition List.partitionₓ
#align list.drop_while List.dropWhileₓ
#align list.after List.afterₓ
#align list.span List.spanₓ
#align list.index_of List.indexOfₓ
#align list.remove_all List.removeAllₓ
#align list.is_prefix_of List.isPrefixOfₓ
#align list.is_suffix_of List.isSuffixOfₓ
#align list.lt List.lt

/-! ## `init.data.nat.basic` -/

#align nat.nat_zero_eq_zero Nat.zero_eq
#align nat.less_than_or_equal Nat.le
#align nat.le Nat.le
#align nat.lt Nat.lt
#align nat.repeat Nat.repeatₓ

/-! ## `init.data.nat.div` -/

/-! ## `init.data.nat.lemmas` -/

#align nat.le_of_add_le_add_right Nat.le_of_add_le_add_rightₓ
#align nat.mul_lt_mul Nat.mul_lt_mulₓ
#align nat.mul_lt_mul' Nat.mul_lt_mul'ₓ
#noalign nat.discriminate
#align nat.sub_one_sub_lt Nat.sub_one_sub_ltₓ
#align nat.div_eq_sub_div Nat.div_eq_sub_divₓ
#align nat.div_eq_of_eq_mul_left Nat.div_eq_of_eq_mul_leftₓ
#align nat.div_eq_of_eq_mul_right Nat.div_eq_of_eq_mul_rightₓ
#align nat.div_eq_of_lt_le Nat.div_eq_of_lt_leₓ
#align nat.mul_div_cancel' Nat.mul_div_cancel'ₓ
#align nat.div_mul_cancel Nat.div_mul_cancelₓ
#align nat.mul_div_assoc Nat.mul_div_assocₓ
#align nat.dvd_of_mul_dvd_mul_left Nat.dvd_of_mul_dvd_mul_leftₓ
#align nat.dvd_of_mul_dvd_mul_right Nat.dvd_of_mul_dvd_mul_rightₓ

/-! ## `init.data.option.instances` -/

#align option.eq_none_of_is_none Option.eq_none_of_isNone
#align option.eq_some_of_is_some Option.eq_some_of_isSome

/-! ## `init.data.ordering.basic` -/

/-! ## `init.data.prod` -/

/-! ## `init.data.punit` -/

#align punit_eq PUnit.subsingleton
#align punit_eq_star PUnit.eq_punit

/-! ## `init.data.quot` -/

/-! ## `init.data.random` -/

#align std_next stdNextₓ -- this should be defeq but verification causes a stack overflow
#align std_split stdSplitₓ

/-! ## `init.data.repr` -/

#align has_repr Repr
set_option align.precheck false in #align nat.to_digits Nat.toDigits'

/-! ## `init.data.setoid` -/

attribute [refl] Setoid.refl
attribute [symm] Setoid.symm
attribute [trans] Setoid.trans

/-! ## `init.data.sigma.basic` -/

/-! ## `init.data.string.basic` -/

/-! ## `init.data.subtype.basic` -/

/-! ## `init.data.sum.basic` -/

/-! ## `init.data.sum.default` -/

/-! ## `init.data.to_string` -/

#align has_to_string ToString

/-! ## `init.data.unsigned.basic` -/

/-! ## `init.data.unsigned.default` -/

/-! ## `init.default` -/

/-! ## `init.function` -/

/-! ## `init.funext` -/

/-! ## `init.meta.exceptional` -/

/-! ## `init.meta.feature_search` -/

/-! ## `init.meta.float` -/

/-! ## `init.meta.format` -/

/-! ## `init.meta.json` -/

/-! ## `init.meta.level` -/

/-! ## `init.meta.name` -/

#align auto_param autoParamₓ

/-! ## `init.meta.options` -/

/-! ## `init.meta.rb_map` -/

/-! ## `init.meta.task` -/

/-! ## `init.meta.widget.basic` -/

/-! ## `init.meta.widget.default` -/

/-! ## `init.meta.widget.html_cmd` -/

/-! ## `init.meta.widget.interactive_expr` -/

/-! ## `init.meta.widget.replace_save_info` -/

/-! ## `init.meta.widget.tactic_component` -/

/-! ## `init.prelude` -/

#align function.comp Function.comp
#align function.const Function.const

#align infer_instance inferInstance

#align inhabited Inhabited
#align nonempty Nonempty
#align classical.choice Classical.choice
#align nonempty.elim Nonempty.elim

#align fin Fin

/-! ## `init.propext` -/

/-! ## `init.util` -/

/-! ## `init.version` -/

/-! ## `init.wf` -/

#align subrelation.accessible Subrelation.accessibleₓ
#align inv_image.accessible InvImage.accessibleₓ
#align prod.rprod Prod.RProd
```
