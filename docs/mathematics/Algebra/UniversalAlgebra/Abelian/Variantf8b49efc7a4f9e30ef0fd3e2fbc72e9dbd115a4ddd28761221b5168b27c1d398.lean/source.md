# Complete source: GRWTSK.Algebra.UniversalAlgebra.Abelian.Variantf8b49efc7a4f9e30ef0fd3e2fbc72e9dbd115a4ddd28761221b5168b27c1d398

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cdaba9681b66ac79a64f1953e8c730f52215fe85` · SHA-256 `d8d437162db1f9054ac796e4ebdefc2eb1b48923e9183ddb72e901b93a22b268`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.NormalMono.Variant5974c15da11b0bb8d3ce36fb1a9e191b552520bea4cf346a61079d59bebd03f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5974c15da11b0bb8d3ce36fb1a9e191b552520bea4cf346a61079d59bebd03f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.NormalMono.Variant5974c15da11b0bb8d3ce36fb1a9e191b552520bea4cf346a61079d59bebd03f8","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"5974c15da11b0bb8d3ce36fb1a9e191b552520bea4cf346a61079d59bebd03f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/Grp/Abelian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

public import Mathlib.Algebra.Category.Grp.Colimits
public import Mathlib.Algebra.Category.Grp.Limits
public import Mathlib.Algebra.Category.Grp.ZModuleEquivalence
public import Mathlib.Algebra.Category.ModuleCat.Abelian
public import Mathlib.CategoryTheory.Adjunction.Limits
public import Mathlib.CategoryTheory.Limits.ConcreteCategory.Basic

/-!
# The category of abelian groups is abelian
-/


namespace GRWTSK.Algebra.UniversalAlgebra.NormalMono.Variant5974c15da11b0bb8d3ce36fb1a9e191b552520bea4cf346a61079d59bebd03f8

@[expose] public section

open CategoryTheory

universe u

noncomputable section

namespace AddCommGrpCat

variable {X Y : AddCommGrpCat.{u}} (f : X ⟶ Y)

/-- In the category of abelian groups, every monomorphism is normal. -/
@[instance_reducible]
def normalMono (_ : Mono f) : NormalMono f :=
  equivalenceReflectsNormalMono (forget₂ (ModuleCat.{u} ℤ) AddCommGrpCat.{u}).inv <|
    ModuleCat.normalMono _ inferInstance

/-- In the category of abelian groups, every epimorphism is normal. -/
@[instance_reducible]
def normalEpi (_ : Epi f) : NormalEpi f :=
  equivalenceReflectsNormalEpi (forget₂ (ModuleCat.{u} ℤ) AddCommGrpCat.{u}).inv <|
    ModuleCat.normalEpi _ inferInstance

/-- The category of abelian groups is abelian. -/
instance : Abelian AddCommGrpCat.{u} where
  normalMonoOfMono f hf := ⟨normalMono f hf⟩
  normalEpiOfEpi f hf := ⟨normalEpi f hf⟩

end AddCommGrpCat
```
