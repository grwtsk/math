# Complete source: GRWTSK.Algebra.UniversalAlgebra.Abelian.Variantbfb27da45d0d8d0d6adeb334838b003cac056552e193a503de0c01bdc22de568

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `606619bdb3799723c18084ecd44f63fcd10edaa8` · SHA-256 `479820cbcc23c06dd74f9a332edb92c70d2936b52ef1340f15e855e1f2fbcc9c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.NormalMono.Variantdbceebf1aa8fa9e17b385e3bc9f6f2846300c8bef9be9bfe804e17390de34894","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dbceebf1aa8fa9e17b385e3bc9f6f2846300c8bef9be9bfe804e17390de34894","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.NormalMono.Variantdbceebf1aa8fa9e17b385e3bc9f6f2846300c8bef9be9bfe804e17390de34894","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"dbceebf1aa8fa9e17b385e3bc9f6f2846300c8bef9be9bfe804e17390de34894","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/Grp/Abelian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.Algebra.Category.Grp.Colimits
import Mathlib.Algebra.Category.Grp.Limits
import Mathlib.Algebra.Category.Grp.ZModuleEquivalence
import Mathlib.Algebra.Category.ModuleCat.Abelian
import Mathlib.CategoryTheory.Adjunction.Limits
import Mathlib.CategoryTheory.Limits.ConcreteCategory.Basic

/-!
# The category of abelian groups is abelian
-/


namespace GRWTSK.Algebra.UniversalAlgebra.NormalMono.Variantdbceebf1aa8fa9e17b385e3bc9f6f2846300c8bef9be9bfe804e17390de34894

open CategoryTheory Limits

universe u

noncomputable section

namespace AddCommGrp

variable {X Y Z : AddCommGrp.{u}} (f : X ⟶ Y) (g : Y ⟶ Z)

/-- In the category of abelian groups, every monomorphism is normal. -/
def normalMono (_ : Mono f) : NormalMono f :=
  equivalenceReflectsNormalMono (forget₂ (ModuleCat.{u} ℤ) AddCommGrp.{u}).inv <|
    ModuleCat.normalMono _ inferInstance

/-- In the category of abelian groups, every epimorphism is normal. -/
def normalEpi (_ : Epi f) : NormalEpi f :=
  equivalenceReflectsNormalEpi (forget₂ (ModuleCat.{u} ℤ) AddCommGrp.{u}).inv <|
    ModuleCat.normalEpi _ inferInstance

/-- The category of abelian groups is abelian. -/
instance : Abelian AddCommGrp.{u} where
  normalMonoOfMono f hf := ⟨normalMono f hf⟩
  normalEpiOfEpi f hf := ⟨normalEpi f hf⟩

end AddCommGrp
```
