# Complete source: GRWTSK.Topology.GeneralTopology.Embedding.Variant50386a42b3c9a1f22f3e0ccbc1bcc659a0566d5db7446e2fbd019698ba51baa7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbe66f5b352fd255138ea39278a4a2da24098f11` · SHA-256 `1b079cae30ad1448dc62f27def06c5c154295a577f040af016b35411d0db6e4c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Homeomorphism.Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Homeomorphism.Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000","mathematical_subject":"Topology.GeneralTopology","original_sha256":"8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Topology/Embedding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Topology.Continuous


namespace GRWTSK.Topology.GeneralTopology.Homeomorphism.Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000

universe u v w

namespace FCRS.Topology

/-- A homeomorphism with both inverse laws and both continuity proofs. -/
structure Homeomorphism
    (X : Type u) (Y : Type v)
    (TX : TopologicalSpaceLike X)
    (TY : TopologicalSpaceLike Y) where
  toFun : X → Y
  invFun : Y → X
  leftInverse : ∀ x, invFun (toFun x) = x
  rightInverse : ∀ y, toFun (invFun y) = y
  continuous_toFun : Continuous TX TY toFun
  continuous_invFun : Continuous TY TX invFun

theorem Homeomorphism.injective
    {X : Type u} {Y : Type v}
    {TX : TopologicalSpaceLike X}
    {TY : TopologicalSpaceLike Y}
    (H : Homeomorphism X Y TX TY) : Function.Injective H.toFun := by
  intro x y hxy
  calc
    x = H.invFun (H.toFun x) := (H.leftInverse x).symm
    _ = H.invFun (H.toFun y) := congrArg H.invFun hxy
    _ = y := H.leftInverse y

theorem Homeomorphism.surjective
    {X : Type u} {Y : Type v}
    {TX : TopologicalSpaceLike X}
    {TY : TopologicalSpaceLike Y}
    (H : Homeomorphism X Y TX TY) : Function.Surjective H.toFun := by
  intro y
  exact ⟨H.invFun y, H.rightInverse y⟩

/-- The subtype constituting the set-theoretic image of a function. -/
abbrev FunctionImage {X : Type u} {Y : Type v} (f : X → Y) : Type v :=
  {y : Y // y ∈ Set.range f}

/--
An authoritative topological embedding: the domain is homeomorphic to the
actual image subtype, and that homeomorphism's underlying target value is
exactly `toFun`.  Ambient continuity and injectivity are derived, not separate
opaque obligations.
-/
structure TopologicalEmbedding
    (X : Type u) (Y : Type v)
    (TX : TopologicalSpaceLike X)
    (TY : TopologicalSpaceLike Y) where
  toFun : X → Y
  imageHomeomorphism :
    Homeomorphism X (FunctionImage toFun) TX
      (subspaceTopology TY (Set.range toFun))
  imageHomeomorphism_toFun :
    ∀ x, (imageHomeomorphism.toFun x).val = toFun x

/-- Injectivity follows from the homeomorphism onto the image. -/
theorem TopologicalEmbedding.injective
    {X : Type u} {Y : Type v}
    {TX : TopologicalSpaceLike X}
    {TY : TopologicalSpaceLike Y}
    (E : TopologicalEmbedding X Y TX TY) : Function.Injective E.toFun := by
  intro x y hxy
  have himage : E.imageHomeomorphism.toFun x =
      E.imageHomeomorphism.toFun y := by
    apply Subtype.ext
    calc
      (E.imageHomeomorphism.toFun x).val = E.toFun x :=
        E.imageHomeomorphism_toFun x
      _ = E.toFun y := hxy
      _ = (E.imageHomeomorphism.toFun y).val :=
        (E.imageHomeomorphism_toFun y).symm
  exact E.imageHomeomorphism.injective himage

/-- Ambient continuity follows by composing with the continuous image inclusion. -/
theorem TopologicalEmbedding.continuous
    {X : Type u} {Y : Type v}
    {TX : TopologicalSpaceLike X}
    {TY : TopologicalSpaceLike Y}
    (E : TopologicalEmbedding X Y TX TY) :
    Continuous TX TY E.toFun := by
  have hIntoAmbient : Continuous TX TY
      (fun x => (E.imageHomeomorphism.toFun x).val) :=
    continuous_comp E.imageHomeomorphism.continuous_toFun
      (continuous_subtype_val TY (Set.range E.toFun))
  exact continuous_congr hIntoAmbient E.imageHomeomorphism_toFun

/-- Descriptive alias for the derived ambient continuity theorem. -/
theorem TopologicalEmbedding.continuous_toFun
    {X : Type u} {Y : Type v}
    {TX : TopologicalSpaceLike X}
    {TY : TopologicalSpaceLike Y}
    (E : TopologicalEmbedding X Y TX TY) :
    Continuous TX TY E.toFun :=
  E.continuous

end FCRS.Topology
```
