# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BuiltinRules.Variant60a2029cb540854afebccd00b0a3ad7fc4ce1274cbad36f00a87795d0d96a376

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4dc23ec75528841613f2ecd777a92a6125cf2a4` · SHA-256 `60a2029cb540854afebccd00b0a3ad7fc4ce1274cbad36f00a87795d0d96a376`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
