# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Theorem.Varianta878a81c1e6494da4bfcb7adb4ca58407e9b3b0f6d27a61d08185855fd37d742

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `610ef4b35b9d77255aad81f439d6b6b6e4c5c91e` · SHA-256 `a878a81c1e6494da4bfcb7adb4ca58407e9b3b0f6d27a61d08185855fd37d742`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Transport.IntervalProfile

universe uInput uWitness

namespace FCRS.Transport

/-- A certified claim keeps theorem and proof artifacts distinct. -/
structure CertifiedIntervalTheorem
    {Input : Type uInput} {Witness : Type uWitness}
    (profile : IntervalProfile Input Witness) where
  theoremArtifact : ArtifactRef .theoremArtifact
  proofArtifact : ArtifactRef .theoremProof
  formalDeclaration : ArtifactRef .formalDeclaration
  kernelBuildEvidence : ArtifactRef .kernelBuildEvidence
  assumptionSet : ArtifactRef .assumptionSet
  theoremArtifactExact : theoremArtifact = profile.sourceTheorem
  assumptionSetExact : assumptionSet = profile.assumptionSet
  claim : IntervalClaim profile

/--
`refined` proves at least what `broader` asks on the latter's declared scope.
The domain and admissibility transports are explicit proof fields.
-/
structure ProfileRefines
    {Input : Type uInput} {Witness : Type uWitness}
    (refined broader : IntervalProfile Input Witness) where
  adapterArtifact : ArtifactRef .normalizationAdapter
  proofArtifact : ArtifactRef .theoremProof
  comparisonScope : ArtifactRef .assumptionSet
  comparisonScopeExact : comparisonScope = broader.assumptionSet
  domainCoverage :
    ∀ input, broader.domain input → refined.domain input
  admissiblePreserved :
    ∀ input witness,
      broader.domain input →
      refined.admissible input witness →
        broader.admissible input witness

namespace ProfileRefines

/--
Transport an interval claim only through the supplied, proof-carrying profile
adapter.  Keeping this operation on `ProfileRefines` makes use of the adapter
visible in downstream corollaries instead of silently projecting a stronger
domain hypothesis by hand.
-/
theorem transportClaim
    {Input : Type uInput} {Witness : Type uWitness}
    {refined broader : IntervalProfile Input Witness}
    (adapter : ProfileRefines refined broader)
    (claim : IntervalClaim refined) :
    IntervalClaim broader := by
  intro input hDomain
  obtain ⟨witness, hAdmissible⟩ :=
    claim input (adapter.domainCoverage input hDomain)
  exact ⟨witness,
    adapter.admissiblePreserved input witness hDomain hAdmissible⟩

end ProfileRefines

end FCRS.Transport
```
