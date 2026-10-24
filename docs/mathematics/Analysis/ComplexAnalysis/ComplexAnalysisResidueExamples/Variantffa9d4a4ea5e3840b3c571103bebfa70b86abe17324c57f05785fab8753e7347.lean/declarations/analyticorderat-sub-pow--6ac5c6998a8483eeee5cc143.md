# analyticOrderAt_sub_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c539696f8d357849cae0323ca56408dc7dacc49",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 17,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ffa9d4a4ea5e3840b3c571103bebfa70b86abe17324c57f05785fab8753e7347.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48b63d5b-f07c-066d-9de1-0afe78122c96",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5278ad2-b494-e19f-3ca5-9e8804c4b63e",
  "kind": "theorem",
  "lexical_name": "analyticOrderAt_sub_pow",
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
  "slug": "analyticorderat-sub-pow--6ac5c6998a8483eeee5cc143",
  "source": {
    "blob": "9c539696f8d357849cae0323ca56408dc7dacc49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 17,
    "path": "GRWTSK/Analysis/ComplexAnalysis/ComplexAnalysisResidueExamples/Variantffa9d4a4ea5e3840b3c571103bebfa70b86abe17324c57f05785fab8753e7347.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ac5c6998a8483eeee5cc143512f45ca1afc1f15b580dc0375421c1b38e983d9",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ComplexAnalysisResidueExamples/Variantffa9d4a4ea5e3840b3c571103bebfa70b86abe17324c57f05785fab8753e7347.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5278ad2-b494-e19f-3ca5-9e8804c4b63e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem analyticOrderAt_sub_pow
    (z : ℂ) (n : ℕ) :
    analyticOrderAt (fun w : ℂ ↦ (w - z) ^ n) z = n := by
  have hbase : AnalyticAt ℂ (fun w : ℂ ↦ w - z) z := by
    fun_prop
  have hbaseOrder :
      analyticOrderAt (fun w : ℂ ↦ w - z) z = 1 := by
    apply hbase.analyticOrderAt_eq_natCast.mpr
    refine ⟨fun _ ↦ 1, analyticAt_const, one_ne_zero, ?_⟩
    filter_upwards
    intro w
    simp [smul_eq_mul]
  change analyticOrderAt ((fun w : ℂ ↦ w - z) ^ n) z = n
  rw [analyticOrderAt_pow hbase, hbaseOrder]
  simp

/-- The local coefficient of the logarithmic derivative of a pure monomial
is its exponent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/ComplexAnalysisResidueExamples/Variantffa9d4a4ea5e3840b3c571103bebfa70b86abe17324c57f05785fab8753e7347.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/ComplexAnalysisResidueExamples/Variantffa9d4a4ea5e3840b3c571103bebfa70b86abe17324c57f05785fab8753e7347.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c539696f8d357849cae0323ca56408dc7dacc49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
