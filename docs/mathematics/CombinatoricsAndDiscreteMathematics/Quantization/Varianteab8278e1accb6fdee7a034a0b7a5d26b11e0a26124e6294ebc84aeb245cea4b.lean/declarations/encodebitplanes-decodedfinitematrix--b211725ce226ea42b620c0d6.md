# encodeBitPlanes_decodedFiniteMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1ef51f9eb8899a53d7b5443075ef0f178db45a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 561,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1d6a489-a81f-5a02-c9bb-c512a354abea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40d5e47d-6a27-c484-1736-a07c47a9c7da",
  "kind": "theorem",
  "lexical_name": "encodeBitPlanes_decodedFiniteMatrix",
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
  "slug": "encodebitplanes-decodedfinitematrix--b211725ce226ea42b620c0d6",
  "source": {
    "blob": "d1ef51f9eb8899a53d7b5443075ef0f178db45a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 561,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b211725ce226ea42b620c0d67afb1938bc6d9e64ff6ac2cd0b4fb25ca5053856",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40d5e47d-6a27-c484-1736-a07c47a9c7da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 561–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem encodeBitPlanes_decodedFiniteMatrix
    (q : QuantizedMatrix bits rows columns) :
    encodeBitPlanes (decodedFiniteMatrix q) = q := by
  funext plane row column
  simp only [encodeBitPlanes, decodedFiniteMatrix]
  rw [decodeBitPlanes_eq_ofBits]
  exact Nat.testBit_ofBits_lt
    (fun index : Fin bits => q index row column)
    plane.val plane.isLt

end BinMat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean#L561).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1ef51f9eb8899a53d7b5443075ef0f178db45a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
