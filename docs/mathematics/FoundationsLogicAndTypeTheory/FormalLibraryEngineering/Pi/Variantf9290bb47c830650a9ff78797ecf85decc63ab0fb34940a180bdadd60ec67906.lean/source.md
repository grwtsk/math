# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pi.Variantf9290bb47c830650a9ff78797ecf85decc63ab0fb34940a180bdadd60ec67906

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94a9fd2046c7b2ce4323bc31fe5cb23e0ca165e3` · SHA-256 `d1bc705b66622e8b5e1ebf9cef94199cf056bb2adb290dd26860a357946646ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntCastApply.Variant23b382c3b70ff0b9b737be03c59d1dc13ca7ca5cada583b00b9c5a1066ba4d63","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"23b382c3b70ff0b9b737be03c59d1dc13ca7ca5cada583b00b9c5a1066ba4d63","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IntCastApply.Variant23b382c3b70ff0b9b737be03c59d1dc13ca7ca5cada583b00b9c5a1066ba4d63","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"23b382c3b70ff0b9b737be03c59d1dc13ca7ca5cada583b00b9c5a1066ba4d63","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Int/Cast/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Data.Int.Notation
public import Mathlib.Tactic.Push.Attr

/-!
# Cast of integers to function types

This file provides a (pointwise) cast from `ℤ` to function types.

## Main declarations

* `Pi.instIntCast`: map `n : ℤ` to the constant function `n : ∀ i, π i`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntCastApply.Variant23b382c3b70ff0b9b737be03c59d1dc13ca7ca5cada583b00b9c5a1066ba4d63

public section

assert_not_exists IsOrderedMonoid RingHom

namespace Pi

variable {ι : Type*} {π : ι → Type*} [∀ i, IntCast (π i)]

instance instIntCast : IntCast (∀ i, π i) where intCast n _ := n

@[simp]
theorem intCast_apply (n : ℤ) (i : ι) : (n : ∀ i, π i) i = n :=
  rfl

@[push ←]
theorem intCast_def (n : ℤ) : (n : ∀ i, π i) = fun _ => ↑n :=
  rfl

end Pi

@[simp]
theorem Sum.elim_intCast_intCast {α β γ : Type*} [IntCast γ] (n : ℤ) :
    Sum.elim (n : α → γ) (n : β → γ) = n :=
  Sum.elim_lam_const_lam_const (γ := γ) n
```
