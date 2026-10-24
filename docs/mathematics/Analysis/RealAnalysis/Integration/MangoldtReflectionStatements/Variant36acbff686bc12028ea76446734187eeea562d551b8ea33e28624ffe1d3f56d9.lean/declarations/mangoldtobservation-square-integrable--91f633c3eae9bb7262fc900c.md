# mangoldtObservation_square_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d54c014f29fcedf31542ce5cbdbdd1f09550797d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/36acbff686bc12028ea76446734187eeea562d551b8ea33e28624ffe1d3f56d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d687b24-a7c7-ce84-b701-d09c6977560c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:057de546-c405-667d-4f14-3787e8b6e6da",
  "kind": "theorem",
  "lexical_name": "mangoldtObservation_square_integrable",
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
  "slug": "mangoldtobservation-square-integrable--91f633c3eae9bb7262fc900c",
  "source": {
    "blob": "d54c014f29fcedf31542ce5cbdbdd1f09550797d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 44,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MangoldtReflectionStatements/Variant36acbff686bc12028ea76446734187eeea562d551b8ea33e28624ffe1d3f56d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91f633c3eae9bb7262fc900c5fa94298443fe0ecd61059a65486dcc6f96cc35e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MangoldtReflectionStatements/Variant36acbff686bc12028ea76446734187eeea562d551b8ea33e28624ffe1d3f56d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:057de546-c405-667d-4f14-3787e8b6e6da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mangoldtObservation_square_integrable (A : ℝ) (T : Finset ℕ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ (mangoldtObservation A T x) ^ 2) := by
  simp_rw [pow_two]
  change Integrable (mangoldtObservation A T * mangoldtObservation A T)
  exact ((mangoldtObservation_continuous A T hA).mul
      (mangoldtObservation_continuous A T hA)).integrable_of_hasCompactSupport
        (mangoldtObservation_hasCompactSupport A T hA).mul_right

/-- Every finite reflection product is genuinely integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MangoldtReflectionStatements/Variant36acbff686bc12028ea76446734187eeea562d551b8ea33e28624ffe1d3f56d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MangoldtReflectionStatements/Variant36acbff686bc12028ea76446734187eeea562d551b8ea33e28624ffe1d3f56d9.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d54c014f29fcedf31542ce5cbdbdd1f09550797d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
