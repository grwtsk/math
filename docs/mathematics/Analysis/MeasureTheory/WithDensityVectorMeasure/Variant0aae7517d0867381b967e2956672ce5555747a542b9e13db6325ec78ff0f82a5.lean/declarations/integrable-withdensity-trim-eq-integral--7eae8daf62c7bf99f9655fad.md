# Integrable.withDensityᵥ_trim_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5aadae740df5f367123a2070536a547b879ff3b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f096e138-a9c0-80d9-7f12-bfc5b28b7ae7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9117c12-0c7b-0f40-bfb1-a54071276649",
  "kind": "theorem",
  "lexical_name": "Integrable.withDensityᵥ_trim_eq_integral",
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
  "slug": "integrable-withdensity-trim-eq-integral--7eae8daf62c7bf99f9655fad",
  "source": {
    "blob": "5aadae740df5f367123a2070536a547b879ff3b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 195,
    "path": "GRWTSK/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7eae8daf62c7bf99f9655fad2c4c924092ebfff1daef306ae4973fa0898ab86b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9117c12-0c7b-0f40-bfb1-a54071276649`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Integrable.withDensityᵥ_trim_eq_integral {m m0 : MeasurableSpace α} {μ : Measure α}
    (hm : m ≤ m0) {f : α → ℝ} (hf : Integrable f μ) {i : Set α} (hi : MeasurableSet[m] i) :
    (μ.withDensityᵥ f).trim hm i = ∫ x in i, f x ∂μ := by
  rw [VectorMeasure.trim_measurableSet_eq hm hi, withDensityᵥ_apply hf (hm _ hi)]
#align measure_theory.integrable.with_densityᵥ_trim_eq_integral MeasureTheory.Integrable.withDensityᵥ_trim_eq_integral

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/WithDensityVectorMeasure/Variant0aae7517d0867381b967e2956672ce5555747a542b9e13db6325ec78ff0f82a5.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5aadae740df5f367123a2070536a547b879ff3b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
