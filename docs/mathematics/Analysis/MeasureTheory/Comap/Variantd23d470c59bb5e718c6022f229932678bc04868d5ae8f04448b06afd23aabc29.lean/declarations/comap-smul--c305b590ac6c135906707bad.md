# comap_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9058273-a02f-c615-d788-9e40f90f64a0",
  "kind": "lemma",
  "lexical_name": "comap_smul",
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
  "slug": "comap-smul--c305b590ac6c135906707bad",
  "source": {
    "blob": "776bd7f9124999044cbc7f8a5a0d4c880be3ff49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 161,
    "path": "GRWTSK/Analysis/MeasureTheory/Comap/Variantd23d470c59bb5e718c6022f229932678bc04868d5ae8f04448b06afd23aabc29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c305b590ac6c135906707bad1485373c09630daae9c14404288f3862b7e62cb1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Comap/Variantd23d470c59bb5e718c6022f229932678bc04868d5ae8f04448b06afd23aabc29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9058273-a02f-c615-d788-9e40f90f64a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comap_smul {μ : Measure β} (c : ℝ≥0∞) : comap f (c • μ) = c • comap f μ := by
  obtain rfl | hc := eq_or_ne c 0
  · simp
  by_cases h : Function.Injective f ∧ ∀ s : Set α, MeasurableSet s → NullMeasurableSet (f '' s) μ
  · ext s hs
    rw [comap_apply₀ f _ h.1 _ hs.nullMeasurableSet, smul_apply, smul_apply,
      comap_apply₀ f μ h.1 h.2 hs.nullMeasurableSet]
    simpa [nullMeasurableSet_smul_measure_iff hc] using h.2
  · have h' : ¬ (Function.Injective f ∧
        ∀ (s : Set α), MeasurableSet s → NullMeasurableSet (f '' s) (c • μ)) := by
      simpa [nullMeasurableSet_smul_measure_iff hc] using h
    simp [comap_undef, h, h']

end Measure

end MeasureTheory

open MeasureTheory Measure

variable {α β : Type*} {ma : MeasurableSpace α} {mb : MeasurableSpace β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Comap/Variantd23d470c59bb5e718c6022f229932678bc04868d5ae8f04448b06afd23aabc29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Comap/Variantd23d470c59bb5e718c6022f229932678bc04868d5ae8f04448b06afd23aabc29.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `776bd7f9124999044cbc7f8a5a0d4c880be3ff49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
