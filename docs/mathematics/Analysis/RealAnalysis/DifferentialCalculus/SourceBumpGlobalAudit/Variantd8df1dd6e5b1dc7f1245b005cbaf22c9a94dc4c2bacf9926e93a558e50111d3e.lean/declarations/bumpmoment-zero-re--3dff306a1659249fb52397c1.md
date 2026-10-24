# bumpMoment_zero_re

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dee8519c-d53e-5f89-5e46-f8adecb82490",
  "kind": "theorem",
  "lexical_name": "bumpMoment_zero_re",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "bumpmoment-zero-re--3dff306a1659249fb52397c1",
  "source": {
    "blob": "9208d935b190f9d040273f2a8db4056f20a3efd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 326,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variantd8df1dd6e5b1dc7f1245b005cbaf22c9a94dc4c2bacf9926e93a558e50111d3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dff306a1659249fb52397c13222284cfce5a9209bf19a44da19841d7fd64ac9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variantd8df1dd6e5b1dc7f1245b005cbaf22c9a94dc4c2bacf9926e93a558e50111d3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dee8519c-d53e-5f89-5e46-f8adecb82490`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bumpMoment_zero_re (z : ℂ) (hz : bumpMoment 0 z = 0) : z.re = 0 :=
  re_eq_zero_of_weighted_energy z (radialMass z) (radialEnergy z)
    (radialMass_pos z) (radialEnergy_nonneg z) (radial_energy_identity z hz)

end
end SourceBumpGlobalScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @SourceBumpGlobalScratch.bumpMoment_hasDerivAt
#print SourceBumpGlobalScratch.bumpMoment_hasDerivAt
#print axioms SourceBumpGlobalScratch.bumpMoment_hasDerivAt
#check @SourceBumpGlobalScratch.bumpMoment_continuous
#print SourceBumpGlobalScratch.bumpMoment_continuous
#print axioms SourceBumpGlobalScratch.bumpMoment_continuous
#check @SourceBumpGlobalScratch.radialProfile
#print SourceBumpGlobalScratch.radialProfile
#print axioms SourceBumpGlobalScratch.radialProfile
#check @SourceBumpGlobalScratch.radialFlux
#print SourceBumpGlobalScratch.radialFlux
#print axioms SourceBumpGlobalScratch.radialFlux
#check @SourceBumpGlobalScratch.radialProfile_hasDerivAt
#print SourceBumpGlobalScratch.radialProfile_hasDerivAt
#print axioms SourceBumpGlobalScratch.radialProfile_hasDerivAt
#check @SourceBumpGlobalScratch.radialFlux_hasDerivAt
#print SourceBumpGlobalScratch.radialFlux_hasDerivAt
#print axioms SourceBumpGlobalScratch.radialFlux_hasDerivAt
#check @SourceBumpGlobalScratch.radialMass
#print SourceBumpGlobalScratch.radialMass
#print axioms SourceBumpGlobalScratch.radialMass
#check @SourceBumpGlobalScratch.radialEnergy
#print SourceBumpGlobalScratch.radialEnergy
#print axioms SourceBumpGlobalScratch.radialEnergy
#check @SourceBumpGlobalScratch.radial_integrands_intervalIntegrable
#print SourceBumpGlobalScratch.radial_integrands_intervalIntegrable
#print axioms SourceBumpGlobalScratch.radial_integrands_intervalIntegrable
#check @SourceBumpGlobalScratch.radialEnergy_nonneg
#print SourceBumpGlobalScratch.radialEnergy_nonneg
#print axioms SourceBumpGlobalScratch.radialEnergy_nonneg
#check @SourceBumpGlobalScratch.radialMass_pos
#print SourceBumpGlobalScratch.radialMass_pos
#print axioms SourceBumpGlobalScratch.radialMass_pos
#check @SourceBumpGlobalScratch.radial_energy_identity
#print SourceBumpGlobalScratch.radial_energy_identity
#print axioms SourceBumpGlobalScratch.radial_energy_identity
#check @SourceBumpGlobalScratch.bumpMoment_zero_re
#print SourceBumpGlobalScratch.bumpMoment_zero_re
#print axioms SourceBumpGlobalScratch.bumpMoment_zero_re
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variantd8df1dd6e5b1dc7f1245b005cbaf22c9a94dc4c2bacf9926e93a558e50111d3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpGlobalAudit/Variantd8df1dd6e5b1dc7f1245b005cbaf22c9a94dc4c2bacf9926e93a558e50111d3e.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9208d935b190f9d040273f2a8db4056f20a3efd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
