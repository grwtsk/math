# nullMeasurableSet_region_between_oc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8895d77-6851-9319-c6fd-b518797a245e",
  "kind": "lemma",
  "lexical_name": "nullMeasurableSet_region_between_oc",
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
  "slug": "nullmeasurableset-region-between-oc--d91dd759886406a673577a71",
  "source": {
    "blob": "32e2e27d3ad83cbf3121d52b39c5b809de993d17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 560,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant098b077b08ddd5d4dc5bae8b5119b54afccf5375f4bd7ecbb3b399fe9f235742.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d91dd759886406a673577a71f588265958f3198bda5133ed8c4f8398f536ae33",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant098b077b08ddd5d4dc5bae8b5119b54afccf5375f4bd7ecbb3b399fe9f235742.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8895d77-6851-9319-c6fd-b518797a245e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 560–574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nullMeasurableSet_region_between_oc (μ : Measure α)
    {f g : α → ℝ} (f_mble : AEMeasurable f μ) (g_mble : AEMeasurable g μ)
    {s : Set α} (s_mble : NullMeasurableSet s μ) :
    NullMeasurableSet {p : α × ℝ | p.1 ∈ s ∧ p.snd ∈ Ioc (f p.fst) (g p.fst)} (μ.prod volume) := by
  refine NullMeasurableSet.inter
          (s_mble.preimage quasiMeasurePreserving_fst) (NullMeasurableSet.inter ?_ ?_)
  · exact nullMeasurableSet_lt (by fun_prop) measurable_snd.aemeasurable
  · change NullMeasurableSet {p : α × ℝ | p.snd ≤ g p.fst} (μ.prod volume)
    rw [show {p : α × ℝ | p.snd ≤ g p.fst} = {p : α × ℝ | g p.fst < p.snd}ᶜ by
          ext p
          simp only [mem_setOf_eq, mem_compl_iff, not_lt]]
    exact (nullMeasurableSet_lt (by fun_prop) measurable_snd.aemeasurable).compl

/-- The region between two a.e.-measurable functions on a null-measurable set is null-measurable;
a version for the region together with the graph of the lower function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant098b077b08ddd5d4dc5bae8b5119b54afccf5375f4bd7ecbb3b399fe9f235742.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant098b077b08ddd5d4dc5bae8b5119b54afccf5375f4bd7ecbb3b399fe9f235742.lean#L560).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32e2e27d3ad83cbf3121d52b39c5b809de993d17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
