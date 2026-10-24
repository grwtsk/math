# exampleRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a952b052abcd3ef1aabcefab3cbd0e7fd641c08f6e5d88a8507979d7c5d6d889",
  "kind": "def",
  "lexical_name": "exampleRelation",
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
  "slug": "examplerelation--46263306d9ad7ece38a2b937",
  "source": {
    "blob": "664f9527f157b83621477cbb164cc268b391ecb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 858,
    "line": 811,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PrismaticShapeUpdateZKP/Variant1748af12117d41a419fa211e07ee8379763929d656a7ae82ef195c02f2ddcc66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46263306d9ad7ece38a2b9377c7fbe10cbb6a86115b2ac8fdd6a0e859957f278",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PrismaticShapeUpdateZKP/Variant1748af12117d41a419fa211e07ee8379763929d656a7ae82ef195c02f2ddcc66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a952b052abcd3ef1aabcefab3cbd0e7fd641c08f6e5d88a8507979d7c5d6d889`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 811–858.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exampleRelation :
    LocalShapeUpdateZKPRelation examplePublic exampleWitness where
  publicPriorOK := trivial
  publicNextOK := trivial
  publicValuationOK := trivial
  publicMobiusOK := trivial
  publicTreeOK := trivial
  publicMatrixOK := trivial
  publicProjectionOK := trivial
  publicDyadicScaleOK := trivial
  publicDyadicErrorOK := trivial
  publicDeterminantOK := trivial
  publicPrismaticOK := trivial
  publicSpectralTraceOK := trivial
  publicTorsionOK := trivial
  boundedValuationOK := exampleBoundedValuation.bounded
  supportOK := exampleMobiusReduction.supportSound
  primePowerFlagOK := exampleMobiusReduction.primePowerFlagSound
  mobiusOK := exampleMobiusReduction.weightSound
  projectionOK := trivial
  dyadicStabilityOK := trivial
  determinantOK := trivial
  prismaticOK := trivial
  spectralTraceRoutedExternally := trivial
  torsionOK := trivial
  torsionNotFromFieldHomology := trivial
  projectionFlagOK := by
    intro _
    trivial
  prismaticFlagOK := by
    intro _
    trivial
  spectralFlagOK := by
    intro _
    trivial
  determinantFlagOK := by
    intro _
    trivial
  torsionFlagOK := by
    intro _
    trivial
  noRawForwardCycleFlatness :=
    dyadic_stability_does_not_assume_exact_raw_flatness
      exampleDyadicStability
  noKernelConnesTraceInternalization :=
    kernel_does_not_internalize_global_connes_trace
      exampleSpectralAuthority

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PrismaticShapeUpdateZKP/Variant1748af12117d41a419fa211e07ee8379763929d656a7ae82ef195c02f2ddcc66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PrismaticShapeUpdateZKP/Variant1748af12117d41a419fa211e07ee8379763929d656a7ae82ef195c02f2ddcc66.lean#L811).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `664f9527f157b83621477cbb164cc268b391ecb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
