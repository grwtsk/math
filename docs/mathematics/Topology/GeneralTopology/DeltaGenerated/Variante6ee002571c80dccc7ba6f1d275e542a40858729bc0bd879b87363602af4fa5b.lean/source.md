# Complete source: GRWTSK.Topology.GeneralTopology.DeltaGenerated.Variante6ee002571c80dccc7ba6f1d275e542a40858729bc0bd879b87363602af4fa5b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ce573d2609889b103ef82ffec012bd2e12776d3` · SHA-256 `49a55a8292468c6fd2fae166089f515c61c047735b69249f0cc82690faf52640`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.DeltaGenerated.Variant3e8bd2f90834fcf7b9eb5c27923b7324a3f1dac6680b5a33bde2de6ddbbc8ec9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e8bd2f90834fcf7b9eb5c27923b7324a3f1dac6680b5a33bde2de6ddbbc8ec9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.DeltaGenerated.Variant3e8bd2f90834fcf7b9eb5c27923b7324a3f1dac6680b5a33bde2de6ddbbc8ec9","mathematical_subject":"Topology.GeneralTopology","original_sha256":"3e8bd2f90834fcf7b9eb5c27923b7324a3f1dac6680b5a33bde2de6ddbbc8ec9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Category/DeltaGenerated.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Ben Eltschig. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Ben Eltschig
-/
import Mathlib.CategoryTheory.Monad.Limits
import Mathlib.Topology.Category.TopCat.Limits.Basic
import Mathlib.Topology.Compactness.DeltaGeneratedSpace

/-!
# Delta-generated topological spaces

The category of delta-generated spaces.

See https://ncatlab.org/nlab/show/Delta-generated+topological+space.

Adapted from `Mathlib/Topology/Category/CompactlyGenerated.lean`.

## TODO
* `DeltaGenerated` is cartesian-closed.
-/


namespace GRWTSK.Topology.GeneralTopology.DeltaGenerated.Variant3e8bd2f90834fcf7b9eb5c27923b7324a3f1dac6680b5a33bde2de6ddbbc8ec9

universe u

open CategoryTheory

/-- The type of delta-generated topological spaces. -/
structure DeltaGenerated where
  /-- the underlying topological space -/
  toTop : TopCat.{u}
  /-- The underlying topological space is delta-generated. -/
  deltaGenerated : DeltaGeneratedSpace toTop := by infer_instance

namespace DeltaGenerated

instance : CoeSort DeltaGenerated Type* :=
  ⟨fun X ↦ X.toTop⟩

attribute [instance] deltaGenerated

instance : LargeCategory.{u} DeltaGenerated.{u} :=
  InducedCategory.category toTop

instance : ConcreteCategory.{u} DeltaGenerated.{u} (C(·, ·)) :=
  InducedCategory.concreteCategory toTop

/-- Constructor for objects of the category `DeltaGenerated` -/
abbrev of (X : Type u) [TopologicalSpace X] [DeltaGeneratedSpace X] : DeltaGenerated.{u} where
  toTop := TopCat.of X
  deltaGenerated := ‹_›

/-- The forgetful functor `DeltaGenerated ⥤ TopCat` -/
@[simps!]
def deltaGeneratedToTop : DeltaGenerated.{u} ⥤ TopCat.{u} :=
  inducedFunctor _

/-- `deltaGeneratedToTop` is fully faithful. -/
def fullyFaithfulDeltaGeneratedToTop : deltaGeneratedToTop.{u}.FullyFaithful :=
  fullyFaithfulInducedFunctor _

instance : deltaGeneratedToTop.{u}.Full := fullyFaithfulDeltaGeneratedToTop.full

instance : deltaGeneratedToTop.{u}.Faithful := fullyFaithfulDeltaGeneratedToTop.faithful

/-- The faithful (but not full) functor taking each topological space to its delta-generated
  coreflection. -/
@[simps!]
def topToDeltaGenerated : TopCat.{u} ⥤ DeltaGenerated.{u} where
  obj X := of (DeltaGeneratedSpace.of X)
  map {_ Y} f := TopCat.ofHom ⟨f, (continuous_to_deltaGenerated (Y := Y)).mpr <|
    continuous_le_dom deltaGenerated_le f.hom.continuous⟩

instance : topToDeltaGenerated.{u}.Faithful :=
  ⟨fun h ↦ by ext x; exact CategoryTheory.congr_fun h x⟩

/-- The adjunction between the forgetful functor `DeltaGenerated ⥤ TopCat` and its coreflector. -/
def coreflectorAdjunction : deltaGeneratedToTop ⊣ topToDeltaGenerated :=
  Adjunction.mkOfUnitCounit {
    unit := {
      app X := TopCat.ofHom ⟨id, continuous_iff_coinduced_le.mpr (eq_deltaGenerated (X := X)).le⟩ }
    counit := {
      app X := TopCat.ofHom ⟨DeltaGeneratedSpace.counit, DeltaGeneratedSpace.continuous_counit⟩ }}

/-- The category of delta-generated spaces is coreflective in the category of topological spaces. -/
instance deltaGeneratedToTop.coreflective : Coreflective deltaGeneratedToTop where
  R := topToDeltaGenerated
  adj := coreflectorAdjunction

noncomputable instance deltaGeneratedToTop.createsColimits : CreatesColimits deltaGeneratedToTop :=
  comonadicCreatesColimits deltaGeneratedToTop

instance hasLimits : Limits.HasLimits DeltaGenerated :=
  hasLimits_of_coreflective deltaGeneratedToTop

instance hasColimits : Limits.HasColimits DeltaGenerated :=
  hasColimits_of_hasColimits_createsColimits deltaGeneratedToTop

end DeltaGenerated
```
