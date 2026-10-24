# integral_bilinear_hasDerivAt_right_eq_neg_left_of_integrable

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
      "line": 1206,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3dff9cf79f83a1dcd566e459580865d112c2dbc9bfb1f11b1eeef0532be6b95c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d029dad6-8b5c-405a-0bf7-fba5bc17890f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:037e4a4e-85d0-7673-5608-ff6cba22683a",
  "kind": "theorem",
  "lexical_name": "integral_bilinear_hasDerivAt_right_eq_neg_left_of_integrable",
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
  "slug": "integral-bilinear-hasderivat-right-eq-neg-left-of-integrable--96a9738a5678b8e429c5d10f",
  "source": {
    "blob": "a5fb502521492f34c02b59f2f46a1e6be0be498f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1230,
    "line": 1206,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant3dff9cf79f83a1dcd566e459580865d112c2dbc9bfb1f11b1eeef0532be6b95c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96a9738a5678b8e429c5d10fb917b003c79b22bbded5f6aef4d6a6555eefb6ea",
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

Occurrence: `result:037e4a4e-85d0-7673-5608-ff6cba22683a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1206–1230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_bilinear_hasDerivAt_right_eq_neg_left_of_integrable
    (hu : ∀ x, HasDerivAt u (u' x) x) (hv : ∀ x, HasDerivAt v (v' x) x)
    (huv' : Integrable (fun x ↦ L (u x) (v' x))) (hu'v : Integrable (fun x ↦ L (u' x) (v x)))
    (huv : Integrable (fun x ↦ L (u x) (v x))) :
    ∫ (x : ℝ), L (u x) (v' x) = - ∫ (x : ℝ), L (u' x) (v x) := by
  by_cases hG : CompleteSpace G; swap
  · simp [integral, hG]
  have I : Tendsto (fun x ↦ L (u x) (v x)) atBot (𝓝 0) :=
    tendsto_zero_of_hasDerivAt_of_integrableOn_Iic (a := 0)
      (fun x _hx ↦ L.hasDerivAt_of_bilinear (hu x) (hv x))
      (huv'.add hu'v).integrableOn huv.integrableOn
  have J : Tendsto (fun x ↦ L (u x) (v x)) atTop (𝓝 0) :=
    tendsto_zero_of_hasDerivAt_of_integrableOn_Ioi (a := 0)
      (fun x _hx ↦ L.hasDerivAt_of_bilinear (hu x) (hv x))
      (huv'.add hu'v).integrableOn huv.integrableOn
  simp [integral_bilinear_hasDerivAt_right_eq_sub hu hv huv' hu'v I J]

end IntegrationByPartsBilinear

section IntegrationByPartsAlgebra

variable {A : Type*} [NormedRing A] [NormedAlgebra ℝ A]
  {a : ℝ} {a' b' : A} {u : ℝ → A} {v : ℝ → A} {u' : ℝ → A} {v' : ℝ → A}

/-- For finite intervals, see: `intervalIntegral.integral_deriv_mul_eq_sub`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegralEqImproper/Variant3dff9cf79f83a1dcd566e459580865d112c2dbc9bfb1f11b1eeef0532be6b95c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant3dff9cf79f83a1dcd566e459580865d112c2dbc9bfb1f11b1eeef0532be6b95c.lean#L1206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5fb502521492f34c02b59f2f46a1e6be0be498f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
