-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Register.Variant9ea6955020f72a067e2a664657726b0b0ba6eb7c286c0fcf25b8bc67a5a2a148","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ea6955020f72a067e2a664657726b0b0ba6eb7c286c0fcf25b8bc67a5a2a148","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Register.Variant9ea6955020f72a067e2a664657726b0b0ba6eb7c286c0fcf25b8bc67a5a2a148","mathematical_subject":"Computation.DataStructures","original_sha256":"9ea6955020f72a067e2a664657726b0b0ba6eb7c286c0fcf25b8bc67a5a2a148","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/Attr/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

import Mathlib.Tactic.Attr.Register
public import Std.Data.DTreeMap.Internal.Operations

/-!
# Simp tags for core lemmas

In Lean 4, an attribute declared with `register_simp_attr` cannot be used in the same file. So, we
declare all `simp` attributes used in `Mathlib` in `Mathlib/Tactic/Attr/Register` and tag lemmas
from the core library and the `Batteries` library with these attributes in this file.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Register.Variant9ea6955020f72a067e2a664657726b0b0ba6eb7c286c0fcf25b8bc67a5a2a148

public meta section

attribute [functor_norm, monad_norm] seq_assoc pure_seq pure_bind bind_assoc bind_pure map_pure
attribute [monad_norm] seq_eq_bind_map seqLeft_eq_bind seqRight_eq_bind

attribute [mfld_simps] id and_true true_and Function.comp_apply and_self eq_self not_false
  true_or or_true heq_eq_eq forall_const and_imp

attribute [nontriviality] eq_iff_true_of_subsingleton
