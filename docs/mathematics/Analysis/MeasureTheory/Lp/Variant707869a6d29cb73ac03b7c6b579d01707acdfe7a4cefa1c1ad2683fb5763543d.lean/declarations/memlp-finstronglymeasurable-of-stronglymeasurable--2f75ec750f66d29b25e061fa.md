# MemLp.finStronglyMeasurable_of_stronglyMeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb7532ccf189e14096f4d85bf11590432c1ac3ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/707869a6d29cb73ac03b7c6b579d01707acdfe7a4cefa1c1ad2683fb5763543d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3fe5be81-1ddb-29ab-9678-c839878fde02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce15ac7e-8afd-49e7-9f7a-f3e248586b09",
  "kind": "theorem",
  "lexical_name": "MemLp.finStronglyMeasurable_of_stronglyMeasurable",
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
  "slug": "memlp-finstronglymeasurable-of-stronglymeasurable--2f75ec750f66d29b25e061fa",
  "source": {
    "blob": "bb7532ccf189e14096f4d85bf11590432c1ac3ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 42,
    "path": "GRWTSK/Analysis/MeasureTheory/Lp/Variant707869a6d29cb73ac03b7c6b579d01707acdfe7a4cefa1c1ad2683fb5763543d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f75ec750f66d29b25e061fa572d71de2c4118b6590ebad60b3a5b6cb7f60acf",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lp/Variant707869a6d29cb73ac03b7c6b579d01707acdfe7a4cefa1c1ad2683fb5763543d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce15ac7e-8afd-49e7-9f7a-f3e248586b09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MemLp.finStronglyMeasurable_of_stronglyMeasurable (hf : MemLp f p μ)
    (hf_meas : StronglyMeasurable f) (hp_ne_zero : p ≠ 0) (hp_ne_top : p ≠ ∞) :
    FinStronglyMeasurable f μ := by
  borelize G
  have : SeparableSpace (Set.range f ∪ {0} : Set G) :=
    hf_meas.separableSpace_range_union_singleton
  let fs := SimpleFunc.approxOn f hf_meas.measurable (Set.range f ∪ {0}) 0 (by simp)
  refine ⟨fs, ?_, ?_⟩
  · have h_fs_Lp : ∀ n, MemLp (fs n) p μ :=
      SimpleFunc.memLp_approxOn_range hf_meas.measurable hf
    exact fun n => (fs n).measure_support_lt_top_of_memLp (h_fs_Lp n) hp_ne_zero hp_ne_top
  · intro x
    apply SimpleFunc.tendsto_approxOn
    apply subset_closure
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lp/Variant707869a6d29cb73ac03b7c6b579d01707acdfe7a4cefa1c1ad2683fb5763543d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lp/Variant707869a6d29cb73ac03b7c6b579d01707acdfe7a4cefa1c1ad2683fb5763543d.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb7532ccf189e14096f4d85bf11590432c1ac3ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
