# topBoundaryFields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a45d78d8de354d9b22287aa3ea041f9e2d901def27c2f8eb305c9ed042840d8c",
  "kind": "def",
  "lexical_name": "topBoundaryFields",
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
  "slug": "topboundaryfields--04f84f2ee5d309bcf9d0f196",
  "source": {
    "blob": "ce5a7fc33489202fe23a2d31ab5e2e24b65f4cdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 142,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variant9851cff61829294eb98219cfe7bac8c582a1cd6d36db663fa69683ed8cd1eeb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04f84f2ee5d309bcf9d0f196a3a24bef6fdfc662816d11d5942ee67c7905d13d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variant9851cff61829294eb98219cfe7bac8c582a1cd6d36db663fa69683ed8cd1eeb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a45d78d8de354d9b22287aa3ea041f9e2d901def27c2f8eb305c9ed042840d8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def topBoundaryFields (centralTheorem artifactHash semanticStatus domainStatus branchStatus : String) :
    String :=
  "  \"gamma\": " ++ gammaJson ++ ",\n" ++
  "  \"gammaMode\": \"structural\",\n" ++
  "  \"gammaLevel\": 0,\n" ++
  "  \"precisionDirection\": \"baseline\",\n" ++
  "  \"centralTheorem\": " ++ stringJson centralTheorem ++ ",\n" ++
  "  \"provedTheorems\": " ++ provedCoverageTheoremsJson ++ ",\n" ++
  "  \"artifactHash\": " ++ stringJson artifactHash ++ ",\n" ++
  "  \"paperReferences\": " ++ defaultPaperReferencesJson ++ ",\n" ++
  "  \"logicalFoundation\": \"constructive\",\n" ++
  "  \"evolutionMode\": \"none\",\n" ++
  "  \"bijectivityStatus\": \"not_claimed\",\n" ++
  "  \"proofStatus\": \"checked_by_lean\",\n" ++
  "  \"semanticStatus\": " ++ stringJson semanticStatus ++ ",\n" ++
  "  \"domainStatus\": " ++ stringJson domainStatus ++ ",\n" ++
  "  \"branchStatus\": " ++ stringJson branchStatus ++ ",\n" ++
  "  \"claimBoundary\": " ++ claimBoundaryJson

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variant9851cff61829294eb98219cfe7bac8c582a1cd6d36db663fa69683ed8cd1eeb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variant9851cff61829294eb98219cfe7bac8c582a1cd6d36db663fa69683ed8cd1eeb7.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce5a7fc33489202fe23a2d31ab5e2e24b65f4cdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
