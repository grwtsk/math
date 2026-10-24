# Complete source: GRWTSK.Topology.GeneralTopology.LinkingPairing.Variantcc17ad251e93d4fc89cff90c702820949cdb18bff125919f81322529f625f949

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82ebcbda7971bc29d3dfa5d4f5f36bce89a87e86` · SHA-256 `d6cda8d5d9d7dfe5db5597a4c9b2f2787062f6478d4c62de19446fba3b3e6149`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ClosedOrientedManifoldProfile.Variant1bee30c8d6d5746b03d723bdb449b69199131c6f656b820ad9256d8b3d36af6b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1bee30c8d6d5746b03d723bdb449b69199131c6f656b820ad9256d8b3d36af6b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ClosedOrientedManifoldProfile.Variant1bee30c8d6d5746b03d723bdb449b69199131c6f656b820ad9256d8b3d36af6b","mathematical_subject":"Topology.GeneralTopology","original_sha256":"1bee30c8d6d5746b03d723bdb449b69199131c6f656b820ad9256d8b3d36af6b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/LinkingPairing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.TorsionLedger
import Mathlib.Topology.Instances.AddCircle.Defs

/-!
# Manifold-scoped torsion linking witnesses

The nonsingular torsion linking pairing is optional evidence for a closed
oriented manifold.  Relative and twisted variants require separate
certificates; no such pairing is attached to an arbitrary finite complex.
-/


namespace GRWTSK.Topology.GeneralTopology.ClosedOrientedManifoldProfile.Variant1bee30c8d6d5746b03d723bdb449b69199131c6f656b820ad9256d8b3d36af6b

namespace Mathematics.Homology

universe u v

/-- Hypotheses under which an absolute torsion linking pairing is admitted. -/
structure ClosedOrientedManifoldProfile where
  dimension : Nat
  carrierDigest : Digest
  closedManifoldCertificate : ObjectAddress
  orientationCertificate : ObjectAddress

/-- A nondegenerate `ℚ/ℤ` linking pairing in complementary degrees. -/
structure TorsionLinkingPairing
    (LeftTorsion : Type u) (RightTorsion : Type v)
    [AddCommGroup LeftTorsion] [AddCommGroup RightTorsion] where
  profile : ClosedOrientedManifoldProfile
  leftDegree : Nat
  rightDegree : Nat
  complementary :
    leftDegree + rightDegree + 1 = profile.dimension
  pairing :
    LeftTorsion →+ (RightTorsion →+ AddCircle (1 : ℚ))
  nondegenerateLeft :
    Function.Injective pairing
  nondegenerateRight :
    Function.Injective
      (fun right left ↦ pairing left right)
  pairingCertificate : ObjectAddress

end Mathematics.Homology
```
