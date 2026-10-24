# average_mem_openSegment_compl_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9699ea9a856790438cc83928cc85a500e9bdbb55",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 379,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/573342ff1b7acc829aaa28c0f8cbcf9fbaad9c7c681ace910009b41d6b6d1021.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b27f95c3-9f1d-5f72-c5e2-7f8f4c8c6dcf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9f7f61e-8917-1c70-8d26-0a4e9c2ffdc8",
  "kind": "theorem",
  "lexical_name": "average_mem_openSegment_compl_self",
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
  "slug": "average-mem-opensegment-compl-self--a16c4291a985fc34d2ff30a3",
  "source": {
    "blob": "9699ea9a856790438cc83928cc85a500e9bdbb55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 379,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant573342ff1b7acc829aaa28c0f8cbcf9fbaad9c7c681ace910009b41d6b6d1021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a16c4291a985fc34d2ff30a3a073ba7ad52f4702503e39575de8f7030402b187",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Average/Variant573342ff1b7acc829aaa28c0f8cbcf9fbaad9c7c681ace910009b41d6b6d1021.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9f7f61e-8917-1c70-8d26-0a4e9c2ffdc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem average_mem_openSegment_compl_self [IsFiniteMeasure μ] {f : α → E} {s : Set α}
    (hs : NullMeasurableSet s μ) (hs₀ : μ s ≠ 0) (hsc₀ : μ sᶜ ≠ 0) (hfi : Integrable f μ) :
    ⨍ x, f x ∂μ ∈ openSegment ℝ (⨍ x in s, f x ∂μ) (⨍ x in sᶜ, f x ∂μ) := by
  simpa only [union_compl_self, restrict_univ] using
    average_union_mem_openSegment aedisjoint_compl_right hs.compl hs₀ hsc₀ (measure_ne_top _ _)
      (measure_ne_top _ _) hfi.integrableOn hfi.integrableOn
#align measure_theory.average_mem_open_segment_compl_self MeasureTheory.average_mem_openSegment_compl_self

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Average/Variant573342ff1b7acc829aaa28c0f8cbcf9fbaad9c7c681ace910009b41d6b6d1021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant573342ff1b7acc829aaa28c0f8cbcf9fbaad9c7c681ace910009b41d6b6d1021.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9699ea9a856790438cc83928cc85a500e9bdbb55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
