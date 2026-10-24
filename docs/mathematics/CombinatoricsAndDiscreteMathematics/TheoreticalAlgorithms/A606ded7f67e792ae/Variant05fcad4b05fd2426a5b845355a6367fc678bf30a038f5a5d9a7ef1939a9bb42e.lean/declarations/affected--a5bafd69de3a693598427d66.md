# Affected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da8827ee89c2c05eddd95b67f29bd9a58b771e6c902c099020ad7ac31b20a71e",
  "kind": "def",
  "lexical_name": "Affected",
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
  "slug": "affected--a5bafd69de3a693598427d66",
  "source": {
    "blob": "1da79ca92ac807a9a5d189c0fdad79b0b871e977",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 18,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A606ded7f67e792ae/Variant05fcad4b05fd2426a5b845355a6367fc678bf30a038f5a5d9a7ef1939a9bb42e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5bafd69de3a693598427d660d2cf039713236e03dd60785b8f023942be3736f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A606ded7f67e792ae/Variant05fcad4b05fd2426a5b845355a6367fc678bf30a038f5a5d9a7ef1939a9bb42e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da8827ee89c2c05eddd95b67f29bd9a58b771e6c902c099020ad7ac31b20a71e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Affected
    (dependsOn : Project → Project → Prop)
    (changed : Set Project) : Set Project :=
  fun project ↦
    ∀ candidate : Set Project,
      changed ⊆ candidate →
      DependencyClosed dependsOn candidate →
      candidate project

end IncrementalBuild

namespace WorkspaceUpgrade

end WorkspaceUpgrade

end Mathematics.System
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A606ded7f67e792ae/Variant05fcad4b05fd2426a5b845355a6367fc678bf30a038f5a5d9a7ef1939a9bb42e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A606ded7f67e792ae/Variant05fcad4b05fd2426a5b845355a6367fc678bf30a038f5a5d9a7ef1939a9bb42e.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1da79ca92ac807a9a5d189c0fdad79b0b871e977` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
