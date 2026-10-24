# Complete source: GRWTSK.Algebra.TopModuleCat.Variant887807286381783456991a162dc87c493a9577c6de13b40c9597eb0808e1ad15

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1adfd1fb60bcb6e154b18b8d1ed92cfc01ad0e3` · SHA-256 `4d3a71c175e9eeaf6e3f97e1313448c4777f848ff812548c83728dd900eef567`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Topology.Variante7cc3a3906a4c854e2d8aa23e12d6e98f6ca11db3ba8463747543f8c0e681b05","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7cc3a3906a4c854e2d8aa23e12d6e98f6ca11db3ba8463747543f8c0e681b05","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Topology.Variante7cc3a3906a4c854e2d8aa23e12d6e98f6ca11db3ba8463747543f8c0e681b05","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"e7cc3a3906a4c854e2d8aa23e12d6e98f6ca11db3ba8463747543f8c0e681b05","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CategoryTheory/ConcreteCategory/TopModuleCat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Category.ModuleCat.Topology.Basic


namespace GRWTSK.Algebra.Topology.Variante7cc3a3906a4c854e2d8aa23e12d6e98f6ca11db3ba8463747543f8c0e681b05

universe v u

open CategoryTheory TopModuleCat

set_option maxHeartbeats 10000
set_option synthInstance.maxHeartbeats 2000

variable (R : Type u) [CommRing R] [TopologicalSpace R] [IsTopologicalRing R]

/- We test if all the coercions and `map_add` lemmas trigger correctly. -/

example (X : Type v) [AddCommGroup X] [TopologicalSpace X]
    [ContinuousAdd X] [Module R X] [ContinuousSMul R X] : ⇑(𝟙 (of R X)) = id := by simp

example {X Y : Type v}
    [AddCommGroup X] [Module R X] [TopologicalSpace X] [ContinuousAdd X] [ContinuousSMul R X]
    [AddCommGroup Y] [Module R Y] [TopologicalSpace Y] [ContinuousAdd Y] [ContinuousSMul R Y]
    (f : X →L[R] Y) :
    ⇑(TopModuleCat.ofHom f) = ⇑f := by simp

example {X Y : Type v}
    [AddCommGroup X] [Module R X] [TopologicalSpace X] [ContinuousAdd X] [ContinuousSMul R X]
    [AddCommGroup Y] [Module R Y] [TopologicalSpace Y] [ContinuousAdd Y] [ContinuousSMul R Y]
    (f : X →L[R] Y) (x : X) : (TopModuleCat.ofHom f) x = f x := by simp

example {X Y Z : TopModuleCat R} (f : X ⟶ Y) (g : Y ⟶ Z) : ⇑(f ≫ g) = ⇑g ∘ ⇑f := by simp

example {X Y Z : Type v}
    [AddCommGroup X] [Module R X] [TopologicalSpace X] [ContinuousAdd X] [ContinuousSMul R X]
    [AddCommGroup Y] [Module R Y] [TopologicalSpace Y] [ContinuousAdd Y] [ContinuousSMul R Y]
    [AddCommGroup Z] [Module R Z] [TopologicalSpace Z] [ContinuousAdd Z] [ContinuousSMul R Z]
    (f : X →L[R] Y) (g : Y →L[R] Z) :
    ⇑(TopModuleCat.ofHom f ≫ TopModuleCat.ofHom g) = g ∘ f := by simp

example {X Y : Type v}
    [AddCommGroup X] [Module R X] [TopologicalSpace X] [ContinuousAdd X] [ContinuousSMul R X]
    [AddCommGroup Y] [Module R Y] [TopologicalSpace Y] [ContinuousAdd Y] [ContinuousSMul R Y]
    {Z : TopModuleCat R}
    (f : X →L[R] Y) (g : of R Y ⟶ Z) :
    ⇑(TopModuleCat.ofHom f ≫ g) = g ∘ f := by simp

example {Y Z : TopModuleCat R} {X : Type v}
    [AddCommGroup X] [Module R X] [TopologicalSpace X] [ContinuousAdd X] [ContinuousSMul R X]
    (f : of R X ⟶ Y) (g : Y ⟶ Z) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {X : Type v}
    [AddCommGroup X] [Module R X] [TopologicalSpace X] [ContinuousAdd X] [ContinuousSMul R X]
    {Y Z : TopModuleCat R}
    (f : X →L[R] Y) (g : of R Y ⟶ Z) :
    ⇑(TopModuleCat.ofHom f ≫ g) = g ∘ f := by simp

example {X Y Z : TopModuleCat R} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) : (f ≫ g) x = g (f x) := by simp

example {X Y : TopModuleCat R} (e : X ≅ Y) (x : X) : e.inv (e.hom x) = x := by simp

example {X Y : TopModuleCat R} (e : X ≅ Y) (y : Y) : e.hom (e.inv y) = y := by simp

example (X : TopModuleCat R) : ⇑(𝟙 X) = id := by simp

example {M N : TopModuleCat.{v} R} (f : M ⟶ N) (x y : M) : f (x + y) = f x + f y := by
  simp

example {M N : TopModuleCat.{v} R} (f : M ⟶ N) : f 0 = 0 := by
  simp

example {M N : TopModuleCat.{v} R} (f : M ⟶ N) (r : R) (m : M) : f (r • m) = r • f m := by
  simp

example {M N : TopModuleCat.{v} R} (f : M ⟶ N) : Continuous f := by continuity

example {M N : TopModuleCat.{v} R} (f : M ⟶ N) : Continuous f := by fun_prop
```
