# Complete source: GRWTSK.Topology.GeneralTopology.Sequential.Variante1d1cad88b31dc8ca6643fea02cd2235b120d176508d1adc2877f41ca9a6bb0e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68a34d108f92978e9d5ea6c12fbe42dc3b5b5b05` · SHA-256 `12cf0cc31add9e424b4fe3780c0b0b5808aaeb013d0214140efbb8801a0af4a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Sequential.Variant6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Sequential.Variant6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4","mathematical_subject":"Topology.GeneralTopology","original_sha256":"6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Category/Sequential.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Elementwise
import Mathlib.Topology.Sequences
import Mathlib.Topology.Instances.Discrete
import Mathlib.Topology.Category.TopCat.Basic
/-!

# The category of sequential topological spaces

We define the category `Sequential` of sequential topological spaces. We follow the usual template
for defining categories of topological spaces, by giving it the induced category structure from
`TopCat`.
-/


namespace GRWTSK.Topology.GeneralTopology.Sequential.Variant6418e1eaf7e52de3467f848df02158c60a4510b9279070494940b60729dc1ac4

open CategoryTheory

universe u

/-- The type sequential topological spaces. -/
structure Sequential where
  /-- The underlying topological space of an object of `Sequential`. -/
  toTop : TopCat.{u} -- TODO: turn this into `extends`
  /-- The underlying topological space is sequential. -/
  [is_sequential : SequentialSpace toTop]

namespace Sequential

instance : Inhabited Sequential.{u} :=
  ⟨{ toTop := TopCat.of (ULift (Fin 37)) }⟩

instance : CoeSort Sequential Type* :=
  ⟨fun X => X.toTop⟩

attribute [instance] is_sequential

instance : Category.{u, u+1} Sequential.{u} :=
  InducedCategory.category toTop

instance : ConcreteCategory.{u} Sequential.{u} (C(·, ·)) :=
  InducedCategory.concreteCategory toTop

variable (X : Type u) [TopologicalSpace X] [SequentialSpace X]

/-- Constructor for objects of the category `Sequential`. -/
abbrev of : Sequential.{u} where
  toTop := TopCat.of X
  is_sequential := ‹_›

/-- The fully faithful embedding of `Sequential` in `TopCat`. -/
@[simps!]
def sequentialToTop : Sequential.{u} ⥤ TopCat.{u} :=
  inducedFunctor _

/-- The functor to `TopCat` is indeed fully faithful. -/
def fullyFaithfulSequentialToTop : sequentialToTop.FullyFaithful :=
  fullyFaithfulInducedFunctor _

instance : sequentialToTop.{u}.Full  :=
  inferInstanceAs (inducedFunctor _).Full

instance : sequentialToTop.{u}.Faithful :=
  inferInstanceAs (inducedFunctor _).Faithful

/-- Construct an isomorphism from a homeomorphism. -/
@[simps hom inv]
def isoOfHomeo {X Y : Sequential.{u}} (f : X ≃ₜ Y) : X ≅ Y where
  hom := TopCat.ofHom ⟨f, f.continuous⟩
  inv := TopCat.ofHom ⟨f.symm, f.symm.continuous⟩
  hom_inv_id := by
    ext x
    exact f.symm_apply_apply x
  inv_hom_id := by
    ext x
    exact f.apply_symm_apply x

/-- Construct a homeomorphism from an isomorphism. -/
@[simps]
def homeoOfIso {X Y : Sequential.{u}} (f : X ≅ Y) : X ≃ₜ Y where
  toFun := f.hom
  invFun := f.inv
  left_inv := f.hom_inv_id_apply
  right_inv := f.inv_hom_id_apply
  continuous_toFun := f.hom.hom.continuous
  continuous_invFun := f.inv.hom.continuous

/-- The equivalence between isomorphisms in `Sequential` and homeomorphisms
of topological spaces. -/
@[simps]
def isoEquivHomeo {X Y : Sequential.{u}} : (X ≅ Y) ≃ (X ≃ₜ Y) where
  toFun := homeoOfIso
  invFun := isoOfHomeo
  left_inv f := by
    ext
    rfl
  right_inv f := by
    ext
    rfl

end Sequential
```
