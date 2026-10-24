# normalizedTest_contDiff

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
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b3146e3d-cf02-bfb9-d7ac-f702a90d4585",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52bd236d-e9f0-e52e-1c6b-a9009170c1b6",
  "kind": "theorem",
  "lexical_name": "normalizedTest_contDiff",
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
  "slug": "normalizedtest-contdiff--5ceb8908f374556a58d01f32",
  "source": {
    "blob": "4fea3c63ddad056d174f79b8ad06624e405adeb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 123,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ceb8908f374556a58d01f328d3f71c6cf80d2f5916aa64fe7f77fdd671185e5",
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

Occurrence: `result:52bd236d-e9f0-e52e-1c6b-a9009170c1b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedTest_contDiff (A : ℝ) (hA : 0 < A) :
    ContDiff ℝ 1 (normalizedTest explicitSecondDerivative A) := by
  rw [normalizedTest_eq_indicator A hA, contDiff_one_iff_deriv]
  have hd := indicator_hasDerivAt (s := Icc (-A) A)
    (normalizedInterior_hasDerivAt A) (normalizedInterior_frontier A hA)
  refine ⟨fun x ↦ (hd x).differentiableAt, ?_⟩
  have heq : deriv ((Icc (-A) A).indicator (normalizedInterior A)) =
      (Icc (-A) A).indicator (normalizedInteriorDerivative A) := funext fun x ↦ (hd x).deriv
  rw [heq]
  exact (normalizedInteriorDerivative_continuous A).indicator
    (fun x hx ↦ (normalizedInterior_frontier A hA x hx).2)

/-- The actual normalized test is zero at and outside either support endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CorrelationRegularity/Variant6f5b02bd27e119f029416d967a462037acb4d35652c2ae1bd9765f946979c82d.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fea3c63ddad056d174f79b8ad06624e405adeb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
