# GNSDeterminantExactnessBoundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:563c6896dc52c1d0f242970c8b59a299690b703338ff6cb666cf96a64ff5abe3",
  "kind": "structure",
  "lexical_name": "GNSDeterminantExactnessBoundary",
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
  "slug": "gnsdeterminantexactnessboundary--3c09940908b2c5f5f5f12aa4",
  "source": {
    "blob": "fa1eef2d66c0aaa05f51528967c0ace06752056e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 106,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/GNSDeterminantExactnessBoundary/Variant64131a4aea818e012ea81c1a04e65c40ee07a0aeb9bd57cd0d26bc0c591ecaea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c09940908b2c5f5f5f12aa495c2c46dddbd3325105125a75946239e8751face",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/GNSDeterminantExactnessBoundary/Variant64131a4aea818e012ea81c1a04e65c40ee07a0aeb9bd57cd0d26bc0c591ecaea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:563c6896dc52c1d0f242970c8b59a299690b703338ff6cb666cf96a64ff5abe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GNSDeterminantExactnessBoundary where
  gnsCovarianceAdmitted : Bool
  determinantClassAdmitted : Bool
  nonvanishingRegularizationAdmitted : Bool
  spectralMatchingAdmitted : Bool
  noSpuriousSpectrum : Bool
  connesPositiveBoundaryAdmitted : Bool
  taoHeatflowNegativeBoundaryAdmitted : Bool
  determinantExactness : Bool
  hilbertPolyaAuthority : Bool
  rhAuthority : Bool
  theoremAuthority : Bool
  determinantExactness_of_all_gates :
    gnsCovarianceAdmitted = true →
    determinantClassAdmitted = true →
    nonvanishingRegularizationAdmitted = true →
    spectralMatchingAdmitted = true →
    noSpuriousSpectrum = true →
    connesPositiveBoundaryAdmitted = true →
    taoHeatflowNegativeBoundaryAdmitted = true →
    determinantExactness = true
  no_hilbert_polya_from_determinant_gate_alone : hilbertPolyaAuthority = false
  no_rh_from_determinant_gate_alone : rhAuthority = false
  no_theorem_authority_without_external_spectral_proof : theoremAuthority = false

/-- Default Connes positive boundary: not admitted until bounded commutators and
compact-resolvent/semifinite substitute are both provided. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/GNSDeterminantExactnessBoundary/Variant64131a4aea818e012ea81c1a04e65c40ee07a0aeb9bd57cd0d26bc0c591ecaea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/GNSDeterminantExactnessBoundary/Variant64131a4aea818e012ea81c1a04e65c40ee07a0aeb9bd57cd0d26bc0c591ecaea.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa1eef2d66c0aaa05f51528967c0ace06752056e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
