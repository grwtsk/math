# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Singleton.Variant4c9dd364ec062be289db18147b5b3a9f7c7336d8ed8af3331575ecf4e86b80e6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1d57f11d9a62fb50cc3fb06409a7627ef321026` · SHA-256 `e9da7352bd1a83ecf82322a27430e2205915b263a16723f483010efe0d8cc8fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.CertifiedInvariantSingleton.Variant78a1ce5b39d7240e29f7e14b892484b9345a43f9a3c50cdd7197ecf5f13f8f01","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"78a1ce5b39d7240e29f7e14b892484b9345a43f9a3c50cdd7197ecf5f13f8f01","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.MomentsAndRandomVariables.SourceCorpus.CertifiedInvariantSingleton.Variant78a1ce5b39d7240e29f7e14b892484b9345a43f9a3c50cdd7197ecf5f13f8f01","mathematical_subject":"Probability.MomentsAndRandomVariables","original_sha256":"78a1ce5b39d7240e29f7e14b892484b9345a43f9a3c50cdd7197ecf5f13f8f01","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/staged-validation-6c1160a309e689e3/Mathematics/Operational/Singleton.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Operational.Evolution

/-!
# Certified invariant singleton beacons

A singleton intrinsic stratum that is preserved by a flow or surgery is a
fixed point.  The structural-orbit premise is retained in the certificate even
though the fixed-point proof itself needs only stratum singletonness and
invariance.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.CertifiedInvariantSingleton.Variant78a1ce5b39d7240e29f7e14b892484b9345a43f9a3c50cdd7197ecf5f13f8f01

namespace Mathematics.Operational

universe u v w

variable {State : Type u}

/-- The equivalence stratum of `beacon`. -/
def intrinsicStratum
    (intrinsic : Setoid State)
    (beacon : State) :
    Set State :=
  {state | intrinsic.r state beacon}

/-- The orbit under the complete declared automorphism action. -/
def structuralOrbit
    (action : Automorphism → State → State)
    (beacon : State) :
    Set State :=
  {state | ∃ automorphism, action automorphism beacon = state}

/--
Certificate that a state is a singleton intrinsic stratum, has singleton
structural orbit, and is preserved at the stratum level by every intrinsic
flow.
-/
structure CertifiedInvariantSingleton
    (intrinsic : Setoid State)
    (action : Automorphism → State → State)
    (flow : Time → State → State)
    (beacon : State) : Prop where
  stratum_singleton :
    intrinsicStratum intrinsic beacon = {beacon}
  structuralOrbit_singleton :
    structuralOrbit action beacon = {beacon}
  flow_preserves_stratum :
    ∀ time,
      Set.MapsTo (flow time)
        (intrinsicStratum intrinsic beacon)
        (intrinsicStratum intrinsic beacon)

/-- Every certified invariant singleton is fixed by every admissible flow. -/
theorem CertifiedInvariantSingleton.flow_fixed
    {intrinsic : Setoid State}
    {action : Automorphism → State → State}
    {flow : Time → State → State}
    {beacon : State}
    (certificate :
      CertifiedInvariantSingleton intrinsic action flow beacon)
    (time : Time) :
    flow time beacon = beacon := by
  have beaconMember :
      beacon ∈ intrinsicStratum intrinsic beacon :=
    intrinsic.refl beacon
  have imageMember :=
    certificate.flow_preserves_stratum time beaconMember
  rw [certificate.stratum_singleton] at imageMember
  simpa using imageMember

/-- Any surgery mapping a certified singleton into its stratum fixes it. -/
theorem CertifiedInvariantSingleton.surgery_fixed
    {intrinsic : Setoid State}
    {action : Automorphism → State → State}
    {flow : Time → State → State}
    {beacon : State}
    (certificate :
      CertifiedInvariantSingleton intrinsic action flow beacon)
    (surgery : State → State)
    (preserves :
      surgery beacon ∈ intrinsicStratum intrinsic beacon) :
    surgery beacon = beacon := by
  rw [certificate.stratum_singleton] at preserves
  simpa using preserves

end Mathematics.Operational
```
