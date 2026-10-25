# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExistsAndEq.Variant1709388582a08bb1ab2ab42cc276c497c2006331a82b98b300e6fc604cb459ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d66e76f85e1b42808f0976ba96379a7763874403` · SHA-256 `163deff3190f7473d12040042fbe9d0e6946f353c17ed33f0724050bcf48bd81`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExistsAndEq.Variantd19c3cd1c6703dfcb215571ca34d67569105e0b2b5587e8cd54012932affcb06","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d19c3cd1c6703dfcb215571ca34d67569105e0b2b5587e8cd54012932affcb06","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ExistsAndEq.Variantd19c3cd1c6703dfcb215571ca34d67569105e0b2b5587e8cd54012932affcb06","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d19c3cd1c6703dfcb215571ca34d67569105e0b2b5587e8cd54012932affcb06","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Simproc/ExistsAndEq.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Simproc.ExistsAndEq


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExistsAndEq.Variantd19c3cd1c6703dfcb215571ca34d67569105e0b2b5587e8cd54012932affcb06

universe u v

variable (α : Type u) (β : Type v)

example (P Q : α → Prop) (a : α) (hp : P a) (hq : Q a) :
    ∃ b : α, (P b ∧ b = a) ∧ Q b := by
  simp only [existsAndEq]
  guard_target = (P a ∧ True) ∧ Q a
  exact ⟨⟨hp, trivial⟩, hq⟩

example (a : α) : ∃ b : α, b = a := by
  simp only [existsAndEq]

/--
error: `simp` made no progress
-/
#guard_msgs in
example (f : α → α) : ∃ a : α, a = f a := by
  simp only [existsAndEq]

/--
error: `simp` made no progress
-/
#guard_msgs in
example {β : α → Type v} (a : α) :
    ∃ x, ∃ y : β x, x = a := by
  simp only [existsAndEq]

example (f : β → α) {P Q : β → Prop} :
    (∃ y b, P b ∧ f b = y ∧ Q b) ↔ ∃ b, P b ∧ Q b := by
  simp only [existsAndEq, true_and]

example (f : β → α) {P Q : β → Prop} :
    (∃ x b, P b ∧ (∃ c, f c = x) ∧ (∃ d, Q d ∧ f d = x) ∧ Q b) =
    ∃ b c, P b ∧ f c = f c ∧ (∃ d, Q d ∧ f d = f c) ∧ Q b := by
  simp only [existsAndEq]

example (f : β → α) {P : α → Prop} :
    (∃ a, P a ∧ ∃ b, a = f b) ↔ ∃ b, P (f b) := by
  simp only [existsAndEq, and_true]

-- The simproc should not trigger on `a = a'` when `a'` depends on `a`
/--
error: `simp` made no progress
-/
#guard_msgs in
example {α : Type} : ∃ a : α, ∃ b : α → α, b a = a := by
  simp only [existsAndEq]

-- lemmas like `Subtype.exists` and `Prod.exists` prevent `existsAndEq`
-- from working as a post simproc, so it is a pre simproc.
/--
error: unsolved goals
α : Type u
β : Type v
P Q : α × β → Prop
a : α × β
⊢ (∃ a_1 b, (P (a_1, b) ∧ (a_1, b) = a) ∧ Q (a_1, b)) ↔ P a ∧ Q a
-/
#guard_msgs in
set_option linter.unusedSimpArgs false in
example (P Q : α × β → Prop) (a : α × β) :
    (∃ b : (α × β), (P b ∧ b = a) ∧ Q b) ↔ P a ∧ Q a := by
  simp only [Prod.exists, existsAndEq]

example (P Q : α × β → Prop) (a : α × β) :
    (∃ b : (α × β), (P b ∧ b = a) ∧ Q b) ↔ P a ∧ Q a := by
  simp

-- # Metavariables in goals

-- The simproc must return a closed proof even when the goal contains metavariables, which is what
-- `aesop` presents to it: here the goal is `∃ a : Nat, a = Nat.succ ?b ∧ 0 < ?b`.
open Lean Meta Qq in
#eval show MetaM Unit from do
  let b : Q(Nat) ← mkFreshExprMVarQ q(Nat)
  let e : Q(Prop) := q(∃ a : Nat, a = Nat.succ $b ∧ 0 < $b)
  let simprocs ← ({} : Simprocs).add ``ExistsAndEq.existsAndEq (post := false)
  let (r, _) ← Simp.main e (← Simp.mkContext) (methods := Simp.mkDefaultMethodsCore #[simprocs])
  let some pf := r.proof? | throwError "the simproc did not fire"
  let pf ← instantiateMVars pf
  let leftover := (← getMVars pf).filter (· != b.mvarId!)
  unless leftover.isEmpty do
    throwError "metavariables left in the proof: {leftover.map mkMVar}\n{pf}"

-- Metavariables may depend on each other: here `?f : Nat → ?β`, and `?β` occurs in the goal too
-- (as it arises when `simpa using` simplifies the type of a term whose implicit arguments are not
-- determined yet). They have to be handled consistently.
example : ∃ (β : Type) (f : Nat → β), ∃ b, f 0 = b := by
  refine ⟨?_, ?_, ?_⟩
  rotate_left 2
  simp only [existsAndEq]
  · exact Nat
  · exact id
```
