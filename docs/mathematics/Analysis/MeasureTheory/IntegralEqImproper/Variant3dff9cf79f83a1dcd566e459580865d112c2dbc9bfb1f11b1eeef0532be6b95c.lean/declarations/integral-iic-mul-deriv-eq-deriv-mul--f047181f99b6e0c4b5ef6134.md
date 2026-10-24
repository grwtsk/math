# integral_Iic_mul_deriv_eq_deriv_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5fb502521492f34c02b59f2f46a1e6be0be498f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1314,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3dff9cf79f83a1dcd566e459580865d112c2dbc9bfb1f11b1eeef0532be6b95c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:270c559a-7ab1-c210-f2d6-5712af7a62f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a43833b7-4921-5e67-39e5-6d7aef40c751",
  "kind": "theorem",
  "lexical_name": "integral_Iic_mul_deriv_eq_deriv_mul",
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
  "slug": "integral-iic-mul-deriv-eq-deriv-mul--f047181f99b6e0c4b5ef6134",
  "source": {
    "blob": "a5fb502521492f34c02b59f2f46a1e6be0be498f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1325,
    "line": 1314,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant3dff9cf79f83a1dcd566e459580865d112c2dbc9bfb1f11b1eeef0532be6b95c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f047181f99b6e0c4b5ef61347dc0c0c98368af639a927035f94e67102b40f68d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegralEqImproper/Variant3dff9cf79f83a1dcd566e459580865d112c2dbc9bfb1f11b1eeef0532be6b95c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a43833b7-4921-5e67-39e5-6d7aef40c751`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1314–1325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_Iic_mul_deriv_eq_deriv_mul
    (hu : ∀ x ∈ Iio a, HasDerivAt u (u' x) x) (hv : ∀ x ∈ Iio a, HasDerivAt v (v' x) x)
    (huv' : IntegrableOn (u * v') (Iic a)) (hu'v : IntegrableOn (u' * v) (Iic a))
    (h_zero : Tendsto (u * v) (𝓝[<] a) (𝓝 a')) (h_infty : Tendsto (u * v) atBot (𝓝 b')) :
    ∫ (x : ℝ) in Iic a, u x * v' x = a' - b' - ∫ (x : ℝ) in Iic a, u' x * v x := by
  rw [Pi.mul_def] at huv' hu'v
  rw [eq_sub_iff_add_eq, ← integral_add huv' hu'v]
  simpa only [add_comm] using integral_Iic_deriv_mul_eq_sub hu hv (hu'v.add huv') h_zero h_infty

end IntegrationByPartsAlgebra

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegralEqImproper/Variant3dff9cf79f83a1dcd566e459580865d112c2dbc9bfb1f11b1eeef0532be6b95c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant3dff9cf79f83a1dcd566e459580865d112c2dbc9bfb1f11b1eeef0532be6b95c.lean#L1314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5fb502521492f34c02b59f2f46a1e6be0be498f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
