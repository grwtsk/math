# handleForwardInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9475963e2d6e75d149a4a8a4e015efeb3a34ca66fde29a5ddc6f579ee3749a5",
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
  "slug": "handleforwardinterval--bd974464614dfa720204f926",
  "source": {
    "blob": "91ef6f30eb5b62bbe5255296e121fb7460609556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1066,
    "line": 1033,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd974464614dfa720204f92661f18318731f526fb79fc2c2046e590da2689435",
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

Occurrence: `declaration:a9475963e2d6e75d149a4a8a4e015efeb3a34ca66fde29a5ddc6f579ee3749a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1033–1066.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant0757a472688d5047186cd1e0994f157738be07c777cce60d8625ce7e775d7870.lean#L1033).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91ef6f30eb5b62bbe5255296e121fb7460609556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
