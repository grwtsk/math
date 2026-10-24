# MeasurableEmbedding.prodMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8483cbf4-4724-31ff-0ee8-cece18d6c9ff",
  "kind": "lemma",
  "lexical_name": "MeasurableEmbedding.prodMap",
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
  "slug": "measurableembedding-prodmap--e12bf3f1897f862642e9946b",
  "source": {
    "blob": "855304b0778653b77043cd653e3cc3556634cf8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 80,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variantd06370d631f9bd16a22fc742084a7b601523d9fadcda7267947ae0237be7c026.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e12bf3f1897f862642e9946b277620fa15d9ed8b211c7ea0aebe5655de248ab8",
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

Occurrence: `result:8483cbf4-4724-31ff-0ee8-cece18d6c9ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MeasurableEmbedding.prodMap {α β γ δ : Type*} {mα : MeasurableSpace α}
    {mβ : MeasurableSpace β} {mγ : MeasurableSpace γ} {mδ : MeasurableSpace δ} {f : α → β}
    {g : γ → δ} (hg : MeasurableEmbedding g) (hf : MeasurableEmbedding f) :
    MeasurableEmbedding (Prod.map g f) := by
  refine ⟨hg.injective.prodMap hf.injective, ?_, ?_⟩
  · exact (hg.measurable.comp measurable_fst).prodMk (hf.measurable.comp measurable_snd)
  · intro s hs
    -- Induction using the π-system of rectangles
    induction s, hs using induction_on_inter generateFrom_prod.symm isPiSystem_prod with
    | empty =>
      simp only [Set.image_empty, MeasurableSet.empty]
    | basic s hs =>
      obtain ⟨t₁, ht₁, t₂, ht₂, rfl⟩ := hs
      simp_rw [Prod.map, ← prod_image_image_eq]
      exact (hg.measurableSet_image.mpr ht₁).prod (hf.measurableSet_image.mpr ht₂)
    | compl s _ ihs =>
      rw [← range_diff_image (hg.injective.prodMap hf.injective), range_prodMap]
      exact .diff (.prod hg.measurableSet_range hf.measurableSet_range) ihs
    | iUnion f _ _ ihf =>
      simpa only [image_iUnion] using .iUnion ihf

@[deprecated (since := "2024-12-11")]
alias MeasurableEmbedding.prod_mk := MeasurableEmbedding.prodMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variantd06370d631f9bd16a22fc742084a7b601523d9fadcda7267947ae0237be7c026.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variantd06370d631f9bd16a22fc742084a7b601523d9fadcda7267947ae0237be7c026.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `855304b0778653b77043cd653e3cc3556634cf8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
