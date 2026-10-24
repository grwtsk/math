# MeasurableSet.exists_measurable_proj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d2f52c5118c131737a20aeb6d6dcf346b7a8d3d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/7962df4ca1758e64de912f628894268086bd58a5a3b8ebdba2ce439f7b2fc3a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2d20c58-c0d2-986c-715c-909b4731e61d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:deecd800-af92-691f-5ab6-58b08f83b5cd",
  "kind": "theorem",
  "lexical_name": "MeasurableSet.exists_measurable_proj",
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
  "slug": "measurableset-exists-measurable-proj--4208273a08071e54c2d711cc",
  "source": {
    "blob": "2d2f52c5118c131737a20aeb6d6dcf346b7a8d3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1169,
    "line": 1160,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurableSpace/Variant7962df4ca1758e64de912f628894268086bd58a5a3b8ebdba2ce439f7b2fc3a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4208273a08071e54c2d711cc896aceddd9d2c288f8e4046a9b7050b31d0f9e1e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasurableSpace/Variant7962df4ca1758e64de912f628894268086bd58a5a3b8ebdba2ce439f7b2fc3a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:deecd800-af92-691f-5ab6-58b08f83b5cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1160–1169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasurableSet.exists_measurable_proj {_ : MeasurableSpace α} {s : Set α}
    (hs : MeasurableSet s) (hne : s.Nonempty) : ∃ f : α → s, Measurable f ∧ ∀ x : s, f x = x :=
  let ⟨f, hfm, hf⟩ :=
    (MeasurableEmbedding.subtype_coe hs).exists_measurable_extend measurable_id fun _ =>
      hne.to_subtype
  ⟨f, hfm, congr_fun hf⟩
#align measurable_set.exists_measurable_proj MeasurableSet.exists_measurable_proj

/-- Equivalences between measurable spaces. Main application is the simplification of measurability
statements along measurable equivalences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasurableSpace/Variant7962df4ca1758e64de912f628894268086bd58a5a3b8ebdba2ce439f7b2fc3a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurableSpace/Variant7962df4ca1758e64de912f628894268086bd58a5a3b8ebdba2ce439f7b2fc3a4.lean#L1160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d2f52c5118c131737a20aeb6d6dcf346b7a8d3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
