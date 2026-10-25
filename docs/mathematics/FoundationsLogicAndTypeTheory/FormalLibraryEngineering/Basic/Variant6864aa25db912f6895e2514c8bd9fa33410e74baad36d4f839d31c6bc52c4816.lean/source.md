# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant6864aa25db912f6895e2514c8bd9fa33410e74baad36d4f839d31c6bc52c4816

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e8d859ac31f3fd250c02c927faa8927c9ff84e3` · SHA-256 `10f667c295d555e390326e63ecf0fa4db0be4043b843f8645174facb3e359cdb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bicategory.Variant3142a657caa5dc038f66293f390e93c703562351475f2c155705037a17833fd1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3142a657caa5dc038f66293f390e93c703562351475f2c155705037a17833fd1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Bicategory.Variant3142a657caa5dc038f66293f390e93c703562351475f2c155705037a17833fd1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3142a657caa5dc038f66293f390e93c703562351475f2c155705037a17833fd1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CategoryTheory/Bicategory/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.CategoryTheory.Bicategory.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bicategory.Variant3142a657caa5dc038f66293f390e93c703562351475f2c155705037a17833fd1

open CategoryTheory Mathlib.Tactic BicategoryLike
open Bicategory

universe w v u

variable {B : Type u} [Bicategory.{w, v} B]
variable {a b c d : B}

example {f j : a ⟶ d} {g : a ⟶ b} {h : b ⟶ c} {i : c ⟶ d}
    (η : f ⟶ g ≫ (h ≫ i)) (θ : (g ≫ h) ≫ i ⟶ j) :
    η ⊗≫ θ = η ≫ (α_ _ _ _).inv ≫ θ := by
  bicategory

example {f : a ⟶ b} {g : b ⟶ c} {h i : c ⟶ d} (η : h ⟶ i) :
    (f ≫ g) ◁ η = (α_ _ _ _).hom ≫ f ◁ g ◁ η ≫ (α_ _ _ _).inv := by
  bicategory

example {f g h : a ⟶ b} {η : f ⟶ g} {θ : g ⟶ h} : η ≫ θ = η ≫ θ := by
  bicategory
```
