# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UnivLE.Variant119b0d836453117c16bf1da5d4ad1c64d000e933a671360bcf689e12e1cbe5b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4edf1ddee46df1af00e4ed6083ebf056b0f50455` · SHA-256 `6f7c7ff2fe54db14142eac4a9bc26ada28073eda5ccc4c04c38d2f516865918c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UnivLE.Variantb273c3416b509c159a6cd7834314d12e153a522617e6a9e5b961dd16a36cd29e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b273c3416b509c159a6cd7834314d12e153a522617e6a9e5b961dd16a36cd29e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.UnivLE.Variantb273c3416b509c159a6cd7834314d12e153a522617e6a9e5b961dd16a36cd29e","mathematical_subject":"Logic.Foundations","original_sha256":"b273c3416b509c159a6cd7834314d12e153a522617e6a9e5b961dd16a36cd29e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Logic/UnivLE.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.Logic.Small.Basic

/-!
# UnivLE

A proposition expressing a universe inequality. `UnivLE.{u, v}` expresses that `u ≤ v`,
in the form `∀ α : Type max u v, Small.{v} α`.

See the doc-string for the comparison with an alternative weaker definition.

See also `Mathlib.CategoryTheory.UnivLE` for the statement
`UnivLE.{u,v} ↔ EssSurj (uliftFunctor : Type v ⥤ Type max u v)`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UnivLE.Variantb273c3416b509c159a6cd7834314d12e153a522617e6a9e5b961dd16a36cd29e

set_option autoImplicit true

noncomputable section

/--
A class expressing a universe inequality. `UnivLE.{u, v}` expresses that `u ≤ v`.

There are (at least) two plausible definitions for `u ≤ v`:
* strong: `∀ α : Type max u v, Small.{v} α`
* weak: `∀ α : Type u, Small.{v} α`

The weak definition has the advantage of being transitive.
However only under the strong definition do we have `Small.{v} ((α : Type u) → (β : Type v))`,
which is essential for proving that `Type v` has `Type u`-indexed limits when `u ≤ v`.

The strong definition implies the weaker definition (see below),
but we can not prove the reverse implication.
This is because in Lean's type theory, while `max u v` is at least at big as `u` and `v`,
it could be bigger than both!
-/
@[pp_with_univ]
abbrev UnivLE.{u, v} : Prop := ∀ α : Type max u v, Small.{v} α

example : UnivLE.{u, u} := inferInstance
example : UnivLE.{u, u+1} := inferInstance
example : UnivLE.{0, u} := inferInstance
example : UnivLE.{u, max u v} := inferInstance

instance [UnivLE.{u, v}] (α : Type u) : Small.{v} α :=
  ⟨Shrink.{v, max u v} (ULift.{v} α),
    ⟨Equiv.ulift.symm.trans (equivShrink (ULift α))⟩⟩

example : ¬ UnivLE.{u+1, u} := by
  simp only [Small_iff, not_forall, not_exists, not_nonempty_iff]
  exact ⟨Type u, fun α => ⟨fun f => Function.not_surjective_Type.{u, u} f.symm f.symm.surjective⟩⟩
```
