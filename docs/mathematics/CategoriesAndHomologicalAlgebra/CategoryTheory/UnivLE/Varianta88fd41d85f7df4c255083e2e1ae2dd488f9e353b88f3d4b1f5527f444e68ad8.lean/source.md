# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UnivLE.Varianta88fd41d85f7df4c255083e2e1ae2dd488f9e353b88f3d4b1f5527f444e68ad8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a6dc6b98d498616f71e2caf9081512506724ca9` · SHA-256 `61fbc63a0535e88dac8af967a3912d0328169647d3c72920fffc03cb644738f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UnivLEOfEssSurj.Variant5de12351191d1aff9031af060969f3c55eeb664f9369ee33fe830a6aa4042552","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5de12351191d1aff9031af060969f3c55eeb664f9369ee33fe830a6aa4042552","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.UnivLEOfEssSurj.Variant5de12351191d1aff9031af060969f3c55eeb664f9369ee33fe830a6aa4042552","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"5de12351191d1aff9031af060969f3c55eeb664f9369ee33fe830a6aa4042552","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/UnivLE.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Logic.UnivLE
import Mathlib.CategoryTheory.EssentialImage
import Mathlib.CategoryTheory.Types

/-!
# Universe inequalities and essential surjectivity of `uliftFunctor`.

We show `UnivLE.{max u v, v} ↔ EssSurj (uliftFunctor.{u, v} : Type v ⥤ Type max u v)`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UnivLEOfEssSurj.Variant5de12351191d1aff9031af060969f3c55eeb664f9369ee33fe830a6aa4042552

open CategoryTheory

universe u v

noncomputable section

theorem UnivLE.ofEssSurj (w : (uliftFunctor.{u, v} : Type v ⥤ Type max u v).EssSurj) :
    UnivLE.{max u v, v} where
  small α := by
    obtain ⟨a', ⟨m⟩⟩ := w.mem_essImage α
    exact ⟨a', ⟨(Iso.toEquiv m).symm.trans Equiv.ulift⟩⟩

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
