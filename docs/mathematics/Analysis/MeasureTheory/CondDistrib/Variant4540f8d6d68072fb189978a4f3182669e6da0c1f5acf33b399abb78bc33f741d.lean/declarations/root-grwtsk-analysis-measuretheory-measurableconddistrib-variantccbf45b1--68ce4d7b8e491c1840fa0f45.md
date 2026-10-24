# _root_.GRWTSK.Analysis.MeasureTheory.MeasurableCondDistrib.Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.MeasureTheory.Integrable.comp_snd_map_prod_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a2ab55f-8e8a-d7eb-0ee5-884ee3e6d0cb",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.MeasurableCondDistrib.Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.MeasureTheory.Integrable.comp_snd_map_prod_mk",
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
  "slug": "root-grwtsk-analysis-measuretheory-measurableconddistrib-variantccbf45b1--68ce4d7b8e491c1840fa0f45",
  "source": {
    "blob": "c82bcd2c96aeab904421d9ac11eeb468e5f138b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 304,
    "path": "GRWTSK/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68ce4d7b8e491c1840fa0f454fb50dd8b23b4b67ce7051683fb21cf93821a374",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a2ab55f-8e8a-d7eb-0ee5-884ee3e6d0cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.MeasurableCondDistrib.Variantccbf45b1602a2d516f468bf87f4d35aa35af41612a40fd161f30a81158b2cb08.MeasureTheory.Integrable.comp_snd_map_prod_mk
    {Ω} {mΩ : MeasurableSpace Ω} (X : Ω → β) {μ : Measure Ω} {f : Ω → F} (hf_int : Integrable f μ) :
    Integrable (fun x : β × Ω => f x.2) (μ.map fun ω => (X ω, ω)) := by
  by_cases hX : AEMeasurable X μ
  · have hf := hf_int.1.comp_snd_map_prod_mk X (mΩ := mΩ) (mβ := mβ)
    refine' ⟨hf, _⟩
    rw [HasFiniteIntegral, lintegral_map' hf.ennnorm (hX.prod_mk aemeasurable_id)]
    exact hf_int.2
  · rw [Measure.map_of_not_aemeasurable]
    · simp
    · contrapose! hX; exact measurable_fst.comp_aemeasurable hX
#align measure_theory.integrable.comp_snd_map_prod_mk MeasureTheory.Integrable.comp_snd_map_prod_mk

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CondDistrib/Variant4540f8d6d68072fb189978a4f3182669e6da0c1f5acf33b399abb78bc33f741d.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c82bcd2c96aeab904421d9ac11eeb468e5f138b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
