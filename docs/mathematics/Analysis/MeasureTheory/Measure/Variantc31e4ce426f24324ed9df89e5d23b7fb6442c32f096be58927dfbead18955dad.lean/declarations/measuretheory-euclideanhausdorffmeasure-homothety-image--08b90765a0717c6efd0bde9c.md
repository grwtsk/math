# MeasureTheory.euclideanHausdorffMeasure_homothety_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99502ac3-100a-b04f-06f6-789c32911a7d",
  "kind": "theorem",
  "lexical_name": "MeasureTheory.euclideanHausdorffMeasure_homothety_image",
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
  "slug": "measuretheory-euclideanhausdorffmeasure-homothety-image--08b90765a0717c6efd0bde9c",
  "source": {
    "blob": "867660ffb711e410cf4f069b467b5935c7e116ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 169,
    "path": "GRWTSK/Analysis/MeasureTheory/Measure/Variantc31e4ce426f24324ed9df89e5d23b7fb6442c32f096be58927dfbead18955dad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08b90765a0717c6efd0bde9c783efc284415b3fe34e2920760a5fbf000b365df",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Measure/Variantc31e4ce426f24324ed9df89e5d23b7fb6442c32f096be58927dfbead18955dad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99502ac3-100a-b04f-06f6-789c32911a7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasureTheory.euclideanHausdorffMeasure_homothety_image (d : ℕ) (x : P) {c : 𝕜}
    (hc : c ≠ 0) (s : Set P) :
    μHE[d] (AffineMap.homothety x c '' s) = ‖c‖₊ ^ d • μHE[d] s := by
  simp_rw [euclideanHausdorffMeasure_def, Measure.smul_apply]
  rw [hausdorffMeasure_homothety_image (by simp) x hc, smul_comm, NNReal.rpow_natCast]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Measure/Variantc31e4ce426f24324ed9df89e5d23b7fb6442c32f096be58927dfbead18955dad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Measure/Variantc31e4ce426f24324ed9df89e5d23b7fb6442c32f096be58927dfbead18955dad.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `867660ffb711e410cf4f069b467b5935c7e116ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
