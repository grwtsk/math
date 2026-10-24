# ProjectManifest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a6d57c9e13105b230b7272fbb2e04500c4ecff76dc19a52a99de84048f7d879",
  "kind": "structure",
  "lexical_name": "ProjectManifest",
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
  "slug": "projectmanifest--3309ad543c241ff4e06ac96b",
  "source": {
    "blob": "b88e242f75178ae82230d3baecf5bcf91d7fd2db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 13,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant232332623127c4fee84b143b3020563a2918be886bc4a37aa3ebd9498a3e392d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3309ad543c241ff4e06ac96b752a8dfb0448bd673df7487e7843b7ff9870014e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Manifest/Variant232332623127c4fee84b143b3020563a2918be886bc4a37aa3ebd9498a3e392d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a6d57c9e13105b230b7272fbb2e04500c4ecff76dc19a52a99de84048f7d879`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProjectManifest where
  revision : ProjectRevision
  sourceInventory : Finset ArtifactId
  artifacts : List RawArtifact
  artifactIdsUnique : (artifacts.map RawArtifact.artifactId).Nodup
  coverage :
    ∀ artifactId,
      artifactId ∈ sourceInventory ↔
        ∃ artifact ∈ artifacts, artifact.artifactId = artifactId
  manifestDigest : Digest

namespace ProjectManifest

/-- No inventoried artifact may disappear silently. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Manifest/Variant232332623127c4fee84b143b3020563a2918be886bc4a37aa3ebd9498a3e392d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant232332623127c4fee84b143b3020563a2918be886bc4a37aa3ebd9498a3e392d.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b88e242f75178ae82230d3baecf5bcf91d7fd2db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
