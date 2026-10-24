# Complete source: GRWTSK.Topology.GeneralTopology.StablePrimeProbeTarget.Variant3465dbdaa741c239b471f3c27c219ce05046e13878f2224ed68e341c0a82691a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3d8efa54923bd6d09348f485571f76e34dc94db` · SHA-256 `0f90b15d0ade2bb724b727c1b6a4915ed4c08a7c1ff7f0dc4e968a1bcfc96da0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.StablePrimeProbeTarget.Variant751fa98b2e1dabcf015619d49d0123e95738cebe1868ae54baef8724eb66a813","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"751fa98b2e1dabcf015619d49d0123e95738cebe1868ae54baef8724eb66a813","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.StablePrimeProbeTarget.Variant751fa98b2e1dabcf015619d49d0123e95738cebe1868ae54baef8724eb66a813","mathematical_subject":"Topology.GeneralTopology","original_sha256":"751fa98b2e1dabcf015619d49d0123e95738cebe1868ae54baef8724eb66a813","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Prismatic/StablePrimeProbeTarget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Discovery.OpenElement
import Mathematics.Prismatic.StablePointEmbedding

/-!
# Parameterized target: joint rigidity of a stable-prime probe product

Prime-local stability alone is not enough. The conjecture for a supplied
family is exactly joint separation plus recovery of the original topology.
Because this declaration still takes an arbitrary family, it is a target
schema rather than a closed open-conjecture element.
-/


namespace GRWTSK.Topology.GeneralTopology.StablePrimeProbeTarget.Variant751fa98b2e1dabcf015619d49d0123e95738cebe1868ae54baef8724eb66a813

namespace Mathematics.Prismatic

universe u v

/-- Exact completion target for one concrete certified probe family. -/
def StablePrimeProbeTarget
    {State : Type u} {Probe : Type v}
    [TopologicalSpace State]
    (family : StableProbeFamily State Probe) : Prop :=
  family.Rigid

end Mathematics.Prismatic
```
