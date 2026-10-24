# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UnivLE.Variant5dbe79a20155350d3f92136585dc2656cc330d377ac76b2b67d9c9c1f43e801f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fec7722065e71ac8aadc32cf5d5843a4bd46f803` · SHA-256 `60e05709e3b9791667c59b1b2dedea341e697eefd70e73d364f9364c9aaadc0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UnivLEOfEssSurj.Variant01de2497585c7be9dfdcba4ed57ee3b02d3be3c2868a091bc6dd5ca4f0f12a9b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"01de2497585c7be9dfdcba4ed57ee3b02d3be3c2868a091bc6dd5ca4f0f12a9b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.UnivLEOfEssSurj.Variant01de2497585c7be9dfdcba4ed57ee3b02d3be3c2868a091bc6dd5ca4f0f12a9b","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"01de2497585c7be9dfdcba4ed57ee3b02d3be3c2868a091bc6dd5ca4f0f12a9b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/UnivLE.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Basic.UnivLE
public import Mathlib.CategoryTheory.EssentialImage
public import Mathlib.CategoryTheory.Types.Basic

/-!
# Universe inequalities and essential surjectivity of `uliftFunctor`.

We show `UnivLE.{max u v, v} ↔ EssSurj (uliftFunctor.{u, v} : Type v ⥤ Type max u v)`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UnivLEOfEssSurj.Variant01de2497585c7be9dfdcba4ed57ee3b02d3be3c2868a091bc6dd5ca4f0f12a9b

@[expose] public section

open CategoryTheory

universe u v

noncomputable section

theorem UnivLE.ofEssSurj (w : (uliftFunctor.{u, v} : Type v ⥤ Type max u v).EssSurj) :
    UnivLE.{max u v, v} where
  small α := by
    obtain ⟨a', m⟩ := w.mem_essImage α
    obtain ⟨m'⟩ := m
    exact ⟨a', ⟨(Iso.toEquiv m').symm.trans Equiv.ulift⟩⟩

instance EssSurj.ofUnivLE [UnivLE.{max u v, v}] :
    (uliftFunctor.{u, v} : Type v ⥤ Type max u v).EssSurj where
  mem_essImage α :=
    ⟨Shrink α, ⟨Equiv.toIso (Equiv.ulift.trans (equivShrink α).symm)⟩⟩

theorem UnivLE_iff_essSurj :
    UnivLE.{max u v, v} ↔ (uliftFunctor.{u, v} : Type v ⥤ Type max u v).EssSurj :=
  ⟨fun _ => inferInstance, fun w => UnivLE.ofEssSurj w⟩

instance [UnivLE.{max u v, v}] : uliftFunctor.{u, v}.IsEquivalence where

def UnivLE.witness [UnivLE.{max u v, v}] : Type u ⥤ Type v :=
  uliftFunctor.{v, u} ⋙ (uliftFunctor.{u, v}).inv

instance [UnivLE.{max u v, v}] : UnivLE.witness.{u, v}.Faithful :=
  inferInstanceAs <| Functor.Faithful (_ ⋙ _)

instance [UnivLE.{max u v, v}] : UnivLE.witness.{u, v}.Full :=
  inferInstanceAs <| Functor.Full (_ ⋙ _)
```
