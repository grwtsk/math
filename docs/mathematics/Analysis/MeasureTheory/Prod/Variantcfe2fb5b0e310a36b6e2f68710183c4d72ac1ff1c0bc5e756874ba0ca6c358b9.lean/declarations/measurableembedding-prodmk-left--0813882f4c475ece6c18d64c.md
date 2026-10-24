# MeasurableEmbedding.prodMk_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2948bed8b8f87b0ca11c6e861f40e36c8410f7f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfe2fb5b0e310a36b6e2f68710183c4d72ac1ff1c0bc5e756874ba0ca6c358b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a27003d1-6e91-26c9-0b0f-e42109c3307e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ab6aa3a-4e56-c0e8-f3da-38aefa105a1c",
  "kind": "lemma",
  "lexical_name": "MeasurableEmbedding.prodMk_left",
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
  "slug": "measurableembedding-prodmk-left--0813882f4c475ece6c18d64c",
  "source": {
    "blob": "2948bed8b8f87b0ca11c6e861f40e36c8410f7f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 96,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variantcfe2fb5b0e310a36b6e2f68710183c4d72ac1ff1c0bc5e756874ba0ca6c358b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0813882f4c475ece6c18d64cfa466324c11dd5fae70e9b58fc883c611ca64ec4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variantcfe2fb5b0e310a36b6e2f68710183c4d72ac1ff1c0bc5e756874ba0ca6c358b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ab6aa3a-4e56-c0e8-f3da-38aefa105a1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MeasurableEmbedding.prodMk_left {β γ : Type*} [MeasurableSingletonClass α]
    {mβ : MeasurableSpace β} {mγ : MeasurableSpace γ}
    (x : α) {f : γ → β} (hf : MeasurableEmbedding f) :
    MeasurableEmbedding (fun y ↦ (x, f y)) where
  injective := by
    intro y y'
    simp only [Prod.mk.injEq, true_and]
    exact fun h ↦ hf.injective h
  measurable := Measurable.prodMk measurable_const hf.measurable
  measurableSet_image' := by
    intro s hs
    convert (MeasurableSet.singleton x).prod (hf.measurableSet_image.mpr hs)
    ext x
    simp [Prod.ext_iff, eq_comm, ← exists_and_left, and_left_comm]

@[deprecated (since := "2025-03-05")]
alias MeasurableEmbedding.prod_mk_left := MeasurableEmbedding.prodMk_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variantcfe2fb5b0e310a36b6e2f68710183c4d72ac1ff1c0bc5e756874ba0ca6c358b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variantcfe2fb5b0e310a36b6e2f68710183c4d72ac1ff1c0bc5e756874ba0ca6c358b9.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2948bed8b8f87b0ca11c6e861f40e36c8410f7f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
