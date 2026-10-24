# l2Embedding_multiplier_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d4d0ddbee8a30501e4fba95c5cf785bcf8b4338",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/Analysis/Complex/HolomorphicAreaL2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b76f646c-73d0-aaf8-87ef-ce17c01cd4f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:681af441-a69b-383c-deb2-25bf017069a4",
  "kind": "theorem",
  "lexical_name": "l2Embedding_multiplier_ae",
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
  "slug": "l2embedding-multiplier-ae--22e617cb950aa090d4447a64",
  "source": {
    "blob": "5d4d0ddbee8a30501e4fba95c5cf785bcf8b4338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 217,
    "path": "GRWTSK/Analysis/Complex/HolomorphicAreaL2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22e617cb950aa090d4447a6422834aa31aebc99abcfea0e45ccbc42dbaae2bef",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicAreaL2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:681af441-a69b-383c-deb2-25bf017069a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem l2Embedding_multiplier_ae (hOpen : D.IsOpenCover) (f : BoundedSymbol D.X)
    (v : AreaCompletion hOpen) :
    (l2Embedding hOpen (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X)
      hOpen f v) : Section D.X) =ᵐ[areaMeasure D.X]
        fun x => f.value x * (l2Embedding hOpen v : Section D.X) x := by
  filter_upwards [toL2_ae hOpen (completedRepresentation (MetricWeights.identity D)
    (areaMeasure D.X) hOpen f v), toL2_ae hOpen v] with x hfv hv
  change toL2 hOpen (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X)
    hOpen f v) x = f.value x * toL2 hOpen v x
  rw [hfv, hv]
  change ((completedRealization hOpen
    (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X) hOpen f v) :
      HolomorphicSection D.X) : Section D.X) x = _
  rw [completedRealization_multiplier]
  rfl

/-- Argument order is forced by the preceding Hermitian symmetry, with no changed kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicAreaL2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicAreaL2.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d4d0ddbee8a30501e4fba95c5cf785bcf8b4338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
