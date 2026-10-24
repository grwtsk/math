# Complete source: GRWTSK.Topology.GeneralTopology.Cantor.Variant5216783331a3585aabfd987d031048221f996d0a61a9282710bfe04411f67030

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d129f497ac5416c7a55129cf8191775a9a40f88` · SHA-256 `4dc219e9b5c742ce52a63a1f0f3c994a170b57d8d261c9a2c83422ce351471d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.CantorTopologyCapability.Variantca17fd5ff1b15639878bca4199cf0f4b250f4f527723039cc9386be3a8411ef6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca17fd5ff1b15639878bca4199cf0f4b250f4f527723039cc9386be3a8411ef6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.CantorTopologyCapability.Variantca17fd5ff1b15639878bca4199cf0f4b250f4f527723039cc9386be3a8411ef6","mathematical_subject":"Topology.GeneralTopology","original_sha256":"ca17fd5ff1b15639878bca4199cf0f4b250f4f527723039cc9386be3a8411ef6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Topology/Cantor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Carrier.BooleanSpace
import Mathlib.Topology.Connected.TotallyDisconnected
import Mathlib.Topology.Bases
import Mathlib.Topology.Metrizable.Basic

/-!
# Topology capability for designated Cantor representations

No instance is manufactured from a set-theoretic equivalence.  Compactness,
metrizability, perfection, total disconnectedness, and a clopen basis must be
provided for the concrete topology before the project may claim Cantor-space
topology or a homeomorphic baseline interpreter.
-/


namespace GRWTSK.Topology.GeneralTopology.CantorTopologyCapability.Variantca17fd5ff1b15639878bca4199cf0f4b250f4f527723039cc9386be3a8411ef6

namespace BitMatrix.Topology

/-- Explicit topological obligations of a Cantor-space presentation. -/
structure CantorTopologyCapability
    (Space : Type)
    [TopologicalSpace Space] where
  nonempty : Nonempty Space
  compact : IsCompact (Set.univ : Set Space)
  metrizable : Nonempty (TopologicalSpace.MetrizableSpace Space)
  noIsolatedPoint : ∀ point : Space, ¬IsOpen ({point} : Set Space)
  totallyDisconnected : IsTotallyDisconnected (Set.univ : Set Space)
  clopenBasis : ∃ basis : Set (Set Space),
    TopologicalSpace.IsTopologicalBasis basis ∧
      ∀ member ∈ basis, IsClopen member

/--
Continuity is an additional capability beyond the baseline set equivalence.
The equality witness prevents an unrelated homeomorphism between the same
types from being presented as the designated baseline interpreter.
-/
structure HomeomorphicBaselineCapability
    {Address : Type}
    (enumeration : BitMatrix.Carrier.AddressEnumeration Address)
    (representation : BitMatrix.Carrier.DesignatedCantorRepresentation)
    (baseline : BitMatrix.Carrier.BooleanState Address)
    [TopologicalSpace representation.Scalar]
    [TopologicalSpace (BitMatrix.Carrier.BooleanState Address)] where
  homeomorphism :
    representation.Scalar ≃ₜ BitMatrix.Carrier.BooleanState Address
  agreesWithBaselineEquiv :
    homeomorphism.toEquiv =
      BitMatrix.Carrier.baselineEquiv
        enumeration.enumerate representation baseline

theorem compact_univ
    {Space : Type}
    [TopologicalSpace Space]
    (capability : CantorTopologyCapability Space) :
    IsCompact (Set.univ : Set Space) :=
  capability.compact

theorem connected_subsets_are_singletons
    {Space : Type}
    [TopologicalSpace Space]
    (capability : CantorTopologyCapability Space)
    {subset : Set Space}
    (connected : IsPreconnected subset) :
    subset.Subsingleton := by
  intro left leftMember right rightMember
  exact capability.totallyDisconnected subset
    (Set.subset_univ subset) connected leftMember rightMember

end BitMatrix.Topology
```
