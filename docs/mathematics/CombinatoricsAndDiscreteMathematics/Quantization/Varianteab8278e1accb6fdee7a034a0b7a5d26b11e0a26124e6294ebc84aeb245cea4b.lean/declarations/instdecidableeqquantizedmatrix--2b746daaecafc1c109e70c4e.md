# instDecidableEqQuantizedMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2972400f8b0b8d6abb68273e3e22fb1a9d4f66e8dc52c0e62601ddf2bd22f205",
  "kind": "instance",
  "lexical_name": "instDecidableEqQuantizedMatrix",
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
  "slug": "instdecidableeqquantizedmatrix--2b746daaecafc1c109e70c4e",
  "source": {
    "blob": "d1ef51f9eb8899a53d7b5443075ef0f178db45a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 270,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b746daaecafc1c109e70c4ef85e4a4deb1ad39f870d62d182bbebf6bd3d05d5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2972400f8b0b8d6abb68273e3e22fb1a9d4f66e8dc52c0e62601ddf2bd22f205`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instDecidableEqQuantizedMatrix
    (bits rows columns : Nat) :
    DecidableEq (QuantizedMatrix bits rows columns) := by
  unfold QuantizedMatrix BinMat Matrix
  infer_instance

/-- The complete bit-plane space has one independent bit per plane and cell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1ef51f9eb8899a53d7b5443075ef0f178db45a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
