# between

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ed72f9b81163572e3b59e3d474445cff218253ef5c2189ac1df7c95b1a6a818",
  "kind": "def",
  "lexical_name": "between",
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
  "slug": "between--c5da1ab5d8a4295c25f670c2",
  "source": {
    "blob": "ca2310a94c2269178bd39834fe8e9dde1e0deada",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 91,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BuildModel/Variant780d1b2bd382956b194bf855c3487de0023036ec6473b51c65ad17c818aebe30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5da1ab5d8a4295c25f670c28624caadf960a445f636cccaef34cc11bb5815c6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BuildModel/Variant780d1b2bd382956b194bf855c3487de0023036ec6473b51c65ad17c818aebe30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ed72f9b81163572e3b59e3d474445cff218253ef5c2189ac1df7c95b1a6a818`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def between
    (G : DependencyGraph)
    (old new : ManifestSet G) : ChangeSet G where
  implementationChangedSet := Finset.univ.filter fun p ↦
    (old p).implementationFingerprint ≠ (new p).implementationFingerprint
  publicChangedSet := Finset.univ.filter fun p ↦
    (old p).publicEnvironmentFingerprint ≠ (new p).publicEnvironmentFingerprint
  runtimeChangedSet := Finset.univ.filter fun p ↦
    (old p).runtimeArtifactFingerprint ≠ (new p).runtimeArtifactFingerprint

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BuildModel/Variant780d1b2bd382956b194bf855c3487de0023036ec6473b51c65ad17c818aebe30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BuildModel/Variant780d1b2bd382956b194bf855c3487de0023036ec6473b51c65ad17c818aebe30.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca2310a94c2269178bd39834fe8e9dde1e0deada` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
