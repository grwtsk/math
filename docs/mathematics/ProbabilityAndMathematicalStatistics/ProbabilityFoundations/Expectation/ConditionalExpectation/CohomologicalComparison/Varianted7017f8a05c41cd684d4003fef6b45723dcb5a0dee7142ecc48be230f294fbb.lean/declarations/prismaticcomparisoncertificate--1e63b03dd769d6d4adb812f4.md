# prismaticComparisonCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:735163eae57b3e9ed94bc8b3cbdd5b93a34fc7a23db891e41925186e4c24b3e9",
  "kind": "def",
  "lexical_name": "prismaticComparisonCertificate",
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
  "slug": "prismaticcomparisoncertificate--1e63b03dd769d6d4adb812f4",
  "source": {
    "blob": "84c77d34cb68961611dc54cefae1bb0eb77bdf1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 366,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/CohomologicalComparison/Varianted7017f8a05c41cd684d4003fef6b45723dcb5a0dee7142ecc48be230f294fbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e63b03dd769d6d4adb812f4c1d76a67aa9e4ad04ca295880121f1fd66530d24",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/CohomologicalComparison/Varianted7017f8a05c41cd684d4003fef6b45723dcb5a0dee7142ecc48be230f294fbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:735163eae57b3e9ed94bc8b3cbdd5b93a34fc7a23db891e41925186e4c24b3e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prismaticComparisonCertificate
    (A : PrismaticComparisonAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.prismaticComparison
  label := "prismatic comparison certificate"
  publicHash := 0
  sound := A.prismaticSiteConstructed ∧ A.comparisonSound
  soundProof := prismatic_comparison_authorized A

/-- The only conversion from prismatic-comparison authority to certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/CohomologicalComparison/Varianted7017f8a05c41cd684d4003fef6b45723dcb5a0dee7142ecc48be230f294fbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/CohomologicalComparison/Varianted7017f8a05c41cd684d4003fef6b45723dcb5a0dee7142ecc48be230f294fbb.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84c77d34cb68961611dc54cefae1bb0eb77bdf1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
