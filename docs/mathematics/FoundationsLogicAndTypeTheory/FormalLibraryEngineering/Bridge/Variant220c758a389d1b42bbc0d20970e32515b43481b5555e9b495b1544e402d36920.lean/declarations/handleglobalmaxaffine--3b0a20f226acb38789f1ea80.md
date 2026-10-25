# handleGlobalMaxAffine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62931fb57a6f5b5f98efa864b4c5d6312e6df7ff92332d682620fa4785b1d7bc",
  "kind": "def",
  "lexical_name": "handleGlobalMaxAffine",
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
  "slug": "handleglobalmaxaffine--3b0a20f226acb38789f1ea80",
  "source": {
    "blob": "5184af2a459a9ee0e3b81eef1221c21e11ccc4c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 796,
    "line": 775,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant220c758a389d1b42bbc0d20970e32515b43481b5555e9b495b1544e402d36920.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b0a20f226acb38789f1ea80dec4ec7e67bcccff7d7a53744dd2d0a3ef0a48c5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant220c758a389d1b42bbc0d20970e32515b43481b5555e9b495b1544e402d36920.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62931fb57a6f5b5f98efa864b4c5d6312e6df7ff92332d682620fa4785b1d7bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 775–796.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def handleGlobalMaxAffine (req : OptimizeAffineRequest) : Json :=
  let box : Box := req.box.toList.map RawInterval.toInterval
  let cfg : GlobalOptConfigAffine := {
    maxIterations := req.maxIters,
    tolerance := req.tolerance.toRat,
    useMonotonicity := req.useMonotonicity,
    taylorDepth := req.taylorDepth,
    maxNoiseSymbols := req.maxNoiseSymbols
  }

  let result := globalMaximizeAffine req.expr box cfg

  let bestBoxJson := Json.arr (result.bound.bestBox.map (fun i => toJson (toRawInterval i))).toArray

  Json.mkObj [
    ("lo", toJson (toRawRat result.bound.lo)),
    ("hi", toJson (toRawRat result.bound.hi)),
    ("remainingBoxes", toJson result.remainingBoxes.length),
    ("bestBox", bestBoxJson)
  ]

/-- Handle bound checking request -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant220c758a389d1b42bbc0d20970e32515b43481b5555e9b495b1544e402d36920.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant220c758a389d1b42bbc0d20970e32515b43481b5555e9b495b1544e402d36920.lean#L775).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5184af2a459a9ee0e3b81eef1221c21e11ccc4c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
