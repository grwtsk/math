# measure_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75d8094b946fdae51b6a02420d35648b2a35a34c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 343,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7eca95af-ecb1-2519-3dff-9cd11ba10d90",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b85c544-9197-3b51-c79b-00178e7317fe",
  "kind": "theorem",
  "lexical_name": "measure_preimage",
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
  "slug": "measure-preimage--8a34026bb0572c4d25090b45",
  "source": {
    "blob": "75d8094b946fdae51b6a02420d35648b2a35a34c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 343,
    "path": "GRWTSK/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a34026bb0572c4d25090b45de0a5a7417406feca5aead49548118e9d7ed51b3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b85c544-9197-3b51-c79b-00178e7317fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_preimage {m : MeasurableSpace Ω} {X : Ω → E} {ℙ : Measure Ω} {μ : Measure E}
    {s : Set E} (hns : μ s ≠ 0) (hnt : μ s ≠ ∞) (hms : MeasurableSet s) (hu : IsUniform X s ℙ μ)
    {A : Set E} (hA : MeasurableSet A) : ℙ (X ⁻¹' A) = μ (s ∩ A) / μ s := by
  haveI := hu.hasPDF hns hnt
  rw [← Measure.map_apply (HasPDF.measurable X ℙ μ) hA, map_eq_set_lintegral_pdf X ℙ μ hA,
    lintegral_congr_ae hu.restrict]
  simp only [hms, hA, lintegral_indicator, Pi.smul_apply, Pi.one_apply, Algebra.id.smul_eq_mul,
    mul_one, lintegral_const, restrict_apply', Set.univ_inter]
  rw [ENNReal.div_eq_inv_mul]
#align measure_theory.pdf.is_uniform.measure_preimage MeasureTheory.pdf.IsUniform.measure_preimage

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75d8094b946fdae51b6a02420d35648b2a35a34c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
