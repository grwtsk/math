# handleForwardInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:909279583ccadfc7ff920972aa51b031de904460d97b3202853fa32d64adfc91",
  "kind": "def",
  "lexical_name": "handleForwardInterval",
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
  "slug": "handleforwardinterval--238241b047db9152a4502168",
  "source": {
    "blob": "5184af2a459a9ee0e3b81eef1221c21e11ccc4c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1058,
    "line": 1025,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant220c758a389d1b42bbc0d20970e32515b43481b5555e9b495b1544e402d36920.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:238241b047db9152a4502168af566922b6077d42839e8003bbed428d68217c3f",
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

Occurrence: `declaration:909279583ccadfc7ff920972aa51b031de904460d97b3202853fa32d64adfc91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1025–1058.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def handleForwardInterval (req : ForwardIntervalRequest) : Json :=
  -- Convert raw layers to ML.Layer
  let layers : List LeanCert.ML.Layer := req.layers.toList.map RawLayer.toLayer

  -- Convert raw input intervals to IntervalVector (using Dyadic)
  let input : LeanCert.Engine.IntervalVector :=
    req.input.toList.map (fun ri =>
      let irat := ri.toInterval
      Core.IntervalDyadic.ofIntervalRat irat req.precision)

  -- Build SequentialNet and run forward propagation
  let net : LeanCert.ML.Distillation.SequentialNet := { layers := layers }
  let output := LeanCert.ML.Distillation.SequentialNet.forwardInterval net input req.precision

  -- Serialize output intervals
  let outputJson := output.map (fun I =>
    Json.mkObj [
      ("lo", toJson (toRawRat I.lo.toRat)),
      ("hi", toJson (toRawRat I.hi.toRat))
    ])

  Json.mkObj [
    ("output", Json.arr outputJson.toArray),
    ("numLayers", toJson layers.length),
    ("outputDim", toJson output.length)
  ]

/-- Handle derivative interval request.

Computes bounds on all partial derivatives (the gradient) over a box.
This is used for computing Lipschitz constants: L = max_i sup_x |∂f/∂xᵢ(x)|.

Returns: Array of intervals, one per variable, each containing ∂f/∂xᵢ for all x ∈ box.
Also returns the Lipschitz bound L = max(|lo|, |hi|) over all partial derivatives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant220c758a389d1b42bbc0d20970e32515b43481b5555e9b495b1544e402d36920.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant220c758a389d1b42bbc0d20970e32515b43481b5555e9b495b1544e402d36920.lean#L1025).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5184af2a459a9ee0e3b81eef1221c21e11ccc4c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
