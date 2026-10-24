# ae_empty_or_univ_of_ae_le_preimage'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f97a784-f281-da8d-ec9b-0da918286038",
  "kind": "theorem",
  "lexical_name": "ae_empty_or_univ_of_ae_le_preimage'",
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
  "slug": "ae-empty-or-univ-of-ae-le-preimage--93970c1eef4bc600caa6b8c3",
  "source": {
    "blob": "ddfae9e1395437c14c71368a7bb5de36ee94b716",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 173,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93970c1eef4bc600caa6b8c3a8e322c401d2167d935829d507effdd34032dfd0",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f97a784-f281-da8d-ec9b-0da918286038`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_empty_or_univ_of_ae_le_preimage' (hf : Ergodic f μ) (hs : NullMeasurableSet s μ)
    (hs' : s ≤ᵐ[μ] f ⁻¹' s) (h_fin : μ s ≠ ∞) : s =ᵐ[μ] (∅ : Set α) ∨ s =ᵐ[μ] univ := by
  replace h_fin : μ (f ⁻¹' s) ≠ ∞ := by rwa [hf.measure_preimage hs]
  refine hf.quasiErgodic.ae_empty_or_univ₀ hs ?_
  exact (ae_eq_of_ae_subset_of_measure_ge hs' (hf.measure_preimage hs).le hs h_fin).symm

/-- See also `Ergodic.ae_empty_or_univ_of_image_ae_le`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Ergodic/Variantbb359cb1a87e2c98e3f6e972d229566c6e6cc90b5b8d034846dac07f1a7ed714.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddfae9e1395437c14c71368a7bb5de36ee94b716` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
