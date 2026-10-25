# ReviewedCoverageReport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc42b577b0225c008b1745e8061c6973ff7c69cc9986c547c21b0c3e1b6e76a6",
  "kind": "structure",
  "lexical_name": "ReviewedCoverageReport",
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
  "slug": "reviewedcoveragereport--cb23f1339e76622562c23465",
  "source": {
    "blob": "9d4a81461ec36ad451a2d62deb3d2a4a7efdae2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Coverage/Variant0f0b20d4a72429d7f7b24f3e2dfc9be99b20c6fd5ad053771cc4d30d37516ed4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb23f1339e76622562c2346540b5c236c02ed9e73af5f62247191c51cc4bfd8c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Coverage/Variant0f0b20d4a72429d7f7b24f3e2dfc9be99b20c6fd5ad053771cc4d30d37516ed4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc42b577b0225c008b1745e8061c6973ff7c69cc9986c547c21b0c3e1b6e76a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ReviewedCoverageReport where
  coverage : MathematicalDomainCoverage
  objectCoverage : CoverageRatio
  statementCoverage : CoverageRatio
  reviewCoverage : CoverageRatio
  objectCounts :
    objectCoverage.numerator = coverage.coveredObjects ∧
      objectCoverage.denominator = coverage.eligibleObjects
  statementCounts :
    statementCoverage.numerator = coverage.coveredStatements ∧
      statementCoverage.denominator = coverage.eligibleStatements
  reviewCounts :
    reviewCoverage.numerator = coverage.reviewedItems ∧
      reviewCoverage.denominator = coverage.reviewEligibleItems
  reviewer : ArtifactIdentity
  reviewEvidence : ArtifactIdentity

/-- Coverage accounting cannot promote source authority. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Coverage/Variant0f0b20d4a72429d7f7b24f3e2dfc9be99b20c6fd5ad053771cc4d30d37516ed4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Coverage/Variant0f0b20d4a72429d7f7b24f3e2dfc9be99b20c6fd5ad053771cc4d30d37516ed4.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d4a81461ec36ad451a2d62deb3d2a4a7efdae2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
