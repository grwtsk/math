# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Propose.Variant70b5212ac7b70ff0f689d6e6dd61c2e8b402185530f617e18c32a35905fa5e7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a414a0d530e888b9bb294277a0a37d2d3d1f3a10` · SHA-256 `926105ae30f5d97950676bd3030254df2ced929e8c7a97d234106cd0a5707dcd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Foo.Variantd563267f27e683885b2a7db65543546465ed618900817448a1da20ca7cf8cc9e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d563267f27e683885b2a7db65543546465ed618900817448a1da20ca7cf8cc9e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Foo.Variantd563267f27e683885b2a7db65543546465ed618900817448a1da20ca7cf8cc9e","mathematical_subject":"Computation.DataStructures","original_sha256":"d563267f27e683885b2a7db65543546465ed618900817448a1da20ca7cf8cc9e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/propose.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Propose
import Mathlib.Tactic.GuardHypNums
import Mathlib.Algebra.Ring.Associated
import Mathlib.Data.Set.Subsingleton
import Batteries.Data.List.Lemmas

-- For debugging, you may find these options useful:
-- set_option trace.Tactic.propose true
-- set_option trace.Meta.Tactic.solveByElim true

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Foo.Variantd563267f27e683885b2a7db65543546465ed618900817448a1da20ca7cf8cc9e

set_option autoImplicit true
set_option linter.unusedVariables false

theorem foo (L M : List α) (w : L.Disjoint M) (m : a ∈ L) : a ∉ M := fun h => w m h

/--
info: Try this: have : M.Disjoint L := List.disjoint_symm w
---
info: Try this: have : K.Disjoint M := List.disjoint_of_subset_left m w
-/
#guard_msgs in
example (K L M : List α) (w : L.Disjoint M) (m : K ⊆ L) : True := by
  have? using w
  -- have : List.Disjoint K M := List.disjoint_of_subset_left m w
  -- have : List.Disjoint M L := List.disjoint_symm w
  trivial

/--
info: Try this: have : K.Disjoint M := List.disjoint_of_subset_left m w
---
info: Try this: have : K.Disjoint M := List.disjoint_of_subset_left m w
-/
#guard_msgs in
example (K L M : List α) (w : L.Disjoint M) (m : K ⊆ L) : True := by
  have? using w, m
  -- have : List.Disjoint K M := List.disjoint_of_subset_left m w
  have?! using w, m
  guard_hyp List.disjoint_of_subset_left : List.Disjoint K M :=
    _root_.List.disjoint_of_subset_left m w
  fail_if_success
    have : M.Disjoint L := by assumption
  have : K.Disjoint M := by assumption
  trivial

def bar (n : Nat) (x : String) : Nat × String := (n + x.length, x)

/--
info: Try this: let a : ℕ × String := bar p.1 p.2
---
info: Try this: let _ : ℕ × String := bar p.1 p.2
-/
#guard_msgs in
example (p : Nat × String) : True := by
  fail_if_success have? using p
  have? a : Nat × String using p.1, p.2
  have? : Nat × _ using p.1, p.2
  trivial

/--
info: Try this: have : M.Disjoint L := List.disjoint_symm w
---
info: Try this: have : a ∉ M := foo L M w m
-/
#guard_msgs in
example (_K L M : List α) (w : L.Disjoint M) (m : a ∈ L) : True := by
  have?! using w
  guard_hyp List.disjoint_symm : List.Disjoint M L := _root_.List.disjoint_symm w
  have : a ∉ M := by assumption
  trivial

/--
info: Try this: have : IsUnit p := isUnit_of_dvd_one h
---
info: Try this: have : ¬IsUnit p := not_unit hp
---
info: Try this: have : p ∣ p * p ↔ p ∣ p ∨ p ∣ p := Prime.dvd_mul hp
---
info: Try this: have : p ∣ p ∨ p ∣ p := dvd_or_dvd hp (Exists.intro p (Eq.refl (p * p)))
---
info: Try this: have : ¬p ∣ 1 := not_dvd_one hp
---
info: Try this: have : IsPrimal p := isPrimal hp
---
info: Try this: have : p ≠ 0 := ne_zero hp
---
info: Try this: have : p ≠ 1 := ne_one hp
-/
#guard_msgs in
-- From Mathlib.Algebra.Associated:
variable {α : Type} [CommMonoidWithZero α] in
open Prime in
theorem dvd_of_dvd_pow (hp : Prime p) {a : α} {n : ℕ} (h : p ∣ a ^ n) : p ∣ a := by
  induction' n with n ih
  · rw [pow_zero] at h
    -- In mathlib, we proceed by two `have` statements:
    -- have := isUnit_of_dvd_one h
    -- have := not_unit hp
    -- `propose!` successfully guesses them both:
    have?! using h
    guard_hyp isUnit_of_dvd_one : IsUnit p := _root_.isUnit_of_dvd_one h
    have?! using hp
    guard_hyp Prime.not_unit : ¬IsUnit p := not_unit hp
    contradiction
  rw [pow_succ'] at h
  obtain dvd_a | dvd_pow := dvd_or_dvd hp h
  · assumption
  exact ih dvd_pow
```
