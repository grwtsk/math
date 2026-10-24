# integrable_iff_integrable_mul_pdf

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
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a74eb01d-692f-fdaf-a0dd-c06d91dfc4f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75839b48-ced0-a997-60a3-5fa888743b90",
  "kind": "theorem",
  "lexical_name": "integrable_iff_integrable_mul_pdf",
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
  "slug": "integrable-iff-integrable-mul-pdf--7af06f0498da4da0a1a3e579",
  "source": {
    "blob": "75d8094b946fdae51b6a02420d35648b2a35a34c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 154,
    "path": "GRWTSK/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7af06f0498da4da0a1a3e579b6e068d19f73f38438eb52ae5a62a0d3734ad35c",
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

Occurrence: `result:75839b48-ced0-a997-60a3-5fa888743b90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_iff_integrable_mul_pdf [IsFiniteMeasure ℙ] {X : Ω → E} [HasPDF X ℙ μ] {f : E → ℝ}
    (hf : Measurable f) :
    Integrable (fun x => f (X x)) ℙ ↔ Integrable (fun x => f x * (pdf X ℙ μ x).toReal) μ := by
  -- porting note: using `erw` because `rw` doesn't recognize `(f <| X ·)` as `f ∘ X`
  -- https://github.com/leanprover-community/mathlib4/issues/5164
  erw [← integrable_map_measure hf.aestronglyMeasurable (HasPDF.measurable X ℙ μ).aemeasurable,
    map_eq_withDensity_pdf X ℙ μ, integrable_withDensity_iff (measurable_pdf _ _ _) ae_lt_top]
#align measure_theory.pdf.integrable_iff_integrable_mul_pdf MeasureTheory.pdf.integrable_iff_integrable_mul_pdf

/-- **The Law of the Unconscious Statistician**: Given a random variable `X` and a measurable
function `f`, `f ∘ X` is a random variable with expectation `∫ x, f x * pdf X ∂μ`
where `μ` is a measure on the codomain of `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Density/Variant9a0478ef835c8279c874b3a072aa767cc86975804754eb0225de79854d481d8f.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75d8094b946fdae51b6a02420d35648b2a35a34c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
