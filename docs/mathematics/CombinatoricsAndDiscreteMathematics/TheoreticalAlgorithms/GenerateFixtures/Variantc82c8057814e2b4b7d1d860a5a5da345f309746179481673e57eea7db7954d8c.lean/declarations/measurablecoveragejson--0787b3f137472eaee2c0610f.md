# measurableCoverageJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:947467dc4563088e1a2f4ef6c8706477e83c821fa1e8c7780aae5ff10c2a8297",
  "kind": "def",
  "lexical_name": "measurableCoverageJson",
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
  "slug": "measurablecoveragejson--0787b3f137472eaee2c0610f",
  "source": {
    "blob": "b84d57bef917b742fc1eab24aa543cd9d3567f0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 300,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0787b3f137472eaee2c0610f33050c187e97c47470fe16017d258f182b8f94e1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:947467dc4563088e1a2f4ef6c8706477e83c821fa1e8c7780aae5ff10c2a8297`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def measurableCoverageJson : String :=
  "{\n" ++
  "  \"schema\": \"surface.measurable.coverage.v1\",\n" ++
  "  \"source\": {\"leanModule\": \"Surface.Legacy.BinaryLogicMatrix.CoverageProofs\", \"trusted\": true},\n" ++
  topBoundaryFields "certifiedMeasurable_covered_by_extendedEML_atGamma"
    measurableArtifactHash "measurable_coverage_proved" "measurable_domain_certified"
    "not_branch_sensitive" ++ ",\n" ++
  "  \"targetClass\": \"CertifiedMeasurableFunction\",\n" ++
  "  \"coverageRelation\": \"CoveredByExtendedEMLAt\",\n" ++
  "  \"entries\": [" ++
    coverageEntryJson "measurable" "not_applicable" "measurableAtom" "measurable_atom"
      "measurable_coverage_proved" "measurable_domain_certified" "not_branch_sensitive" 0 ++
  "]\n" ++
  "}\n"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GenerateFixtures/Variantc82c8057814e2b4b7d1d860a5a5da345f309746179481673e57eea7db7954d8c.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b84d57bef917b742fc1eab24aa543cd9d3567f0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
