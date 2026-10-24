# comparisonIsomorphismCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:170e087f97db5ed666a0cb888a44489ba1b9d15af3abb223cb49721538c51d14",
  "kind": "def",
  "lexical_name": "comparisonIsomorphismCertificate",
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
  "slug": "comparisonisomorphismcertificate--3e6e3e5c745c4e6773875fb1",
  "source": {
    "blob": "7ebbe7c5f2ca22841b773928edf7e659c857718c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 360,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/CohomologicalComparison/Variantfdbd25a2ee9df86c31fb42d574c76f957256210d1d8eca2a83f09d05961a1780.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e6e3e5c745c4e6773875fb1f331ac7c7a669bac988063a456c39c23c43fc828",
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

Occurrence: `declaration:170e087f97db5ed666a0cb888a44489ba1b9d15af3abb223cb49721538c51d14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comparisonIsomorphismCertificate
    (A : ComparisonIsomorphismAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.comparisonIsomorphism
  label := "cohomological comparison isomorphism certificate"
  publicHash := 0
  sound :=
    A.inverseConstructed ∧
      A.leftInverseSound ∧
      A.rightInverseSound ∧
      A.isomorphismSound
  soundProof := comparison_isomorphism_authorized A

/-- Convert a prismatic comparison authority into an analytic certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/CohomologicalComparison/Variantfdbd25a2ee9df86c31fb42d574c76f957256210d1d8eca2a83f09d05961a1780.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/CohomologicalComparison/Variantfdbd25a2ee9df86c31fb42d574c76f957256210d1d8eca2a83f09d05961a1780.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ebbe7c5f2ca22841b773928edf7e659c857718c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
