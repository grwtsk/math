# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalProfile.Variant307dd7b5cc9b7b9207f53cea6d76327233255fb4f5a4946d31bfabb6435d297a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b5bc8060ec5610ec38845a3150ad4672013bb33` · SHA-256 `c6f9a07f8b205a7cb1fa156f607ea5cfae900d18a0beb3ed80b2433d961b1e8e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalProfile.Variantce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.IntervalProfile.Variantce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969","mathematical_subject":"Foundations.Unclassified","original_sha256":"ce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Transport/IntervalProfile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Transport.Foundations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalProfile.Variantce6dab9a8fd3890126503313e9efea7dbdac93aa7175da374bf9e35b9c02c969

universe uInput uWitness

namespace FCRS.Transport

/--
A versioned interval theorem profile over independently typed input and
witness carriers.
-/
structure IntervalProfile
    (Input : Type uInput) (Witness : Type uWitness) where
  version : ArtifactRef .intervalProfile
  sourceTheorem : ArtifactRef .theoremArtifact
  domainVersion : ArtifactRef .domainPredicate
  lowerVersion : ArtifactRef .endpointFunction
  upperVersion : ArtifactRef .endpointFunction
  assumptionSet : ArtifactRef .assumptionSet
  orientation : IntervalOrientation
  sourceNotation : String
  domain : Input → Prop
  lower : Input → Witness
  upper : Input → Witness
  lowerMode : BoundaryMode
  upperMode : BoundaryMode
  witnessQualifies : Witness → Prop
  order : Witness → Witness → Prop

namespace BoundaryMode

/-- Interpret a lower endpoint according to its declared boundary mode. -/
def lowerSatisfied
    {Witness : Type uWitness}
    (mode : BoundaryMode)
    (order : Witness → Witness → Prop)
    (lower witness : Witness) : Prop :=
  match mode with
  | .Open => order lower witness
  | .Closed => lower = witness ∨ order lower witness

/-- Interpret an upper endpoint according to its declared boundary mode. -/
def upperSatisfied
    {Witness : Type uWitness}
    (mode : BoundaryMode)
    (order : Witness → Witness → Prop)
    (witness upper : Witness) : Prop :=
  match mode with
  | .Open => order witness upper
  | .Closed => witness = upper ∨ order witness upper

end BoundaryMode

namespace IntervalProfile

/-- Exact endpoint-membership semantics for a profile. -/
def contains
    {Input : Type uInput} {Witness : Type uWitness}
    (profile : IntervalProfile Input Witness)
    (input : Input) (witness : Witness) : Prop :=
  profile.lowerMode.lowerSatisfied
      profile.order (profile.lower input) witness ∧
    profile.upperMode.upperSatisfied
      profile.order witness (profile.upper input)

/-- Domain, interval, and witness qualification kept as separate conjuncts. -/
def admissible
    {Input : Type uInput} {Witness : Type uWitness}
    (profile : IntervalProfile Input Witness)
    (input : Input) (witness : Witness) : Prop :=
  profile.domain input ∧
    profile.contains input witness ∧
    profile.witnessQualifies witness

end IntervalProfile

/-- A theorem claim is indexed by its exact interval-profile value. -/
def IntervalClaim
    {Input : Type uInput} {Witness : Type uWitness}
    (profile : IntervalProfile Input Witness) : Prop :=
  ∀ input, profile.domain input →
    ∃ witness, profile.admissible input witness

/-- A selected mathematical witness with proof for one exact profile/input. -/
structure IntervalWitness
    {Input : Type uInput} {Witness : Type uWitness}
    (profile : IntervalProfile Input Witness) (input : Input) where
  value : Witness
  evidence : profile.admissible input value

end FCRS.Transport
```
