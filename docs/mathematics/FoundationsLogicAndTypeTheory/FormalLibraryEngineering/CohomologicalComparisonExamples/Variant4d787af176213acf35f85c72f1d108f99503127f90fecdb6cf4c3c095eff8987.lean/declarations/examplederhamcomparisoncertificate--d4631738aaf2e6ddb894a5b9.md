# exampleDeRhamComparisonCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6528b20c7eeb39e4f15b91ce3225bb07c9753213bc4a78e5e08dd6288023e88d",
  "kind": "def",
  "lexical_name": "exampleDeRhamComparisonCertificate",
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
  "slug": "examplederhamcomparisoncertificate--d4631738aaf2e6ddb894a5b9",
  "source": {
    "blob": "dd0e06dbd77af6f0578c79843e309e442b46a513",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 323,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CohomologicalComparisonExamples/Variant4d787af176213acf35f85c72f1d108f99503127f90fecdb6cf4c3c095eff8987.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4631738aaf2e6ddb894a5b92d11be48697fa0d9a8a68041dfe0f3ffe1be1728",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CohomologicalComparisonExamples/Variant4d787af176213acf35f85c72f1d108f99503127f90fecdb6cf4c3c095eff8987.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6528b20c7eeb39e4f15b91ce3225bb07c9753213bc4a78e5e08dd6288023e88d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exampleDeRhamComparisonCertificate : AnalyticCertificate :=
  CohomologicalComparison.deRhamComparisonCertificate
    exampleDeRhamComparisonAuthority

end CohomologicalComparisonExamples
end AnalyticNumber
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CohomologicalComparisonExamples/Variant4d787af176213acf35f85c72f1d108f99503127f90fecdb6cf4c3c095eff8987.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CohomologicalComparisonExamples/Variant4d787af176213acf35f85c72f1d108f99503127f90fecdb6cf4c3c095eff8987.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd0e06dbd77af6f0578c79843e309e442b46a513` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
