# etaleComparisonCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e89660662c6513f9b49b7d822f47d12535d72e4535ff0f6afbb28df83fa549f",
  "kind": "def",
  "lexical_name": "etaleComparisonCertificate",
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
  "slug": "etalecomparisoncertificate--24fb5c1c1c17e8d1a6898a3b",
  "source": {
    "blob": "7ebbe7c5f2ca22841b773928edf7e659c857718c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 422,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/CohomologicalComparison/Variantfdbd25a2ee9df86c31fb42d574c76f957256210d1d8eca2a83f09d05961a1780.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24fb5c1c1c17e8d1a6898a3be4a31d4814307f9ea4b2d9eec8ff1a3d5b7ef6a6",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/CohomologicalComparison/Variantfdbd25a2ee9df86c31fb42d574c76f957256210d1d8eca2a83f09d05961a1780.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e89660662c6513f9b49b7d822f47d12535d72e4535ff0f6afbb28df83fa549f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 422–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def etaleComparisonCertificate
    (A : EtaleComparisonAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.etaleComparison
  label := "étale comparison certificate"
  publicHash := 0
  sound := A.etaleComparisonSound
  soundProof := etale_comparison_authorized A

/-- Convert a Hodge–Tate comparison authority into an analytic certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/CohomologicalComparison/Variantfdbd25a2ee9df86c31fb42d574c76f957256210d1d8eca2a83f09d05961a1780.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/CohomologicalComparison/Variantfdbd25a2ee9df86c31fb42d574c76f957256210d1d8eca2a83f09d05961a1780.lean#L422).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ebbe7c5f2ca22841b773928edf7e659c857718c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
