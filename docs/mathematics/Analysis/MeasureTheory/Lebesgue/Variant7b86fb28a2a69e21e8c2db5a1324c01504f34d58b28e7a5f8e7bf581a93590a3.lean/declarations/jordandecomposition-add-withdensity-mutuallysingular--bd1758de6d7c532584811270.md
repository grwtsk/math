# jordanDecomposition_add_withDensity_mutuallySingular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca488206-9028-2fdc-83a2-aed264f99600",
  "kind": "theorem",
  "lexical_name": "jordanDecomposition_add_withDensity_mutuallySingular",
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
  "slug": "jordandecomposition-add-withdensity-mutuallysingular--bd1758de6d7c532584811270",
  "source": {
    "blob": "a5fed7e3be6c28f5f8e823e63dfcf38e422bacd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 219,
    "path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd1758de6d7c532584811270d3a284cb0e5d8ec14bcd4e46039f43796bbd4701",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca488206-9028-2fdc-83a2-aed264f99600`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jordanDecomposition_add_withDensity_mutuallySingular {f : α → ℝ} (hf : Measurable f)
    (htμ : t ⟂ᵥ μ.toENNRealVectorMeasure) :
    (t.toJordanDecomposition.posPart + μ.withDensity fun x : α => ENNReal.ofReal (f x)) ⟂ₘ
      t.toJordanDecomposition.negPart + μ.withDensity fun x : α => ENNReal.ofReal (-f x) := by
  rw [mutuallySingular_ennreal_iff, totalVariation_mutuallySingular_iff,
    VectorMeasure.ennrealToMeasure_toENNRealVectorMeasure] at htμ
  exact
    ((JordanDecomposition.mutuallySingular _).add_right
          (htμ.1.mono_ac (refl _) (withDensity_absolutelyContinuous _ _))).add_left
      ((htμ.2.symm.mono_ac (withDensity_absolutelyContinuous _ _) (refl _)).add_right
        (withDensity_ofReal_mutuallySingular hf))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant7b86fb28a2a69e21e8c2db5a1324c01504f34d58b28e7a5f8e7bf581a93590a3.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5fed7e3be6c28f5f8e823e63dfcf38e422bacd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
