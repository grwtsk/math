# handleGlobalMin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05ebf539e75c893761ecb291063bf11578b019415bc93cb92c32401d0b98525e",
  "kind": "def",
  "lexical_name": "handleGlobalMin",
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
  "slug": "handleglobalmin--52b7e0a3288e68d2427043b1",
  "source": {
    "blob": "91ef6f30eb5b62bbe5255296e121fb7460609556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 694,
    "line": 673,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52b7e0a3288e68d2427043b1510efc068014539a7b4c17436cf2cf3a88a6f0bd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05ebf539e75c893761ecb291063bf11578b019415bc93cb92c32401d0b98525e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 673–694.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def handleGlobalMin (req : OptimizeRequest) : Json :=
  let box : Box := req.box.toList.map RawInterval.toInterval
  let cfg : GlobalOptConfig := {
    maxIterations := req.maxIters,
    tolerance := req.tolerance.toRat,
    useMonotonicity := req.useMonotonicity,
    taylorDepth := req.taylorDepth
  }

  let result := globalMinimizeCoreDiv req.expr box cfg

  -- Include bestBox for counterexample concretization
  let bestBoxJson := Json.arr (result.bound.bestBox.map (fun i => toJson (toRawInterval i))).toArray

  Json.mkObj [
    ("lo", toJson (toRawRat result.bound.lo)),
    ("hi", toJson (toRawRat result.bound.hi)),
    ("remainingBoxes", toJson result.remainingBoxes.length),
    ("bestBox", bestBoxJson)
  ]

/-- Handle global maximization request -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean#L673).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91ef6f30eb5b62bbe5255296e121fb7460609556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
