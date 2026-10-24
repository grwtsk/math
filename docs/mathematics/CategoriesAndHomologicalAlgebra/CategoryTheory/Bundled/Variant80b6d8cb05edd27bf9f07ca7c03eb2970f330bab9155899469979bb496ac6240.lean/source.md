# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bundled.Variant80b6d8cb05edd27bf9f07ca7c03eb2970f330bab9155899469979bb496ac6240

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `21edb820c3e52660b863422fdadf43a5bdb969b2` · SHA-256 `d8aec25034be56e746d94b894234791074f53f16e9e36e92d59b2d0208a44aec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bundled.Variant6f7b63aae1361ed3380e3f397c5b0fbbec759b71f0055b072e42b3107fa76146","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6f7b63aae1361ed3380e3f397c5b0fbbec759b71f0055b072e42b3107fa76146","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Bundled.Variant6f7b63aae1361ed3380e3f397c5b0fbbec759b71f0055b072e42b3107fa76146","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"6f7b63aae1361ed3380e3f397c5b0fbbec759b71f0055b072e42b3107fa76146","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/ConcreteCategory/Bundled.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Johannes Hölzl, Reid Barton, Sean Leather
-/
module

public import Mathlib.Init
public import Batteries.Tactic.Lint.Misc

/-!
# Bundled types

`Bundled c` provides a uniform structure for bundling a type equipped with a type class.

We provide `Category` instances for these in
`Mathlib/CategoryTheory/ConcreteCategory/UnbundledHom.lean`
(for categories with unbundled homs, e.g. topological spaces)
and in `Mathlib/CategoryTheory/ConcreteCategory/BundledHom.lean`
(for categories with bundled homs, e.g. monoids).

Note: this structure will be deprecated in the future in favor of defining the category manually
and then providing the `ConcreteCategory` instance on top of this. See
`Mathlib/CategoryTheory/ConcreteCategory/Basic.lean` for more details.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bundled.Variant6f7b63aae1361ed3380e3f397c5b0fbbec759b71f0055b072e42b3107fa76146

@[expose] public section

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
@[implicit_reducible]
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
