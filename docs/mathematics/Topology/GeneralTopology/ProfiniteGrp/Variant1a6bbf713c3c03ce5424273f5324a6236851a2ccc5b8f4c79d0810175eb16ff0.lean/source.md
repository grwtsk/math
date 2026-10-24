# Complete source: GRWTSK.Topology.GeneralTopology.ProfiniteGrp.Variant1a6bbf713c3c03ce5424273f5324a6236851a2ccc5b8f4c79d0810175eb16ff0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99cb72421949d161562225e41540367a277bec80` · SHA-256 `69f4188b8b98752f4b50f42df066c35ee4fbe557a140940846be798e5069b1cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SourceUnit.Variant0e82c7cf5ec1320a0822b3ecac113261ee530dd2cf60abd3722ef22af5ac98f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0e82c7cf5ec1320a0822b3ecac113261ee530dd2cf60abd3722ef22af5ac98f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SourceUnit.Variant0e82c7cf5ec1320a0822b3ecac113261ee530dd2cf60abd3722ef22af5ac98f1","mathematical_subject":"Topology.GeneralTopology","original_sha256":"0e82c7cf5ec1320a0822b3ecac113261ee530dd2cf60abd3722ef22af5ac98f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CategoryTheory/ConcreteCategory/ProfiniteGrp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib


namespace GRWTSK.Topology.GeneralTopology.SourceUnit.Variant0e82c7cf5ec1320a0822b3ecac113261ee530dd2cf60abd3722ef22af5ac98f1

universe v u

open CategoryTheory ProfiniteGrp

set_option maxHeartbeats 10000
set_option synthInstance.maxHeartbeats 2000

variable {X Y Z : Type u} [Group X] [TopologicalSpace X] [IsTopologicalGroup X]
    [CompactSpace X] [TotallyDisconnectedSpace X] [Group Y] [TopologicalSpace Y]
    [IsTopologicalGroup Y] [CompactSpace Y] [TotallyDisconnectedSpace Y] [Group Z]
    [TopologicalSpace Z] [IsTopologicalGroup Z] [CompactSpace Z] [TotallyDisconnectedSpace Z]

/- We test if all the coercions and `map_add` lemmas trigger correctly. -/

example : ⇑(𝟙 (of X)) = id := by simp

example (f : ContinuousMonoidHom X Y) : ⇑(ofHom f) = ⇑f := by simp

example (f : ContinuousMonoidHom X Y) (x : X) : (ofHom f) x = f x := by simp

example {U V W : ProfiniteGrp} (f : U ⟶ V) (g : V ⟶ W) : ⇑(f ≫ g) = ⇑g ∘ ⇑f := by simp

example (f : ContinuousMonoidHom X Y) (g : ContinuousMonoidHom Y Z) :
    ⇑(ofHom f ≫ ofHom g) = g ∘ f := by simp

example {W : ProfiniteGrp} (f : ContinuousMonoidHom X Y) (g : of Y ⟶ W) :
    ⇑(ofHom f ≫ g) = g ∘ f := by simp

example {U V : ProfiniteGrp} (f : U ⟶ V) (g : V ⟶ of Z) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {V W : ProfiniteGrp} (f : of X ⟶ V) (g : V ⟶ W) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {U V W : ProfiniteGrp} (f : U ⟶ V) (g : V ⟶ W) (u : U) : (f ≫ g) u = g (f u) := by
  simp

example {U V : ProfiniteGrp} (e : U ≅ V) (u : U) : e.inv (e.hom u) = u := by simp

example {U V : ProfiniteGrp} (e : U ≅ V) (v : V) : e.hom (e.inv v) = v := by simp

example (U : ProfiniteGrp) : ⇑(𝟙 U) = id := by simp

example {M N : ProfiniteGrp.{u}} (f : M ⟶ N) (x y : M) : f (x * y) = f x * f y := by
  simp

example {M N : ProfiniteGrp.{u}} (f : M ⟶ N) : f 1 = 1 := by
  simp
```
