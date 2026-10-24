# ennrealToMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26eb2c7e-8c39-ccd6-990b-8dca21a990f4",
  "kind": "theorem",
  "lexical_name": "ennrealToMeasure",
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
  "slug": "ennrealtomeasure--941935764d05f99d5cd99d86",
  "source": {
    "blob": "9532c65dfde44fa423a57349d3b0bf521b0e9f45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 994,
    "line": 975,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant7c0e93e9ae70d81d9cc495fe1b92c80e51cc84f60949446e150c6e17d81dbdf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:941935764d05f99d5cd99d86b59896b57775a1cabc03d304f41d2b9931486c64",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant7c0e93e9ae70d81d9cc495fe1b92c80e51cc84f60949446e150c6e17d81dbdf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26eb2c7e-8c39-ccd6-990b-8dca21a990f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 975–994.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ennrealToMeasure {μ : VectorMeasure α ℝ≥0∞} :
    (∀ ⦃s : Set α⦄, μ.ennrealToMeasure s = 0 → v s = 0) ↔ v ≪ᵥ μ := by
  constructor <;> intro h
  · refine mk fun s hmeas hs => h ?_
    rw [← hs, ennrealToMeasure_apply hmeas]
  · intro s hs
    by_cases hmeas : MeasurableSet s
    · rw [ennrealToMeasure_apply hmeas] at hs
      exact h hs
    · exact not_measurable v hmeas

end AbsolutelyContinuous

/-- Two vector measures `v` and `w` are said to be mutually singular if there exists a measurable
set `s`, such that for all `t ⊆ s`, `v t = 0` and for all `t ⊆ sᶜ`, `w t = 0`.

We note that we do not require the measurability of `t` in the definition since this makes it easier
to use. This is equivalent to the definition which requires measurability. To prove
`MutuallySingular` with the measurability condition, use
`MeasureTheory.VectorMeasure.MutuallySingular.mk`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant7c0e93e9ae70d81d9cc495fe1b92c80e51cc84f60949446e150c6e17d81dbdf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant7c0e93e9ae70d81d9cc495fe1b92c80e51cc84f60949446e150c6e17d81dbdf1.lean#L975).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9532c65dfde44fa423a57349d3b0bf521b0e9f45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
