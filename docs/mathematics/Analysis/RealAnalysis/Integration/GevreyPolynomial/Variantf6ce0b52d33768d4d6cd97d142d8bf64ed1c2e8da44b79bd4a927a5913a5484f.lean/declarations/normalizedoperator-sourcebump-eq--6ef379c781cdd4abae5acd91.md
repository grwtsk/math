# normalizedOperator_sourceBump_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b79fcd6f7814c926bc028eea11967dd51cef203",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6ce0b52d33768d4d6cd97d142d8bf64ed1c2e8da44b79bd4a927a5913a5484f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c6c6030-9ddf-13a4-ede3-62289b97268b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba1dc429-74be-0bb1-685b-76b620cebeb0",
  "kind": "theorem",
  "lexical_name": "normalizedOperator_sourceBump_eq",
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
  "slug": "normalizedoperator-sourcebump-eq--6ef379c781cdd4abae5acd91",
  "source": {
    "blob": "7b79fcd6f7814c926bc028eea11967dd51cef203",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 195,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GevreyPolynomial/Variantf6ce0b52d33768d4d6cd97d142d8bf64ed1c2e8da44b79bd4a927a5913a5484f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ef379c781cdd4abae5acd91cb44f3140a14873232bcb43461cbd4abe947bbba",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GevreyPolynomial/Variantf6ce0b52d33768d4d6cd97d142d8bf64ed1c2e8da44b79bd4a927a5913a5484f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba1dc429-74be-0bb1-685b-76b620cebeb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedOperator_sourceBump_eq {A : ℝ} (hA : 0 < A) :
    GevreyNormalization.normalizedOperator sourceBump A =
      normalizedTest explicitSecondDerivative A := by
  funext x
  unfold GevreyNormalization.normalizedOperator normalizedTest
  rw [normalization_sourceBump_eq hA, dilationOperator_sourceBump_eq hA]

end

end FormalResearch.RiemannHypothesis.GevreyPolynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GevreyPolynomial/Variantf6ce0b52d33768d4d6cd97d142d8bf64ed1c2e8da44b79bd4a927a5913a5484f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GevreyPolynomial/Variantf6ce0b52d33768d4d6cd97d142d8bf64ed1c2e8da44b79bd4a927a5913a5484f.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b79fcd6f7814c926bc028eea11967dd51cef203` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
