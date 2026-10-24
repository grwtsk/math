# card_effectiveStates_le_resolution

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
      "line": 425,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9eef1534-37dd-df5d-8d45-1eee92af2260",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e04afb9b-5ed8-7908-176e-1bc8e92c91a5",
  "kind": "theorem",
  "lexical_name": "card_effectiveStates_le_resolution",
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
  "slug": "card-effectivestates-le-resolution--58305f62e2361326381b7a8a",
  "source": {
    "blob": "d1ef51f9eb8899a53d7b5443075ef0f178db45a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 425,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58305f62e2361326381b7a8a048aea8ca5d004425a92948e3cbaa216408d29c7",
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

Occurrence: `result:e04afb9b-5ed8-7908-176e-1bc8e92c91a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_effectiveStates_le_resolution
    (Q : NQuantizer Cfg rows columns)
    [Fintype Cfg] :
    Q.effectiveStates.card ≤
      2 ^ (Q.resolution.value * rows * columns) := by
  calc
    Q.effectiveStates.card ≤
        Fintype.card
          (QuantizedMatrix Q.resolution.value rows columns) :=
      Finset.card_le_univ Q.effectiveStates
    _ = 2 ^ (Q.resolution.value * rows * columns) :=
      card_quantizedMatrix Q.resolution.value rows columns

end NQuantizer

/-- Decode bit planes with little-endian significance `2 ^ plane`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1ef51f9eb8899a53d7b5443075ef0f178db45a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
