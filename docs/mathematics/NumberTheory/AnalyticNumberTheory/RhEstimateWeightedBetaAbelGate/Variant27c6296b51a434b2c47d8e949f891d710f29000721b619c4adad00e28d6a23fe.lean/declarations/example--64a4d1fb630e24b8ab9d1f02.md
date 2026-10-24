# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:941792bba5b44327b56acf81fbafc8b713079adce1a6274ac40404c960ec4bd6",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--64a4d1fb630e24b8ab9d1f02",
  "source": {
    "blob": "6fe77d8951723cad799c17f3a4f231a6e17265df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RhEstimateWeightedBetaAbelGate/Variant27c6296b51a434b2c47d8e949f891d710f29000721b619c4adad00e28d6a23fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:64a4d1fb630e24b8ab9d1f02768641af7fcb3938eea95b41ad4c04678c1c66c0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/RhEstimateWeightedBetaAbelGate/Variant27c6296b51a434b2c47d8e949f891d710f29000721b619c4adad00e28d6a23fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:941792bba5b44327b56acf81fbafc8b713079adce1a6274ac40404c960ec4bd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A K : ℝ) (hA : 1 ≤ A) (hK : 1 ≤ K)
    (hSlope : ∀ t : ℝ, 0 ≤ t → |correlationSlope A t| ≤ K) :
    mertensResidual A ≤ betaMainLedger A +
      ∑ c ∈ logCells A, deterministicBlockBudget A K c :=
  mertensResidual_le_betaMain_add_budget A K hA hK hSlope

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/RhEstimateWeightedBetaAbelGate/Variant27c6296b51a434b2c47d8e949f891d710f29000721b619c4adad00e28d6a23fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/RhEstimateWeightedBetaAbelGate/Variant27c6296b51a434b2c47d8e949f891d710f29000721b619c4adad00e28d6a23fe.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fe77d8951723cad799c17f3a4f231a6e17265df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
