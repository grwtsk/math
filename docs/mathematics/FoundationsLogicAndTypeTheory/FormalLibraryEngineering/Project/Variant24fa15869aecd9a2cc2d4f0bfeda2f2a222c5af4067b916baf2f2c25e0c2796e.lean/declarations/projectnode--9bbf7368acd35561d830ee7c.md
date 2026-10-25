# ProjectNode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d30b884d178327509990922e523670ebb57c98fb8d5c5dd24de268c57d12b111",
  "kind": "structure",
  "lexical_name": "ProjectNode",
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
  "slug": "projectnode--9bbf7368acd35561d830ee7c",
  "source": {
    "blob": "417d679c3a26d8d5ec8fb864f028f734fdfb651e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Project/Variant24fa15869aecd9a2cc2d4f0bfeda2f2a222c5af4067b916baf2f2c25e0c2796e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9bbf7368acd35561d830ee7c5c089772517ffd06b74fbab843698ebb2710675e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Project/Variant24fa15869aecd9a2cc2d4f0bfeda2f2a222c5af4067b916baf2f2c25e0c2796e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d30b884d178327509990922e523670ebb57c98fb8d5c5dd24de268c57d12b111`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProjectNode
    (G : DependencyGraph.{u})
    (Exports : G.ProjectId → Type v)
    (p : G.ProjectId) where
  /-- Type of concrete build artifacts for this node. -/
  Artifact : Type w
  /-- Declarative public semantics assembled from direct dependency exports. -/
  semantics : DependencyEnv G Exports p → Exports p
  /-- Public denotation of a concrete artifact. -/
  denote : Artifact → Exports p
  /-- Certification predicate relative to the dependency environment. -/
  ValidArtifact : DependencyEnv G Exports p → Artifact → Prop
  /-- Every certified artifact denotes the declarative semantics. -/
  artifact_sound :
    ∀ env artifact,
      ValidArtifact env artifact →
        denote artifact = semantics env

namespace ProjectNode

/-- The public type of a project node, definitionally aligned with `Exports`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Project/Variant24fa15869aecd9a2cc2d4f0bfeda2f2a222c5af4067b916baf2f2c25e0c2796e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Project/Variant24fa15869aecd9a2cc2d4f0bfeda2f2a222c5af4067b916baf2f2c25e0c2796e.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `417d679c3a26d8d5ec8fb864f028f734fdfb651e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
