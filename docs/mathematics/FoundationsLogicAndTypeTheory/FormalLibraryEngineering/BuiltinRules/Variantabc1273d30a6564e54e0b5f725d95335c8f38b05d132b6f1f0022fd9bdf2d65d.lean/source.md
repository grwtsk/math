# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuiltinRules.Variantabc1273d30a6564e54e0b5f725d95335c8f38b05d132b6f1f0022fd9bdf2d65d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ddedf3175fcb3c21c69ca409210ff53d9718c54` · SHA-256 `5c33a6ef8e9d6bd1278ce31d2e7181446c01154f590c645c48c1a8a5cf36d120`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NotIntro.Variant60a2029cb540854afebccd00b0a3ad7fc4ce1274cbad36f00a87795d0d96a376","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"60a2029cb540854afebccd00b0a3ad7fc4ce1274cbad36f00a87795d0d96a376","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.NotIntro.Variant60a2029cb540854afebccd00b0a3ad7fc4ce1274cbad36f00a87795d0d96a376","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"60a2029cb540854afebccd00b0a3ad7fc4ce1274cbad36f00a87795d0d96a376","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/BuiltinRules.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

-- The Aesop.BuiltinRules.* imports are needed to ensure that the tactics from
-- these files are registered.
module

public import Aesop.BuiltinRules.Assumption
public import Aesop.BuiltinRules.ApplyHyps
public import Aesop.BuiltinRules.DestructProducts
public import Aesop.BuiltinRules.Ext
public import Aesop.BuiltinRules.Intros
public import Aesop.BuiltinRules.Rfl
public import Aesop.BuiltinRules.Split
public import Aesop.BuiltinRules.Subst


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NotIntro.Variant60a2029cb540854afebccd00b0a3ad7fc4ce1274cbad36f00a87795d0d96a376

public section

namespace Aesop.BuiltinRules

attribute [aesop (rule_sets := [builtin]) safe 0 apply] PUnit.unit

-- Hypotheses of product type are split by a separate builtin rule because the
-- `cases` builder currently cannot be used for norm rules.
attribute [aesop (rule_sets := [builtin]) safe 101 constructors]
  And Prod PProd MProd

attribute [aesop (rule_sets := [builtin]) unsafe 30% constructors]
  Exists Subtype Sigma PSigma

-- Sums are split and introduced lazily.
attribute [aesop (rule_sets := [builtin]) [safe 100 cases, 50% constructors]]
  Or Sum PSum

-- A goal ⊢ P ↔ Q is split into ⊢ P → Q and ⊢ Q → P. Hypotheses of type `P ↔ Q`
-- are treated as equations `P = Q` by the simplifier and by our builtin subst
-- rule.
attribute [aesop (rule_sets := [builtin]) safe 100 constructors] Iff

-- A negated goal Γ ⊢ ¬ P is transformed into Γ, P ⊢ ⊥. A goal with a
-- negated hypothesis Γ, h : ¬ P ⊢ Q is transformed into Γ[P := ⊥] ⊢ Q[P := ⊥]
-- by the simplifier. Quantified negated hypotheses h : ∀ x : T, ¬ P x are also
-- supported by the simplifier if the premises x can be discharged.
@[aesop (rule_sets := [builtin]) safe 0]
theorem not_intro (h : P → False) : ¬ P := h

@[aesop (rule_sets := [builtin]) norm destruct]
theorem empty_false (h : Empty) : False := nomatch h

@[aesop (rule_sets := [builtin]) norm destruct]
theorem pEmpty_false (h : PEmpty) : False := nomatch h

attribute [aesop (rule_sets := [builtin]) norm constructors] ULift

attribute [aesop (rule_sets := [builtin]) norm 0 destruct] ULift.down

@[aesop (rule_sets := [builtin]) norm simp]
theorem heq_iff_eq (x y : α) : x ≍ y ↔ x = y :=
  ⟨eq_of_heq, heq_of_eq⟩

end Aesop.BuiltinRules
```
