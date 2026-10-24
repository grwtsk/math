# aemeasurable_indicator_const_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7be41ecb-1077-eb26-34af-d31f4d6b7a2b",
  "kind": "lemma",
  "lexical_name": "aemeasurable_indicator_const_iff",
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
  "slug": "aemeasurable-indicator-const-iff--f8233a39db47642e3304c35f",
  "source": {
    "blob": "8624fba6d487c59f92c430cfa68bfd7c3bd1be2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 341,
    "path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variante9af2c02a8e5b8a1dcce00a231f7cf8c337200169f11dbecfc577b6f32006123.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8233a39db47642e3304c35f4b70ffee819f94758972bfe0a7bc156047cd3c4b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEMeasurable/Variante9af2c02a8e5b8a1dcce00a231f7cf8c337200169f11dbecfc577b6f32006123.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7be41ecb-1077-eb26-34af-d31f4d6b7a2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma aemeasurable_indicator_const_iff {s} [MeasurableSingletonClass β] (b : β) [NeZero b] :
    AEMeasurable (s.indicator (fun _ ↦ b)) μ ↔ NullMeasurableSet s μ := by
  classical
  constructor <;> intro h
  · convert h.nullMeasurable (MeasurableSet.singleton (0 : β)).compl
    rw [indicator_const_preimage_eq_union s {0}ᶜ b]
    simp [NeZero.ne b]
  · exact (aemeasurable_indicator_iff₀ h).mpr aemeasurable_const

@[measurability]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEMeasurable/Variante9af2c02a8e5b8a1dcce00a231f7cf8c337200169f11dbecfc577b6f32006123.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variante9af2c02a8e5b8a1dcce00a231f7cf8c337200169f11dbecfc577b6f32006123.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8624fba6d487c59f92c430cfa68bfd7c3bd1be2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
