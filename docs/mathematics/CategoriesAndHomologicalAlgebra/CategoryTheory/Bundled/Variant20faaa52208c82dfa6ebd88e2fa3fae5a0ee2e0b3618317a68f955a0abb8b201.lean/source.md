# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bundled.Variant20faaa52208c82dfa6ebd88e2fa3fae5a0ee2e0b3618317a68f955a0abb8b201

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `996cf0b6236a2b200c279090223f2114bcf87b31` · SHA-256 `6f647590a2d5bdfe7f8904b3090a05d62a50b8d84ab2c8b866fb005785413186`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bundled.Variant63014ec58d0f0f5422425204580df50581ba4d6ae6346bc766a3e086f5fc13fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63014ec58d0f0f5422425204580df50581ba4d6ae6346bc766a3e086f5fc13fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Bundled.Variant63014ec58d0f0f5422425204580df50581ba4d6ae6346bc766a3e086f5fc13fd","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"63014ec58d0f0f5422425204580df50581ba4d6ae6346bc766a3e086f5fc13fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/ConcreteCategory/Bundled.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Johannes Hölzl, Reid Barton, Sean Leather
-/
import Mathlib.Init
import Batteries.Tactic.Lint.Misc

/-!
# Bundled types

`Bundled c` provides a uniform structure for bundling a type equipped with a type class.

We provide `Category` instances for these in
`Mathlib/CategoryTheory/HasForget/UnbundledHom.lean`
(for categories with unbundled homs, e.g. topological spaces)
and in `Mathlib/CategoryTheory/HasForget/BundledHom.lean`
(for categories with bundled homs, e.g. monoids).
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bundled.Variant63014ec58d0f0f5422425204580df50581ba4d6ae6346bc766a3e086f5fc13fd

universe u v

namespace CategoryTheory

variable {c d : Type u → Type v}

/-- `Bundled` is a type bundled with a type class instance for that type. Only
the type class is exposed as a parameter. -/
structure Bundled (c : Type u → Type v) : Type max (u + 1) v where
  /-- The underlying type of the bundled type -/
  α : Type u
  /-- The corresponding instance of the bundled type class -/
  str : c α := by infer_instance

namespace Bundled

attribute [coe] α

-- This is needed so that we can ask for an instance of `c α` below even though Lean doesn't know
-- that `c α` is a typeclass.
set_option checkBinderAnnotations false in

-- Usually explicit instances will provide their own version of this, e.g. `MonCat.of` and
-- `TopCat.of`.
/-- A generic function for lifting a type equipped with an instance to a bundled object. -/
def of {c : Type u → Type v} (α : Type u) [str : c α] : Bundled c :=
  ⟨α, str⟩

instance coeSort : CoeSort (Bundled c) (Type u) :=
  ⟨Bundled.α⟩

theorem coe_mk (α) (str) : (@Bundled.mk c α str : Type u) = α :=
  rfl

/-- Map over the bundled structure -/
abbrev map (f : ∀ {α}, c α → d α) (b : Bundled c) : Bundled d :=
  ⟨b, f b.str⟩

end Bundled

end CategoryTheory
```
