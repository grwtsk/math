# Complete source: GRWTSK.Analysis.MeasureTheory.Basic.Variantdbd51271f1a830020d65da7666b55dd01df793ad45cbbd1218724cfb566162fa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97b86fc80c3875f478a9c7f8d791397e40db0153` · SHA-256 `85496490ad8882f31ccd75bfe3eef8812c536ea6e89da1205315b29a4028431d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MyAdd.Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MyAdd.Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Tactic/GCongr/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Measure.CompleteLattice

/-!
# Testing for the `gcongr` tactic
-/

/-
Test that `gcongr` lemmas are applied in the `reducible` transparency by default.
Previously, `DFunLike.coe` would be unfolded when applying a `@[gcongr]` lemma.
-/

namespace GRWTSK.Analysis.MeasureTheory.MyAdd.Variant2590d9eb43139074daf7a0a83c98af28f6521026f9c88136f19db1e560801f91

section transparency
open MeasureTheory

variable {α : Type*} (a : Set α) {μ : OuterMeasure α} {μ' : OuterMeasure α}

@[gcongr high] lemma mono_outerMeasure (h : μ ≤ μ') : μ a ≤ μ' a := h a
example (h : μ ≤ μ') : μ a ≤ μ' a := by gcongr

variable [MeasurableSpace α] {ν : Measure α} {ν' : Measure α}

@[gcongr] lemma mono_measure (h : ν ≤ ν') : ν a ≤ ν' a := h a
example (h : ν ≤ ν') : ν a ≤ ν' a := by gcongr

end transparency

/-
Test that a more general `@[gcongr]` lemma always applies, and the resulting reflexive goals
are closed with `rfl`.
-/
section rfl

axiom myAdd : Nat → Nat → Nat

axiom rel : Nat → Nat → Prop

local infix:50 "~" => rel

variable {a b c d : Nat}

@[gcongr] axiom myAdd_mono : a ~ c → b ~ d → myAdd a b ~ myAdd c d

axiom myAdd_rfl : a ~ a

/--
error: unsolved goals
case a
a b c d : ℕ
h : b~d
⊢ a~a

case a
a b c d : ℕ
h : b~d
⊢ c~c
-/
#guard_msgs in
example (h : b ~ d) : myAdd a (myAdd b c) ~ myAdd a (myAdd d c) := by
  gcongr

/--
error: Tactic `gcongr` failed: subgoal a~a is not allowed by the provided pattern and is not closed by `rfl`

case a
a b c d : ℕ
h : b~d
⊢ a~a
-/
#guard_msgs in
example (h : b ~ d) : myAdd a (myAdd b c) ~ myAdd a (myAdd d c) := by
  gcongr myAdd _ (myAdd ?_ _)

attribute [refl] myAdd_rfl

example (h : b ~ d) : myAdd a (myAdd b c) ~ myAdd a (myAdd d c) := by
  gcongr

example (h : b ~ d) : myAdd a (myAdd b c) ~ myAdd a (myAdd d c) := by
  gcongr myAdd _ (myAdd ?_ _)

end rfl

-- Test some different ways of using the `@[gcongr]` tag

axiom foo : Nat → Prop

axiom foo_mono_iff (a b) : a ≤ b ↔ (foo a → foo b)
attribute [local gcongr] foo_mono_iff in example (a b) (h : a ≤ b) : foo a → foo b := by gcongr

axiom foo_mono_iff_rev (a b) : (foo a → foo b) ↔ a ≤ b
attribute [local gcongr] foo_mono_iff_rev in example (a b) (h : a ≤ b) : foo a → foo b := by gcongr

axiom foo_monotone : Monotone foo
attribute [local gcongr] foo_monotone in example (a b) (h : a ≤ b) : foo a ≤ foo b := by gcongr

axiom foo_mono_rev (a b) : foo a → a ≤ b → foo b
attribute [local gcongr] foo_mono_rev in example (a b) (h : a ≤ b) : foo a → foo b := by gcongr
```
