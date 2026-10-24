# det_reverse_rows_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b830fdf8100844ce0081a040d3bbb0b54826c0be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79fc444d-f8a2-1384-9862-f50f7b7b17c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b37fb15-8270-7ce9-fb6f-065506a0de59",
  "kind": "theorem",
  "lexical_name": "det_reverse_rows_two",
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
  "slug": "det-reverse-rows-two--b80e200825224f37bc935d92",
  "source": {
    "blob": "b830fdf8100844ce0081a040d3bbb0b54826c0be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 108,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abdOrientation/Variantc1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b80e200825224f37bc935d9213f09c41ed560512651f9c1470141126b7aaa6f1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abdOrientation/Variantc1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b37fb15-8270-7ce9-fb6f-065506a0de59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_reverse_rows_two (M : Matrix (Fin 2) (Fin 2) ℝ) :
    Matrix.det (fun i j => M i.rev j) = -Matrix.det M := by
  simpa using det_reverse_rows M

/-- Rank three also has negative orientation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abdOrientation/Variantc1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abdOrientation/Variantc1ab90ff9f08e77344c6ef2ecb7d18ac5b8fd08fab1d1267bd5f900c07532abd.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b830fdf8100844ce0081a040d3bbb0b54826c0be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
