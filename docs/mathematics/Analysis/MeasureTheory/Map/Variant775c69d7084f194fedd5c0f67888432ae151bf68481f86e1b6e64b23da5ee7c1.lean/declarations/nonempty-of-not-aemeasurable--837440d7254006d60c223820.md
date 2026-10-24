# nonempty_of_not_aemeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "767657b96b1f0b439934e230c9561ca0d343244e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3393039-8598-febf-9d2b-83134873e6bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6127a40e-6021-f370-0cb4-364b4398eca9",
  "kind": "lemma",
  "lexical_name": "nonempty_of_not_aemeasurable",
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
  "slug": "nonempty-of-not-aemeasurable--837440d7254006d60c223820",
  "source": {
    "blob": "767657b96b1f0b439934e230c9561ca0d343244e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 88,
    "path": "GRWTSK/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:837440d7254006d60c223820aba6c8deee0dce954c5322441088520486cec29b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6127a40e-6021-f370-0cb4-364b4398eca9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma nonempty_of_not_aemeasurable {f : α → β} (hf : ¬AEMeasurable f μ) :
    Nonempty β := by
  contrapose! hf
  exact (measurable_of_empty_codomain f).aemeasurable

open scoped Classical in
/-- The pushforward of a measure. If `f` is not an almost everywhere measurable function,
we define it to be `0` if `μ = 0`, and to be an arbitrary Dirac mass otherwise. That way
we always have `map f 0 = 0`, and the push-forward of a probability measure is always a
probability measure. -/
noncomputable
irreducible_def map [MeasurableSpace α] [MeasurableSpace β] (f : α → β) (μ : Measure α) :
    Measure β :=
  if hf : AEMeasurable f μ
    then mapₗ (hf.mk f) μ
    else if μ = 0 then 0
    else
      haveI : Nonempty β := by exact nonempty_of_not_aemeasurable hf
      dirac Classical.ofNonempty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Map/Variant775c69d7084f194fedd5c0f67888432ae151bf68481f86e1b6e64b23da5ee7c1.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `767657b96b1f0b439934e230c9561ca0d343244e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
