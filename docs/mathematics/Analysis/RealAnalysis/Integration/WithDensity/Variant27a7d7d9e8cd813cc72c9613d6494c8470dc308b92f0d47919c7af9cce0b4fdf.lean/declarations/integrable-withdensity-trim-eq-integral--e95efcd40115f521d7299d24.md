# Integrable.withDensityᵥ_trim_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12708fa8-4b21-93c9-ed79-ddd5c62e6d71",
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
  "slug": "integrable-withdensity-trim-eq-integral--e95efcd40115f521d7299d24",
  "source": {
    "blob": "3c830dd7edaad108101a49aef66f74893638c05f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 212,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant27a7d7d9e8cd813cc72c9613d6494c8470dc308b92f0d47919c7af9cce0b4fdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e95efcd40115f521d7299d2409129a71cbbb6d6ecc11aa0969140d95920ffe4e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/WithDensity/Variant27a7d7d9e8cd813cc72c9613d6494c8470dc308b92f0d47919c7af9cce0b4fdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12708fa8-4b21-93c9-ed79-ddd5c62e6d71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Integrable.withDensityᵥ_trim_eq_integral {m m0 : MeasurableSpace α} {μ : Measure α}
    (hm : m ≤ m0) {f : α → ℝ} (hf : Integrable f μ) {i : Set α} (hi : MeasurableSet[m] i) :
    (μ.withDensityᵥ f).trim hm i = ∫ x in i, f x ∂μ := by
  rw [VectorMeasure.trim_measurableSet_eq hm hi, withDensityᵥ_apply hf (hm _ hi)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/WithDensity/Variant27a7d7d9e8cd813cc72c9613d6494c8470dc308b92f0d47919c7af9cce0b4fdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variant27a7d7d9e8cd813cc72c9613d6494c8470dc308b92f0d47919c7af9cce0b4fdf.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c830dd7edaad108101a49aef66f74893638c05f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
