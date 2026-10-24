# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Rewrites.Variantdbb2d3e185b25e621e0aea1dc7cf7c0fa4a05bc4e9c7938e691615b8e4cda79e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbb4e845361b74b8c309fec1ed2ae7707355f2f7` · SHA-256 `b95fac04da1f2092d84d15666168c1bf94ac826738558c1c3a616ef00cc367e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PrimeOfPrime.Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PrimeOfPrime.Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/rewrites.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Rewrites
import Mathlib.Data.Nat.Prime
import Mathlib.CategoryTheory.Category.Basic
import Mathlib.Data.List.Basic
import Mathlib.Algebra.Group.Basic


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PrimeOfPrime.Variant179f3972330bff0fb622877ed2a5dc9be4a70dd8e8f2d18d69cb7c364b549668

set_option autoImplicit true

-- To see the (sorted) list of lemmas that `rw?` will try rewriting by, use:
-- set_option trace.Tactic.rewrites.lemmas true

-- Recall that `rw?` caches the discrimination tree on disk.
-- If you are modifying the way that `rewrites` indexes lemmas,
-- while testing you will probably want to delete
-- `build/lib/MathlibExtras/Rewrites.extra`
-- so that the cache is rebuilt.

set_option autoImplicit true

/--
info: Try this: rw [@List.map_append]
-- "no goals"
-/
#guard_msgs in
example (f : α → β) (L M : List α) : (L ++ M).map f = L.map f ++ M.map f := by
  rw?!

open CategoryTheory

/--
info: Try this: rw [@Category.id_comp]
-- "no goals"
-/
#guard_msgs in
example [Category C] {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) : f ≫ 𝟙 _ ≫ g = f ≫ g := by
  rw?!

/--
info: Try this: rw [@mul_left_eq_self]
-- "no goals"
-/
#guard_msgs in
example [Group G] (h : G) : 1 * h = h := by
  rw?!

example [Group G] (g h : G) : g * g⁻¹ * h = h := by
  rw? -- the right answer is not the first solution, so we can't use rw?!
  /- Prints:
  rw [@Semigroup.mul_assoc]
  -- g * (g⁻¹ * h) = h
  rw [@mul_assoc]
  -- g * (g⁻¹ * h) = h
  rw [@mul_left_eq_self]
  -- g * g⁻¹ = 1
  rw [@mul_inv_self]
  -- 1 * h = h
  rw [@mul_right_inv]
  -- 1 * h = h
  rw [← @division_def]
  -- g / g * h = h
  rw [← @div_eq_mul_inv]
  -- g / g * h = h
  rw [← @DivInvMonoid.div_eq_mul_inv]
  -- g / g * h = h
  rw [@inv_eq_one_div]
  -- g * (1 / g) * h = h
  rw [← @mulRightEmbedding_apply]
  -- ↑(mulRightEmbedding h) (g * g⁻¹) = h
  -/
  rw [mul_inv_self]
  rw [one_mul]

/--
info: Try this: rw [← @Nat.prime_iff]
-- "no goals"
-/
#guard_msgs in
lemma prime_of_prime (n : ℕ) : Prime n ↔ Nat.Prime n := by
  rw?!

example [Group G] (h : G) (hyp : g * 1 = h) : g = h := by
  rw?! at hyp
  assumption

example : ∀ (x y : ℕ), x ≤ y := by
  intros x y
  rw? -- Used to be an error here https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/panic.20and.20error.20with.20rw.3F/near/370495531
  admit

example : ∀ (x y : ℕ), x ≤ y := by
  -- Used to be a panic here https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/panic.20and.20error.20with.20rw.3F/near/370495531
  success_if_fail_with_msg "Could not find any lemmas which can rewrite the goal" rw?
  admit

axiom K : Type
@[instance] axiom K.ring : Ring K

def foo : K → K := sorry

example : foo x = 1 ↔ ∃ k : ℤ, x = k := by
  rw? -- Used to panic, see https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/panic.20and.20error.20with.20rw.3F/near/370598036
  admit

lemma six_eq_seven : 6 = 7 := sorry

-- This test also verifies that we are removing duplicate results;
-- it previously also reported `Nat.cast_ofNat`
/--
info: Try this: rw [six_eq_seven]
-- ∀ (x : ℕ), x ≤ 7
---
info: Try this: rw [← @Nat.cast_eq_ofNat]
-- ∀ (x : ℕ), x ≤ ↑6
---
warning: declaration uses 'sorry'
-/
#guard_msgs in
example : ∀ (x : ℕ), x ≤ 6 := by
  rw?!
  guard_target = ∀ (x : ℕ), x ≤ 7
  admit

example : ∀ (x : ℕ) (w : x ≤ 6), x ≤ 8 := by
  rw?!
  guard_target = ∀ (x : ℕ) (w : x ≤ 7), x ≤ 8
  admit

-- check we can look inside let expressions
/--
info: Try this: rw [@AddCommMonoidWithOne.add_comm]
-- "no goals"
-/
#guard_msgs in
example (n : ℕ) : let y := 3; n + y = 3 + n := by
  rw?!

axiom α : Type
axiom f : α → α
axiom z : α
axiom f_eq (n) : f n = z

-- Check that the same lemma isn't used multiple times.
-- This used to report two redundant copies of `f_eq`.
-- It be lovely if `rw?` could produce two *different* rewrites by `f_eq` here!
/--
info: Try this: rw [f_eq]
-- z = f m
-/
#guard_msgs in
lemma test : f n = f m := by
  rw?
  rw [f_eq, f_eq]

-- Check that we can rewrite by local hypotheses.
/--
info: Try this: rw [h]
-- "no goals"
-/
#guard_msgs in
example (h : 1 = 2) : 2 = 1 := by
  rw?!

def zero : Nat := 0

-- This used to (incorrectly!) succeed because `rw?` would try `rfl`,
-- rather than `withReducible` `rfl`.
example : zero = 0 := by
  rw?!
  sorry
```
