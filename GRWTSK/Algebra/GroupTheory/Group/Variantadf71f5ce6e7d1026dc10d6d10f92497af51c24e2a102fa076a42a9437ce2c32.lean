-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.ZpowTrick.Variant80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.ZpowTrick.Variant80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a","mathematical_subject":"Algebra.Groups","original_sha256":"80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Group.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Browning, Patrick Massot
-/
import Mathlib.Tactic.Ring
import Mathlib.Tactic.FailIfNoProgress
import Mathlib.Algebra.Group.Commutator

/-!
# `group` tactic

Normalizes expressions in the language of groups. The basic idea is to use the simplifier
to put everything into a product of group powers (`zpow` which takes a group element and an
integer), then simplify the exponents using the `ring` tactic. The process needs to be repeated
since `ring` can normalize an exponent to zero, leading to a factor that can be removed
before collecting exponents again. The simplifier step also uses some extra lemmas to avoid
some `ring` invocations.

## Tags

group_theory
-/


namespace GRWTSK.Algebra.GroupTheory.ZpowTrick.Variant80f58724e32c69c84d30614c94ecd6bc933a04ee33d512d4266c904c64be570a

namespace Mathlib.Tactic.Group

open Lean
open Lean.Meta
open Lean.Parser.Tactic
open Lean.Elab.Tactic

-- The next three lemmas are not general purpose lemmas, they are intended for use only by
-- the `group` tactic.
@[to_additive]
theorem zpow_trick {G : Type*} [Group G] (a b : G) (n m : ℤ) :
    a * b ^ n * b ^ m = a * b ^ (n + m) := by rw [mul_assoc, ← zpow_add]

@[to_additive]
theorem zpow_trick_one {G : Type*} [Group G] (a b : G) (m : ℤ) :
    a * b * b ^ m = a * b ^ (m + 1) := by rw [mul_assoc, mul_self_zpow]

@[to_additive]
theorem zpow_trick_one' {G : Type*} [Group G] (a b : G) (n : ℤ) :
    a * b ^ n * b = a * b ^ (n + 1) := by rw [mul_assoc, mul_zpow_self]

/-- Auxiliary tactic for the `group` tactic. Calls the simplifier only. -/
syntax (name := aux_group₁) "aux_group₁" (location)? : tactic

macro_rules
| `(tactic| aux_group₁ $[at $location]?) =>
  `(tactic| simp -decide -failIfUnchanged only
    [commutatorElement_def, mul_one, one_mul,
      ← zpow_neg_one, ← zpow_natCast, ← zpow_mul,
      Int.natCast_add, Int.natCast_mul,
      Int.mul_neg, Int.neg_mul, neg_neg,
      one_zpow, zpow_zero, zpow_one, mul_zpow_neg_one,
      ← mul_assoc,
      ← zpow_add, ← zpow_add_one, ← zpow_one_add, zpow_trick, zpow_trick_one, zpow_trick_one',
      tsub_self, sub_self, add_neg_cancel, neg_add_cancel]
  $[at $location]?)

/-- Auxiliary tactic for the `group` tactic. Calls `ring_nf` to normalize exponents. -/
syntax (name := aux_group₂) "aux_group₂" (location)? : tactic

macro_rules
| `(tactic| aux_group₂ $[at $location]?) =>
  `(tactic| ring_nf -failIfUnchanged $[at $location]?)

/-- Tactic for normalizing expressions in multiplicative groups, without assuming
commutativity, using only the group axioms without any information about which group
is manipulated.

(For additive commutative groups, use the `abel` tactic instead.)

Example:
```lean
example {G : Type} [Group G] (a b c d : G) (h : c = (a*b^2)*((b*b)⁻¹*a⁻¹)*d) : a*c*d⁻¹ = a := by
  group at h -- normalizes `h` which becomes `h : c = d`
  rw [h]     -- the goal is now `a*d*d⁻¹ = a`
  group      -- which then normalized and closed
```
-/
syntax (name := group) "group" (location)? : tactic

macro_rules
| `(tactic| group $[$loc]?) =>
  `(tactic| repeat (fail_if_no_progress (aux_group₁ $[$loc]? <;> aux_group₂ $[$loc]?)))

end Mathlib.Tactic.Group

/-!
We register `group` with the `hint` tactic.
-/

register_hint group
