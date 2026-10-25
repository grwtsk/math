# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Defs.Variantcf37036443d0def75e8b7289cf4ff53c0952a9ded65d90ebd127f65b9a31f7d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbf65ba7aaa039d42441c7eaba71d3c3ac722551` · SHA-256 `c1e18dd7230fd84d0980d787fa309b0943bbb32e864835277436e1ca9c1d0ca2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsAddRegular.Variant70c0b39b3f4657b0f8e457ffe1ace0230ce9987a73e337d395c72c45f29123dc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"70c0b39b3f4657b0f8e457ffe1ace0230ce9987a73e337d395c72c45f29123dc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsAddRegular.Variant70c0b39b3f4657b0f8e457ffe1ace0230ce9987a73e337d395c72c45f29123dc","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"70c0b39b3f4657b0f8e457ffe1ace0230ce9987a73e337d395c72c45f29123dc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Regular/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
module

public import Mathlib.Tactic.ToAdditive

/-!
# Regular elements

We introduce left-regular, right-regular and regular elements, along with their `to_additive`
analogues add-left-regular, add-right-regular and add-regular elements.

For monoids where _every_ element is regular, see `IsCancelMul` and nearby typeclasses.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsAddRegular.Variant70c0b39b3f4657b0f8e457ffe1ace0230ce9987a73e337d395c72c45f29123dc

@[expose] public section

variable {R : Type*} [Mul R]

/-- A left-regular element is an element `c` such that multiplication on the left by `c`
is injective. -/
@[to_additive (attr := instance_reducible)
  /-- An add-left-regular element is an element `c` such that addition
    on the left by `c` is injective. -/]
def IsLeftRegular (c : R) :=
  (c * ·).Injective

/-- A right-regular element is an element `c` such that multiplication on the right by `c`
is injective. -/
@[to_additive (attr := instance_reducible)
  /-- An add-right-regular element is an element `c` such that addition
    on the right by `c` is injective. -/]
def IsRightRegular (c : R) :=
  (· * c).Injective

/-- An add-regular element is an element `c` such that addition by `c` both on the left and
on the right is injective. -/
structure IsAddRegular {R : Type*} [Add R] (c : R) : Prop where
  /-- An add-regular element `c` is left-regular -/
  left : IsAddLeftRegular c
  /-- An add-regular element `c` is right-regular -/
  right : IsAddRightRegular c

/-- A regular element is an element `c` such that multiplication by `c` both on the left and
on the right is injective. -/
structure IsRegular (c : R) : Prop where
  /-- A regular element `c` is left-regular -/
  left : IsLeftRegular c
  /-- A regular element `c` is right-regular -/
  right : IsRightRegular c

attribute [simp] IsRegular.left IsRegular.right

attribute [to_additive] IsRegular

@[to_additive]
theorem isRegular_iff {c : R} : IsRegular c ↔ IsLeftRegular c ∧ IsRightRegular c :=
  ⟨fun ⟨h1, h2⟩ => ⟨h1, h2⟩, fun ⟨h1, h2⟩ => ⟨h1, h2⟩⟩
```
