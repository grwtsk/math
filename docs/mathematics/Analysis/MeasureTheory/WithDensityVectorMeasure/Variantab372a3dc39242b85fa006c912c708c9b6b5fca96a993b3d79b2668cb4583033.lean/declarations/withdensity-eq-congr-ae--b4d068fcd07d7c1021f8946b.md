# WithDensityᵥEq.congr_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d5f8b35-c8d4-2716-910e-e7413c401ec7",
  "kind": "theorem",
  "lexical_name": "WithDensityᵥEq.congr_ae",
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
  "slug": "withdensity-eq-congr-ae--b4d068fcd07d7c1021f8946b",
  "source": {
    "blob": "f13be07516fd409d36a16c9e5418feb90f4dcbc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 157,
    "path": "GRWTSK/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4d068fcd07d7c1021f8946b8d1377d71948abf3d27d20a4c7a5699c172e469f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d5f8b35-c8d4-2716-910e-e7413c401ec7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem WithDensityᵥEq.congr_ae {f g : α → E} (h : f =ᵐ[μ] g) :
    μ.withDensityᵥ f = μ.withDensityᵥ g := by
  by_cases hf : Integrable f μ
  · ext i hi
    rw [withDensityᵥ_apply hf hi, withDensityᵥ_apply (hf.congr h) hi]
    exact integral_congr_ae (ae_restrict_of_ae h)
  · have hg : ¬Integrable g μ := by intro hg; exact hf (hg.congr h.symm)
    rw [withDensityᵥ, withDensityᵥ, dif_neg hf, dif_neg hg]
#align measure_theory.with_densityᵥ_eq.congr_ae MeasureTheory.WithDensityᵥEq.congr_ae

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/WithDensityVectorMeasure/Variantab372a3dc39242b85fa006c912c708c9b6b5fca96a993b3d79b2668cb4583033.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f13be07516fd409d36a16c9e5418feb90f4dcbc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
