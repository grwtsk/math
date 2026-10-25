# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Coe.Variant80657e62dcb760cf6e2585672de066204542f3b447b3a93a5907e2a3c61ae9ab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `199d0cfd331c95fcde009beb0eb5b73da4f1fc6d` · SHA-256 `c6306e27f7662cfb8d2aad5bd72d2b3c0dd34c14ee52e74e02065e68b22ab263`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WrappedNat.Variantd476879a5c9eddd1903f9d61878dd99f96a462cc4dd35a09fe7627091cf580e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d476879a5c9eddd1903f9d61878dd99f96a462cc4dd35a09fe7627091cf580e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.WrappedNat.Variantd476879a5c9eddd1903f9d61878dd99f96a462cc4dd35a09fe7627091cf580e1","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d476879a5c9eddd1903f9d61878dd99f96a462cc4dd35a09fe7627091cf580e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/coe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.CoeExt
import Std.Tactic.GuardMsgs


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WrappedNat.Variantd476879a5c9eddd1903f9d61878dd99f96a462cc4dd35a09fe7627091cf580e1

set_option linter.missingDocs false

structure WrappedNat where
  val : Nat


structure WrappedFun (α) where
  fn : Nat → α


structure WrappedType where
  typ : Type

attribute [coe] WrappedNat.val
instance : Coe WrappedNat Nat where coe := WrappedNat.val

#eval Std.Tactic.Coe.registerCoercion ``WrappedFun.fn (some ⟨2, 1, .coeFun⟩)
instance : CoeFun (WrappedFun α) (fun _ => Nat → α) where coe := WrappedFun.fn

#eval Std.Tactic.Coe.registerCoercion ``WrappedType.typ (some ⟨1, 0, .coeSort⟩)
instance : CoeSort WrappedType Type where coe := WrappedType.typ

section coe
variable (n : WrappedNat)

/-- info: ↑n : Nat -/
#guard_msgs in #check n.val
/-- info: ↑n : Nat -/
#guard_msgs in #check (↑n : Nat)

end coe

section coeFun
variable (f : WrappedFun Nat) (g : Nat → WrappedFun Nat) (h : WrappedFun (WrappedFun Nat))

/-- info: ⇑f : Nat → Nat -/
#guard_msgs in #check f.fn
/-- info: ⇑f : Nat → Nat -/
#guard_msgs in #check ⇑f
-- applied functions do not need the `⇑`
/-- info: f 1 : Nat -/
#guard_msgs in #check ⇑f 1

/-- info: ⇑(g 1) : Nat → Nat -/
#guard_msgs in #check ⇑(g 1)
/-- info: (g 1) 2 : Nat -/  -- TODO: remove the `()`?
#guard_msgs in #check g 1 2

/-- info: ⇑h : Nat → WrappedFun Nat -/
#guard_msgs in #check ⇑h
/-- info: h 1 : WrappedFun Nat -/
#guard_msgs in #check h 1
/-- info: ⇑(h 1) : Nat → Nat -/
#guard_msgs in #check ⇑(h 1)
/-- info: (h 1) 2 : Nat -/  -- TODO: remove the `()`?
#guard_msgs in #check h 1 2

end coeFun

section coeSort
variable (t : WrappedType)

/-- info: ↥t : Type -/
#guard_msgs in #check t.typ
/-- info: ↥t : Type -/
#guard_msgs in #check ↥t

end coeSort
```
