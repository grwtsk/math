# volume_interior_eq_volume_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "22ee702d4e5918abbd259fc06dfc7d00056637d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 854,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93b6e055dad737d9b3fca7bf1864a9076a1e23d703a6f86c877635ec0c6140e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13d497dc-6d99-4d65-5e71-d62af69b10fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6492f1e-ad24-8da1-74d2-783b87e5ec81",
  "kind": "theorem",
  "lexical_name": "volume_interior_eq_volume_closure",
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
  "slug": "volume-interior-eq-volume-closure--9251f37da191da0736868ad4",
  "source": {
    "blob": "22ee702d4e5918abbd259fc06dfc7d00056637d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 874,
    "line": 854,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variant93b6e055dad737d9b3fca7bf1864a9076a1e23d703a6f86c877635ec0c6140e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9251f37da191da0736868ad4d26dcafd96c8c9873153de1c3d674e48bbec78ef",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variant93b6e055dad737d9b3fca7bf1864a9076a1e23d703a6f86c877635ec0c6140e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6492f1e-ad24-8da1-74d2-783b87e5ec81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 854–874.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem volume_interior_eq_volume_closure :
    volume (interior (normLeOne K)) = volume (closure (normLeOne K)) := by
  have h₁ : MeasurableSet (normAtAllPlaces ⁻¹' compactSet K) :=
    (isCompact_compactSet K).measurableSet.preimage (continuous_normAtAllPlaces K).measurable
  have h₂ : MeasurableSet (normAtAllPlaces ⁻¹' expMapBasis '' interior (paramSet K)) := by
    refine MeasurableSet.preimage ?_ (continuous_normAtAllPlaces K).measurable
    refine MeasurableSet.image_of_continuousOn_injOn ?_ (continuous_expMapBasis K).continuousOn
      (injective_expMapBasis K).injOn
    exact measurableSet_interior
  refine le_antisymm (measure_mono interior_subset_closure) ?_
  refine (measure_mono (closure_normLeOne_subset K)).trans ?_
  refine le_of_eq_of_le ?_ (measure_mono (subset_interior_normLeOne K))
  rw [volume_eq_two_pow_mul_two_pi_pow_mul_integral Set.preimage_image_preimage h₁,
    normAtAllPlaces_image_preimage_of_nonneg (fun x a w ↦ nonneg_of_mem_compactSet K a w),
    volume_eq_two_pow_mul_two_pi_pow_mul_integral Set.preimage_image_preimage h₂,
    normAtAllPlaces_image_preimage_expMapBasis, setLIntegral_congr (compactSet_ae K),
    setLIntegral_expMapBasis_image measurableSet_closure (by fun_prop),
    setLIntegral_expMapBasis_image measurableSet_interior (by fun_prop),
    setLIntegral_congr (closure_paramSet_ae_interior K)]

open scoped Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variant93b6e055dad737d9b3fca7bf1864a9076a1e23d703a6f86c877635ec0c6140e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormLeOne/Variant93b6e055dad737d9b3fca7bf1864a9076a1e23d703a6f86c877635ec0c6140e1.lean#L854).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22ee702d4e5918abbd259fc06dfc7d00056637d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
