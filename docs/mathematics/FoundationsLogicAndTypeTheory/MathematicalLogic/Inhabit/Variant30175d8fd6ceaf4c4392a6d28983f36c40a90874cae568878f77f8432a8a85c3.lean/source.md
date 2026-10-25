# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inhabit.Variant30175d8fd6ceaf4c4392a6d28983f36c40a90874cae568878f77f8432a8a85c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b03097d2328a499b159a48e00fc0bfb60979b196` · SHA-256 `5c7aa3047ee107f6e02d2c45d4babb8121bb19d37da313c57ca2085e5ede74fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Unique.Variant2ccb0aea0ded9ce46c2835c718a9f908d998605e7add8c0da9a8adb07547692a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2ccb0aea0ded9ce46c2835c718a9f908d998605e7add8c0da9a8adb07547692a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Unique.Variant2ccb0aea0ded9ce46c2835c718a9f908d998605e7add8c0da9a8adb07547692a","mathematical_subject":"Logic.Foundations","original_sha256":"2ccb0aea0ded9ce46c2835c718a9f908d998605e7add8c0da9a8adb07547692a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Inhabit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Inhabit


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Unique.Variant2ccb0aea0ded9ce46c2835c718a9f908d998605e7add8c0da9a8adb07547692a

namespace InhabitTests

universe u

-- Most basic test (prop)
noncomputable example {p : Prop} [Nonempty p] : Inhabited p := by
  inhabit p
  assumption

-- Most basic test (nonprop)
noncomputable example {α : Type} [Nonempty α] : Inhabited α := by
  inhabit α
  assumption

-- Confirms inhabit can handle higher type universes
noncomputable example {α : Type 3} [Nonempty α] : Inhabited α := by
  inhabit α
  assumption

-- Confirms that inhabit can find Nonempty instances even if they're in the local context
noncomputable example {α : Type} : Nonempty α → Inhabited α := by
  intro nonempty_α
  inhabit α
  assumption

-- Confirms that inhabit assigns to the correct name when given one
noncomputable example {p : Prop} [Nonempty p] : Inhabited p := by
  inhabit p_inhabited : p
  exact p_inhabited

-- Test for the issue that required generalizing `nonempty_to_inhabited` to `Sort`.
section Unique

structure Unique (α : Sort u) extends Inhabited α where
  uniq : ∀ a : α, a = default

/-- Construct `unique` from `inhabited` and `subsingleton`. Making this an instance would create
a loop in the class inheritance graph. -/
abbrev Unique.mk' (α : Sort u) [h₁ : Inhabited α] [Subsingleton α] : Unique α :=
  { h₁ with uniq := fun _ => Subsingleton.elim _ _ }

noncomputable example {α : Sort u} [Subsingleton α] [Nonempty α] : Unique α := by
  inhabit α
  exact Unique.mk' α

end Unique

axiom α : Type
axiom a : α
instance : Nonempty α := Nonempty.intro a

-- Confirms that inhabit can find Nonempty instances that aren't in the local context
noncomputable example : Inhabited α := by
  inhabit α
  assumption

end InhabitTests
```
