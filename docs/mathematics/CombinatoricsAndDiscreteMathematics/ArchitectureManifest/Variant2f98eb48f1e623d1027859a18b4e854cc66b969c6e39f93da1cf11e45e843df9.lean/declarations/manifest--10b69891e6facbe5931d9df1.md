# manifest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61caa7e56db4069455225166e4fbc3a93b1207e6d6184241be2759bebfeed2ca",
  "kind": "def",
  "lexical_name": "manifest",
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
  "slug": "manifest--10b69891e6facbe5931d9df1",
  "source": {
    "blob": "fcd7aafe7ad20f2ed6855255c78997746eb4ed93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 270,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10b69891e6facbe5931d9df1346bc6827cfdf18a408b2ca9c13718a6955d5697",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61caa7e56db4069455225166e4fbc3a93b1207e6d6184241be2759bebfeed2ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def manifest (project : graph.ProjectId) :
    DAF.ProjectManifest graph.ProjectId where
  projectId := project
  semanticVersion := ⟨0, 1, 0⟩
  directDependencies := graph.dependsOn project
  publicEnvironmentFingerprint := placeholderFingerprint
  implementationFingerprint := placeholderFingerprint
  runtimeArtifactFingerprint := none
  interfaceModule := ownedNamespace project
  soundnessTheorems := ∅
  upgradeTheorems := ∅
  ownedNamespaces := {ownedNamespace project}
  allowedDependencies := graph.dependsOn project
  forbiddenDependencies := ∅

/-- Every logical manifest agrees with the certified graph. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ArchitectureManifest/Variant2f98eb48f1e623d1027859a18b4e854cc66b969c6e39f93da1cf11e45e843df9.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcd7aafe7ad20f2ed6855255c78997746eb4ed93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
