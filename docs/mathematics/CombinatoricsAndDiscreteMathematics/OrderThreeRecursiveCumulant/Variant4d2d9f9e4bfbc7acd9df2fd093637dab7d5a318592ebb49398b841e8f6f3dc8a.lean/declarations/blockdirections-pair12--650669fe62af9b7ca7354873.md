# blockDirections_pair12

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:272b99f5-fae4-6d75-09a2-2aac4fa2101a",
  "kind": "theorem",
  "lexical_name": "blockDirections_pair12",
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
  "slug": "blockdirections-pair12--650669fe62af9b7ca7354873",
  "source": {
    "blob": "b4ec0361ae365d888e9034de3a48d7c51b76fb09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 174,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant4d2d9f9e4bfbc7acd9df2fd093637dab7d5a318592ebb49398b841e8f6f3dc8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:650669fe62af9b7ca73548736a45ab57764b5565de27fbe439736d75a7fda41c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant4d2d9f9e4bfbc7acd9df2fd093637dab7d5a318592ebb49398b841e8f6f3dc8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:272b99f5-fae4-6d75-09a2-2aac4fa2101a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockDirections_pair12
    (directions : Fin 3 → E) :
    blockDirections directions
        ({(1 : Fin 3), (2 : Fin 3)} : Finset (Fin 3)) =
      ![directions 1, directions 2] := by
  funext j
  fin_cases j
  · change directions
      (blockOrderIso
        ({(1 : Fin 3), (2 : Fin 3)} : Finset (Fin 3)) 0).1 =
      directions 1
    congr 1
    decide
  · change directions
      (blockOrderIso
        ({(1 : Fin 3), (2 : Fin 3)} : Finset (Fin 3)) 1).1 =
      directions 2
    congr 1
    decide

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant4d2d9f9e4bfbc7acd9df2fd093637dab7d5a318592ebb49398b841e8f6f3dc8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderThreeRecursiveCumulant/Variant4d2d9f9e4bfbc7acd9df2fd093637dab7d5a318592ebb49398b841e8f6f3dc8a.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4ec0361ae365d888e9034de3a48d7c51b76fb09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
