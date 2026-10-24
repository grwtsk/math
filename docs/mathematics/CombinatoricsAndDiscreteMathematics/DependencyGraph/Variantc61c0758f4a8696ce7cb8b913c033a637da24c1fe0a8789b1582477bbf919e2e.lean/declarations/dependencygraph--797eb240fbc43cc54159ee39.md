# DependencyGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c8a8fcaf3ad8fc032ef4967f40905a3f49e09add09bed13a6e9047f05a6a82f",
  "kind": "structure",
  "lexical_name": "DependencyGraph",
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
  "slug": "dependencygraph--797eb240fbc43cc54159ee39",
  "source": {
    "blob": "e27da6af2452f986a7fce03825b9d0ae741cfbdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 23,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:797eb240fbc43cc54159ee3918d9081fc82cbd918dd312171ecf1aeff22a9407",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c8a8fcaf3ad8fc032ef4967f40905a3f49e09add09bed13a6e9047f05a6a82f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DependencyGraph where
  ProjectId : Type u
  instFintype : Fintype ProjectId
  instDecidableEq : DecidableEq ProjectId
  dependsOn : ProjectId → Finset ProjectId
  acyclic : WellFounded (fun q p ↦ q ∈ dependsOn p)

attribute [instance] DependencyGraph.instFintype DependencyGraph.instDecidableEq

/--
Construct a dependency graph from a natural-valued topological rank.  This is a
convenient executable interface for concrete manifests: every dependency must
have strictly smaller rank than the project that imports it.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DependencyGraph/Variantc61c0758f4a8696ce7cb8b913c033a637da24c1fe0a8789b1582477bbf919e2e.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e27da6af2452f986a7fce03825b9d0ae741cfbdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
