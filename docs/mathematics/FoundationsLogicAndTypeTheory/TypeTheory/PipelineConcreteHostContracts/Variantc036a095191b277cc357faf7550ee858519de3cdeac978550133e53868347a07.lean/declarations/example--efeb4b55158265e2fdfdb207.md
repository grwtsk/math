# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:880bea0d89a7e08fa7096a857137ee500e5357ad66ac67ee7cb98fed45c57c7a",
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
  "slug": "example--efeb4b55158265e2fdfdb207",
  "source": {
    "blob": "425d294ed3e432d44204057ef5f9df083b15d67e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1190,
    "line": 1185,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineConcreteHostContracts/Variantc036a095191b277cc357faf7550ee858519de3cdeac978550133e53868347a07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:efeb4b55158265e2fdfdb207ae01d9579ed702913d017e86f481b7404dc3ca85",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineConcreteHostContracts/Variantc036a095191b277cc357faf7550ee858519de3cdeac978550133e53868347a07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:880bea0d89a7e08fa7096a857137ee500e5357ad66ac67ee7cb98fed45c57c7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1185–1190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (plan : Plan) (roots : Roots) (actions : List RoutedAction)
    (taxonomyDirectories archiveDirectories : List String) (area : Area) (prepared : Prepared)
    (accepted : preflight plan roots actions taxonomyDirectories archiveDirectories area = .ok prepared) :
    prepared.directories.length ≤ PlanResources.maxFiles :=
  preflight_success_directory_bound plan roots actions taxonomyDirectories archiveDirectories area prepared accepted

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/PipelineConcreteHostContracts/Variantc036a095191b277cc357faf7550ee858519de3cdeac978550133e53868347a07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/PipelineConcreteHostContracts/Variantc036a095191b277cc357faf7550ee858519de3cdeac978550133e53868347a07.lean#L1185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `425d294ed3e432d44204057ef5f9df083b15d67e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
