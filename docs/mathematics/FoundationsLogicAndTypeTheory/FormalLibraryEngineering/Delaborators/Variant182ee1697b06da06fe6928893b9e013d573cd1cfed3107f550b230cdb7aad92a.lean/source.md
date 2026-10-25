# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Delaborators.Variant182ee1697b06da06fe6928893b9e013d573cd1cfed3107f550b230cdb7aad92a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e70fbc26662f0ef8da7f74d4c0f296546e18fc87` · SHA-256 `c60c08eaeff7fb584fd5c20275079f0db78930c48b2bc0644aca83131cfcf134`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Delaborators.Variant3da0ceb3ed69d31d78938714b6bc2e2ec7d15136f9fe2be77abb40971b6067c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3da0ceb3ed69d31d78938714b6bc2e2ec7d15136f9fe2be77abb40971b6067c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Delaborators.Variant3da0ceb3ed69d31d78938714b6bc2e2ec7d15136f9fe2be77abb40971b6067c6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"3da0ceb3ed69d31d78938714b6bc2e2ec7d15136f9fe2be77abb40971b6067c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/delaborators.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Util.Delaborators
import Mathlib.Data.Set.BooleanAlgebra


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Delaborators.Variant3da0ceb3ed69d31d78938714b6bc2e2ec7d15136f9fe2be77abb40971b6067c6

section PiNotation
variable (P : Nat → Prop) (α : Nat → Type) (s : Set ℕ)

/-- info: ∀ x > 0, P x : Prop -/
#guard_msgs in
#check ∀ x, x > 0 → P x

/-- info: ∀ x > 0, P x : Prop -/
#guard_msgs in
#check ∀ x > 0, P x

/-- info: ∀ x ≥ 0, P x : Prop -/
#guard_msgs in
#check ∀ x, x ≥ 0 → P x

/-- info: ∀ x ≥ 0, P x : Prop -/
#guard_msgs in
#check ∀ x ≥ 0, P x

/-- info: ∀ x < 0, P x : Prop -/
#guard_msgs in
#check ∀ x < 0, P x

/-- info: ∀ x < 0, P x : Prop -/
#guard_msgs in
#check ∀ x, x < 0 → P x

/-- info: ∀ x ≤ 0, P x : Prop -/
#guard_msgs in
#check ∀ x ≤ 0, P x

/-- info: ∀ x ≤ 0, P x : Prop -/
#guard_msgs in
#check ∀ x, x ≤ 0 → P x

/-- info: ∀ x ∈ s, P x : Prop -/
#guard_msgs in
#check ∀ x ∈ s, P x

/-- info: ∀ x ∈ s, P x : Prop -/
#guard_msgs in
#check ∀ x, x ∈ s → P x

/-- info: ∀ x ∉ s, P x : Prop -/
#guard_msgs in
#check ∀ x ∉ s,P x

/-- info: ∀ x ∉ s, P x : Prop -/
#guard_msgs in
#check ∀ x, x ∉ s → P x

variable (Q : Set ℕ → Prop)

/-- info: ∀ t ⊆ s, Q t : Prop -/
#guard_msgs in
#check ∀ t ⊆ s, Q t

/-- info: ∀ t ⊆ s, Q t : Prop -/
#guard_msgs in
#check ∀ t, t ⊆ s → Q t

/-- info: ∀ t ⊂ s, Q t : Prop -/
#guard_msgs in
#check ∀ t ⊂ s, Q t

/-- info: ∀ t ⊂ s, Q t : Prop -/
#guard_msgs in
#check ∀ t, t ⊂ s → Q t

/-- info: ∀ t ⊇ s, Q t : Prop -/
#guard_msgs in
#check ∀ t ⊇ s, Q t

/-- info: ∀ t ⊇ s, Q t : Prop -/
#guard_msgs in
#check ∀ t, t ⊇ s → Q t

/-- info: ∀ t ⊃ s, Q t : Prop -/
#guard_msgs in
#check ∀ t ⊃ s, Q t

/-- info: ∀ t ⊃ s, Q t : Prop -/
#guard_msgs in
#check ∀ t, t ⊃ s → Q t

/-- info: (x : ℕ) → α x : Type -/
#guard_msgs in
#check (x : Nat) → α x

/-!
Disabling binder predicates
-/
/-- info: ∀ x > 0, P x : Prop -/
#guard_msgs in
#check ∀ x > 0, P x
/-- info: ∀ (x : ℕ), x > 0 → P x : Prop -/
#guard_msgs in
set_option pp.mathlib.binderPredicates false in
#check ∀ x > 0, P x

/-- info: ∃ x > 0, P x : Prop -/
#guard_msgs in
#check ∃ x > 0, P x
/-- info: ∃ x, x > 0 ∧ P x : Prop -/
#guard_msgs in
set_option pp.mathlib.binderPredicates false in
#check ∃ x > 0, P x

/-!
Opening the `PiNotation` namespace enables `Π` notation.
-/
open PiNotation

/-- info: Π (x : ℕ), α x : Type -/
#guard_msgs in
#check (x : Nat) → α x

/-- info: ∀ (x : ℕ), P x : Prop -/
#guard_msgs in
#check (x : Nat) → P x

