# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TermCongr.Variant1f633b95f23d20bf4fffaab4c56eea8470a75fe84e3f1aead7aaba94c68f36b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83893079345f3ae63a0509d73caf06531df2368a` · SHA-256 `293e5fe67644dcdd901cf741c376fbcdc298129871f8908f3a55ecfc353ab69d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant1b12e247069a984c353bca04705da7f3a47ad8c6242afee084827218f834b456","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1b12e247069a984c353bca04705da7f3a47ad8c6242afee084827218f834b456","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Foo.Variant1b12e247069a984c353bca04705da7f3a47ad8c6242afee084827218f834b456","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1b12e247069a984c353bca04705da7f3a47ad8c6242afee084827218f834b456","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/TermCongr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.TermCongr

/-!
`congr(...)` tests needing no additional imports
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant1b12e247069a984c353bca04705da7f3a47ad8c6242afee084827218f834b456

namespace Tests

set_option autoImplicit true

--set_option trace.Elab.congr true

section congr_thms
/-! Tests that `congr(...)` subsumes `congr_arg`/`congr_fun`/`congr`.
Uses `(... :)` to make sure `congr(...)` is not seeing expected types. -/

example {α β : Sort _} (f : α → β) (x y : α) (h : x = y) :
    f x = f y := (congr(f $h) :)

example {α : Sort _} {β : α → Sort _} (f g : (x : α) → β x) (h : f = g) (x : α) :
    f x = g x := (congr($h x) :)

example {α β : Sort _} (f g : α → β) (hf : f = g) (x y : α) (hx : x = y) :
    f x = g y := (congr($hf $hx) :)

example {α β : Sort _} (f : α → β) (x y : α) (h : x = y) :
    congr_arg f h = congr(f $h) := rfl

example {α : Sort _} {β : α → Sort _} (f g : (x : α) → β x) (h : f = g) (x : α) :
    congr_fun h x = congr($h x) := rfl

example {α β : Sort _} (f g : α → β) (hf : f = g) (x y : α) (hx : x = y) :
    congr hf hx = congr($hf $hx) := rfl

end congr_thms

example (f : Nat → Nat) (x y : Nat) (h : x = y) : f x = f y := by
  have h := congr(f $h) -- if `replace` instead of `have`, like `apply_fun f at h`
  guard_hyp h :ₛ f x = f y
  exact h

example (x y : Nat) (h : x = y) : 1 + x = 1 + y := congr(_ + $h)

example (x y : Nat) (h : x = y) : True := by
  have : 1 + x = _ := congr(_ + $h)
  guard_hyp this : 1 + x = 1 + y
  trivial

example : 0 + 1 = 1 := congr(_)

example : 0 + 1 = 1 := congr(_ + 1)

example [Decidable p] (x y : Nat) (h : x = y) : True := by
  have := congr(if p then 1 else $h)
  guard_hyp this :ₛ (if p then 1 else x) = (if p then 1 else y)
  trivial

example (x y z w : Nat) (h : x = y) (h' : z = w) : 1 + x * z^2 = 1 + y * w^2 := by
  refine congr(1 + $(?_) * $(?_)^2)
  · exact h
  · exact h'

example (x y z w : Nat) (h : x = y) (h' : z = w) : 1 + x * z^2 = 1 + y * w^2 := by
  refine congr(1 + $(?foo) * $(?bar)^2)
  case foo => exact h
  case bar => exact h'

example (p q : Prop) (h : p = q) : p ↔ q := congr($h)

example (p q : Prop) (h : p = q) : p ↔ q := by
  refine congr($(?_))
  guard_target = p ↔ q
  exact congr($h)

example (p q : Prop) (h : p = q) : Nonempty p = Nonempty q := congr(Nonempty $h)

example (p q : Prop) (h : p ↔ q) : Nonempty p = Nonempty q := congr(Nonempty $h)

example (p q : Prop) (h : p ↔ q) : Nonempty p ↔ Nonempty q := Iff.of_eq <| congr(Nonempty $h)

example (p q : Prop) (h : p ↔ q) : Nonempty p ↔ Nonempty q := congr(Nonempty $h)

example (a b c d e f : Nat) (hab : a = b) (hcd : c = d) (hef : e = f) : True := by
  have := congr(1 + $hab + $hcd * $hef)
  guard_hyp this : 1 + a + c * e = 1 + b + d * f
  trivial

example (f g : Nat → Nat) (h : ∀ n, f n = g n) :
    (fun n => 1 + f n) = (fun n => 1 + g n) :=
  congr(fun n => 1 + $(h n))

example (f g : Nat → Nat) (h : ∀ n, f n = g n) :
    (fun n => 1 + f n) = (fun n => 1 + g n) := by
  refine congr(fun n => 1 + $(?_))
  guard_target = f n = g n
  apply h

structure Foo where
  (x y : Nat)

example (s : Foo) (h : 1 = 2) : True := by
  have := congr(({s with x := $h} : Foo))
  guard_hyp this : ({ x := 1, y := s.y } : Foo) = { x := 2, y := s.y }
  trivial

example {s t : α → Prop} (h : s = t) :
    (∀ (_ : Subtype s), True) ↔ (∀ (_ : Subtype t), True) :=
  congr(∀ (_ : Subtype $h), True)

example (f g : Nat → Nat → Prop) (h : f = g) :
    (∀ x, ∃ y, f x y) ↔ (∀ x, ∃ y, g x y) :=
  congr(∀ x, ∃ y, $h x y)

example (f g : Nat → Nat → Prop) (h : f = g) :
    (∀ x, ∃ y, f x y) ↔ (∀ x, ∃ y, g x y) :=
  congr(∀ _, ∃ _, $h _ _)

example (f g : Nat → Nat → Prop) (h : f = g) :
    (∀ x, ∃ y, f x y) ↔ (∀ x, ∃ y, g x y) :=
  congr(∀ _, ∃ _, $(by rw [h]))

namespace SubsingletonDependence
/-!
The congruence theorem generator had a bug that leaked fvars.
Reported at https://leanprover.zulipchat.com/#narrow/stream/113489-new-members/topic/what.20the.20heq.2C.20PosSemidef/near/434202080
-/

def f {α : Type} [DecidableEq α] (n : α) (_ : n = n) : α := n

lemma test (n n' : Nat) (h : n = n') (hn : n = n) (hn' : n' = n') :
    f n hn = f n' hn' := by
  have := congr(f $h ‹_›) -- without expected type
  exact congr(f $h _) -- with expected type

end SubsingletonDependence

section limitations
/-! Tests to document current limitations. -/

/--
error: Cannot generate congruence because we need
  Subtype s
to be definitionally equal to
  Subtype t
-/
#guard_msgs in
example {s t : α → Prop} (h : s = t) :
    HEq (fun (n : Subtype s) => true) (fun (n : Subtype t) => true) :=
  congr(fun (n : Subtype $h) => true)

/--
error: Cannot generate congruence because we need
  Subtype s
to be definitionally equal to
  Subtype t
-/
#guard_msgs in
example {s t : α → Prop} (h : s = t) (p : α → Prop) :
    (∀ (n : Subtype s), p n) ↔ (∀ (n : Subtype t), p n) :=
  congr(∀ (n : Subtype $h), p n)

end limitations

end Tests
```
