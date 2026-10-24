# normalizedInterior_frontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fea3c63ddad056d174f79b8ad06624e405adeb3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc25b038-d571-6d9f-966f-7a9aa3c26135",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2ab7710-1f2f-5513-bd7c-654ff56f6e3f",
  "kind": "theorem",
  "lexical_name": "normalizedInterior_frontier",
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
  "slug": "normalizedinterior-frontier--95f22b48548927d2379ad5e9",
  "source": {
    "blob": "4fea3c63ddad056d174f79b8ad06624e405adeb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95f22b48548927d2379ad5e94c5656c95577ca315d1353fb23051e0cbb14bc17",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2ab7710-1f2f-5513-bd7c-654ff56f6e3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedInterior_frontier (A : ℝ) (hA : 0 < A)
    (x : ℝ) (hx : x ∈ frontier (Icc (-A) A)) :
    normalizedInterior A x = 0 ∧ normalizedInteriorDerivative A x = 0 := by
  rw [frontier_Icc (by linarith : -A ≤ A), mem_insert_iff, mem_singleton_iff] at hx
  rcases hx with hx | hx <;> rw [hx] <;>
    simp [normalizedInterior, normalizedInteriorDerivative,
      (bumpInterior_endpoints A (ne_of_gt hA)).1,
      (bumpInterior_endpoints A (ne_of_gt hA)).2,
      (firstInterior_endpoints A (ne_of_gt hA)).1,
      (firstInterior_endpoints A (ne_of_gt hA)).2,
      (secondInterior_endpoints A (ne_of_gt hA)).1,
      (secondInterior_endpoints A (ne_of_gt hA)).2,
      (thirdInterior_endpoints A (ne_of_gt hA)).1,
      (thirdInterior_endpoints A (ne_of_gt hA)).2]

/-- Global C¹ regularity includes both zero-extension seams of the actual test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fea3c63ddad056d174f79b8ad06624e405adeb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