/-!
Note that the implementation of the `Π` delaborator in `Mathlib/Util/Delaborators.lean`
does not (yet?) make use of binder predicates.
-/
/-- info: Π (x : ℕ), x > 0 → α x : Type -/
#guard_msgs in
#check Π x > 0, α x
/-- info: Π (x : ℕ), x > 0 → α x : Type -/
#guard_msgs in
set_option pp.mathlib.binderPredicates false in
#check Π x > 0, α x

end PiNotation

section UnionInter
variable (s : ℕ → Set ℕ) (u : Set ℕ) (p : ℕ → Prop)

/-- info: ⋃ n ∈ u, s n : Set ℕ -/
#guard_msgs in
#check ⋃ n ∈ u, s n

/-- info: ⋂ n ∈ u, s n : Set ℕ -/
#guard_msgs in
#check ⋂ n ∈ u, s n

end UnionInter

section CompleteLattice
/-- info: ⨆ i ∈ Set.univ, (i = i) : Prop -/
#guard_msgs in
#check ⨆ (i : Nat) (_ : i ∈ Set.univ), (i = i)

/-- info: ⨅ i ∈ Set.univ, (i = i) : Prop -/
#guard_msgs in
#check ⨅ (i : Nat) (_ : i ∈ Set.univ), (i = i)

end CompleteLattice

section existential

/-- info: ∃ i ≥ 3, i = i : Prop -/
#guard_msgs in
#check ∃ (i : Nat), i ≥ 3 ∧ i = i

/-- info: ∃ i > 3, i = i : Prop -/
#guard_msgs in
#check ∃ (i : Nat), i > 3 ∧ i = i

/-- info: ∃ i ≤ 3, i = i : Prop -/
#guard_msgs in
#check ∃ (i : Nat), i ≤ 3 ∧ i = i

/-- info: ∃ i < 3, i = i : Prop -/
#guard_msgs in
#check ∃ (i : Nat), i < 3 ∧ i = i

variable (s : Set ℕ) (P : ℕ → Prop) (Q : Set ℕ → Prop)

/-- info: ∃ x ∉ s, P x : Prop -/
#guard_msgs in
#check ∃ x ∉ s, P x

/-- info: ∃ x ∉ s, P x : Prop -/
#guard_msgs in
#check ∃ x, x ∉ s ∧ P x

variable (Q : Set ℕ → Prop)

/-- info: ∃ t ⊆ s, Q t : Prop -/
#guard_msgs in
#check ∃ t ⊆ s, Q t

/-- info: ∃ t ⊆ s, Q t : Prop -/
#guard_msgs in
#check ∃ t, t ⊆ s ∧ Q t

/-- info: ∃ t ⊂ s, Q t : Prop -/
#guard_msgs in
#check ∃ t ⊂ s, Q t

/-- info: ∃ t ⊂ s, Q t : Prop -/
#guard_msgs in
#check ∃ t, t ⊂ s ∧ Q t

/-- info: ∃ t ⊇ s, Q t : Prop -/
#guard_msgs in
#check ∃ t ⊇ s, Q t

/-- info: ∃ t ⊇ s, Q t : Prop -/
#guard_msgs in
#check ∃ t, t ⊇ s ∧ Q t

/-- info: ∃ t ⊃ s, Q t : Prop -/
#guard_msgs in
#check ∃ t ⊃ s, Q t

/-- info: ∃ t ⊃ s, Q t : Prop -/
#guard_msgs in
#check ∃ t, t ⊃ s ∧ Q t

/-- info: ∃ n k, n = k : Prop -/
#guard_msgs in
#check ∃ n k, n = k

/-- info: ∃ n k, n = k : Prop -/
#guard_msgs in
#check ∃ n, ∃ k, n = k

section merging

/-- info: ∃ (_ : True), True : Prop -/
#guard_msgs in #check ∃ (_ : True), True

/-- info: ∃ (_ : True), ∃ x, x = x : Prop -/
#guard_msgs in #check ∃ (_ : True) (x : Nat), x = x

/-- info: ∃ (_ : True), ∃ x y, x = y : Prop -/
#guard_msgs in #check ∃ (_ : True) (x y : Nat), x = y

/-- info: ∃ (_ : True) (_ : False), True : Prop -/
#guard_msgs in #check ∃ (_ : True) (_ : False), True

set_option pp.funBinderTypes true in
/-- info: ∃ (x : ℕ) (x : ℕ), True : Prop -/
#guard_msgs in #check ∃ (_ : Nat) (_ : Nat), True

end merging

end existential

section prod

variable (x : ℕ × ℕ)

/-- info: x.1 : ℕ -/
#guard_msgs in
#check x.1

variable (p : (ℕ → ℕ) × (ℕ → ℕ))

/-- info: p.1 22 : ℕ -/
#guard_msgs in
#check p.1 22

set_option pp.numericProj.prod false in
/-- info: x.fst : ℕ -/
#guard_msgs in
#check x.1

set_option pp.numericProj.prod false in
/-- info: x.snd : ℕ -/
#guard_msgs in
#check x.2

set_option pp.explicit true in
/-- info: @Prod.fst Nat Nat x : Nat -/
#guard_msgs in
#check x.1

set_option pp.explicit true in
/-- info: @Prod.snd Nat Nat x : Nat -/
#guard_msgs in
#check x.2

set_option pp.fieldNotation false in
/-- info: Prod.fst x : ℕ -/
#guard_msgs in
#check x.1

set_option pp.fieldNotation false in
/-- info: Prod.snd x : ℕ -/
#guard_msgs in
#check x.2
end prod
```
