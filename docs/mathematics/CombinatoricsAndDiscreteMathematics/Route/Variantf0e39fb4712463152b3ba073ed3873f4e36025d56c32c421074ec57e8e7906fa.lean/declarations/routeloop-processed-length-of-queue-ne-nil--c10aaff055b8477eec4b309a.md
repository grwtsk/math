# routeLoop_processed_length_of_queue_ne_nil

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d441b21a98babcc33aaca2da9acad60a6efc430",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 662,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f0e39fb4712463152b3ba073ed3873f4e36025d56c32c421074ec57e8e7906fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d4bd077-5d89-b611-3647-8f3a1f983b81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7bd54782-4ffc-4e5a-7f3b-52758fd9d03a",
  "kind": "theorem",
  "lexical_name": "routeLoop_processed_length_of_queue_ne_nil",
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
  "slug": "routeloop-processed-length-of-queue-ne-nil--c10aaff055b8477eec4b309a",
  "source": {
    "blob": "1d441b21a98babcc33aaca2da9acad60a6efc430",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 684,
    "line": 662,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantf0e39fb4712463152b3ba073ed3873f4e36025d56c32c421074ec57e8e7906fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c10aaff055b8477eec4b309aba517047bff8e7ff31c84633f2a416882d3a7790",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Variantf0e39fb4712463152b3ba073ed3873f4e36025d56c32c421074ec57e8e7906fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bd54782-4ffc-4e5a-7f3b-52758fd9d03a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 662–684.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem routeLoop_processed_length_of_queue_ne_nil
    (contract : RoutingContract Host EdgeId)
    (fuel : Nat) (state : RouteState Host EdgeId)
    (queueNonempty : (routeLoop contract fuel state).queue ≠ []) :
    (routeLoop contract fuel state).processed.length =
      state.processed.length + fuel := by
  induction fuel generalizing state with
  | zero => simp [routeLoop]
  | succ fuel ih =>
      cases queueEquation : state.queue with
      | nil =>
          simp [routeLoop, queueEquation] at queueNonempty
      | cons host remaining =>
          have recursiveNonempty :
              (routeLoop contract fuel
                (processQueuedHost contract state host remaining)).queue ≠ [] := by
            simpa [routeLoop, queueEquation] using queueNonempty
          have recursiveLength := ih
            (processQueuedHost contract state host remaining) recursiveNonempty
          simp only [routeLoop, queueEquation] at queueNonempty ⊢
          rw [recursiveLength, processQueuedHost_processed_length]
          omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Variantf0e39fb4712463152b3ba073ed3873f4e36025d56c32c421074ec57e8e7906fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variantf0e39fb4712463152b3ba073ed3873f4e36025d56c32c421074ec57e8e7906fa.lean#L662).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d441b21a98babcc33aaca2da9acad60a6efc430` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
