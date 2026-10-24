# Complete source: GRWTSK.Algebra.GroupTheory.AutomorphismAction.Variantc006a19f90e3b060ed04fde80b206933aa320ef954b72c4262f62f03e9293368

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee48aea4da397b1e5906f462b2f3dc546fdf6b7d` · SHA-256 `562cf6c21f2263440b62a99035056059602cd757e2372c7be478acc543b90f10`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.EquivariantMap.Variantbf99fb92a8b1c2534631994c790fbae0987e2b1f240fe3a81bea9ab67a4867c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf99fb92a8b1c2534631994c790fbae0987e2b1f240fe3a81bea9ab67a4867c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.EquivariantMap.Variantbf99fb92a8b1c2534631994c790fbae0987e2b1f240fe3a81bea9ab67a4867c1","mathematical_subject":"Algebra.Groups","original_sha256":"bf99fb92a8b1c2534631994c790fbae0987e2b1f240fe3a81bea9ab67a4867c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/MobiusOntology/AutomorphismAction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Federation.TransportHolonomy
import Mathematics.MobiusOntology.ControlledMap

/-!
# Internal automorphisms and equivariance

An action creates explicit commutation obligations for reference,
implementation, and observation maps.
-/


namespace GRWTSK.Algebra.GroupTheory.EquivariantMap.Variantbf99fb92a8b1c2534631994c790fbae0987e2b1f240fe3a81bea9ab67a4867c1

namespace Mathematics.MobiusOntology

universe u v w x

abbrev AutomorphismAction
    (Symmetry : Type u) (Object : Type v) [Group Symmetry] :=
  Mathematics.Federation.InternalAutomorphismAction Symmetry Object

structure EquivariantMap
    {Symmetry : Type u} {Source : Type v} {Target : Type w}
    [Group Symmetry]
    (source : AutomorphismAction Symmetry Source)
    (target : AutomorphismAction Symmetry Target)
    (map : Source → Target) : Prop where
  commutes :
    ∀ symmetry point,
      map (source.action symmetry point) =
        target.action symmetry (map point)

structure RefinementAutomorphismCertificate
    {Symmetry : Type u} {X : Type v} {Y : Type w}
    {Observation : Type x}
    [Group Symmetry]
    [PseudoMetricSpace X] [PseudoMetricSpace Y]
    (controlled : ControlledMap X Y)
    (source : AutomorphismAction Symmetry X)
    (target : AutomorphismAction Symmetry Y)
    (observationAction : AutomorphismAction Symmetry Observation)
    (observe : Y → Observation) : Prop where
  reference :
    EquivariantMap source target controlled.reference
  implementation :
    EquivariantMap source target controlled.implementation
  observation :
    EquivariantMap target observationAction observe

end Mathematics.MobiusOntology
```
