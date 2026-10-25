# outputBounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ce7880bbe4dc44a10ea757d69deeed367534d14e55e3e7f56ec6b856c31cc41",
  "kind": "def",
  "lexical_name": "outputBounds",
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
  "slug": "outputbounds--742e04088d07c72fec3cf093",
  "source": {
    "blob": "3bcde774f77fa552baca76f32ae110f88b3e1155",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variantebba8881d151f1da4044c3fee98eae11ffe2b20c903a408b8e91b187e74ffa07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:742e04088d07c72fec3cf09365b01f51420a8249ad08ea7d3ba7ff9084acdac3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variantebba8881d151f1da4044c3fee98eae11ffe2b20c903a408b8e91b187e74ffa07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ce7880bbe4dc44a10ea757d69deeed367534d14e55e3e7f56ec6b856c31cc41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def outputBounds : IntervalVector :=
  TwoLayerNet.forwardInterval simpleNet inputRegion (-53)

#eval outputBounds

/-! ## Verification

The key theorem would prove that for all inputs in the region,
the output stays within bounds. This requires the full correctness
chain from the ML module.

Note: Full robustness proofs require the affine arithmetic backend
for tight bounds with correlated variables.
-/

/-! ## Summary: Neural Network Support ✓

LeanCert can:
1. Define neural networks with typed layers
2. Compute interval bounds on outputs (forward propagation)
3. Use affine arithmetic for tighter bounds on correlated paths

For full adversarial robustness verification (like MNIST), additional
infrastructure would connect this to classification decisions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variantebba8881d151f1da4044c3fee98eae11ffe2b20c903a408b8e91b187e74ffa07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NeuralNet/Variantebba8881d151f1da4044c3fee98eae11ffe2b20c903a408b8e91b187e74ffa07.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bcde774f77fa552baca76f32ae110f88b3e1155` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
