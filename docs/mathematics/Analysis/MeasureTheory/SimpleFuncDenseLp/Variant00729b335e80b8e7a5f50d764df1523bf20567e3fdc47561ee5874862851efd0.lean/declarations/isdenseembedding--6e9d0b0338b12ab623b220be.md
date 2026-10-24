# isDenseEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8c42bc3f0aa0818639c71056518a58cf5f53418",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 663,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ec6c2ed-a8c0-2d7c-82c5-d2e917a3e2fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2d103fb-4ca0-43d0-4aba-0946c9bbe3d3",
  "kind": "lemma",
  "lexical_name": "isDenseEmbedding",
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
  "slug": "isdenseembedding--6e9d0b0338b12ab623b220be",
  "source": {
    "blob": "b8c42bc3f0aa0818639c71056518a58cf5f53418",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 680,
    "line": 663,
    "path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e9d0b0338b12ab623b220be2d26fbe46c031f5839d3aea307c77eebc274f75f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2d103fb-4ca0-43d0-4aba-0946c9bbe3d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–680.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isDenseEmbedding (hp_ne_top : p ≠ ∞) :
    IsDenseEmbedding ((↑) : Lp.simpleFunc E p μ → Lp E p μ) := by
  borelize E
  apply simpleFunc.isUniformEmbedding.isDenseEmbedding
  intro f
  rw [mem_closure_iff_seq_limit]
  have hfi' : MemLp f p μ := Lp.memLp f
  haveI : SeparableSpace (range f ∪ {0} : Set E) :=
    (Lp.stronglyMeasurable f).separableSpace_range_union_singleton
  refine
    ⟨fun n =>
      toLp
        (SimpleFunc.approxOn f (Lp.stronglyMeasurable f).measurable (range f ∪ {0}) 0 _ n)
        (SimpleFunc.memLp_approxOn_range (Lp.stronglyMeasurable f).measurable hfi' n),
      fun n => mem_range_self _, ?_⟩
  convert SimpleFunc.tendsto_approxOn_range_Lp hp_ne_top (Lp.stronglyMeasurable f).measurable hfi'
  rw [toLp_coeFn f (Lp.memLp f)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8c42bc3f0aa0818639c71056518a58cf5f53418` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
