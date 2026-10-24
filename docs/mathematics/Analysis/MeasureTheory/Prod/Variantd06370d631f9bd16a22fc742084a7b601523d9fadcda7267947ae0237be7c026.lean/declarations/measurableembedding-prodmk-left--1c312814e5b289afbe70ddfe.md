# MeasurableEmbedding.prodMk_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3a8da5a-8f91-1031-c415-554ffbde7707",
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
  "slug": "measurableembedding-prodmk-left--1c312814e5b289afbe70ddfe",
  "source": {
    "blob": "855304b0778653b77043cd653e3cc3556634cf8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 104,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variantd06370d631f9bd16a22fc742084a7b601523d9fadcda7267947ae0237be7c026.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c312814e5b289afbe70ddfe903b2bf606dc48fb0e4ecdce4cf4cb40c9f781cd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variantd06370d631f9bd16a22fc742084a7b601523d9fadcda7267947ae0237be7c026.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3a8da5a-8f91-1031-c415-554ffbde7707`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–121.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variantd06370d631f9bd16a22fc742084a7b601523d9fadcda7267947ae0237be7c026.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variantd06370d631f9bd16a22fc742084a7b601523d9fadcda7267947ae0237be7c026.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `855304b0778653b77043cd653e3cc3556634cf8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
