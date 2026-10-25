# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpRw.Variant293ffa44be077915b12acb387e6dafcf7305055ee3198fda7144894462e8f19e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47e7c561b0bcda6aee5796922f60f649f864dc3c` · SHA-256 `4f34e074e7cb22e266903db8a301478a4a5f0e622ab2ed067df74bef16f4cc7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variantd14a71fd2c63bf651748eaeb308fa53020cd89d7bbc8d7fa3f939f94a4b9bacf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d14a71fd2c63bf651748eaeb308fa53020cd89d7bbc8d7fa3f939f94a4b9bacf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TestSorry.Variantd14a71fd2c63bf651748eaeb308fa53020cd89d7bbc8d7fa3f939f94a4b9bacf","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d14a71fd2c63bf651748eaeb308fa53020cd89d7bbc8d7fa3f939f94a4b9bacf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/SimpRw.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen, Mario Carneiro
-/

import Mathlib.Tactic.SimpRw


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variantd14a71fd2c63bf651748eaeb308fa53020cd89d7bbc8d7fa3f939f94a4b9bacf

private axiom test_sorry : ∀ {α}, α

-- `simp_rw` can perform rewrites under binders:
example : (fun (x y : Nat) ↦ x + y) = (fun x y ↦ y + x) := by simp_rw [Nat.add_comm]

-- `simp_rw` can apply reverse rules:
example (f : Nat → Nat) {a b c : Nat} (ha : f b = a) (hc : f b = c) : a = c := by simp_rw [← ha, hc]

-- `simp_rw` applies rewrite rules multiple times:
example (a b c d : Nat) : a + (b + (c + d)) = ((d + c) + b) + a := by simp_rw [Nat.add_comm]

-- `simp_rw` can also rewrite in assumptions:
example (p : Nat → Prop) (a b : Nat) (h : p (a + b)) : p (b + a) := by
  simp_rw [Nat.add_comm a b] at h; exact h
-- or at multiple assumptions:
example (p : Nat → Prop) (a b : Nat) (h₁ : p (b + a) → p (a + b)) (h₂ : p (a + b)) : p (b + a) := by
  simp_rw [Nat.add_comm a b] at h₁ h₂; exact h₁ h₂
-- or everywhere:
example (p : Nat → Prop) (a b : Nat) (h₁ : p (b + a) → p (a + b)) (h₂ : p (a + b)) : p (a + b) := by
  simp_rw [Nat.add_comm a b] at *; exact h₁ h₂

-- `simp` and `rw`, alone, can't close this goal. But `simp_rw` can
example {a : Nat}
  (h1 : ∀ a b : Nat, a - 1 ≤ b ↔ a ≤ b + 1)
  (h2 : ∀ a b : Nat, a ≤ b ↔ ∀ c, c < a → c < b) :
  (∀ b, a - 1 ≤ b) = ∀ b c : Nat, c < a → c < b + 1 := by
  simp_rw [h1, h2]

set_option linter.unusedTactic false in
-- `simp_rw` respects config options
example : 1 = 2 := by
  let a := 2
  show 1 = a
  simp_rw -zeta []
  guard_target =ₛ 1 = a
  exact test_sorry

/--
error: no goals to be solved
-/
-- check that `simp_rw` does not "spill over" goals
#guard_msgs in
example {n : Nat} (hn : n = 0) : (n = 0) ∧ (n = 0) := by
  constructor
  simp_rw [hn, hn]  -- does this work?
```
