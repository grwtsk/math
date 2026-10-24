# thetaGraphMeasure_exp_abs_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa6a85e5-b0d1-8537-fe29-e8f4e7d2c35f",
  "kind": "theorem",
  "lexical_name": "thetaGraphMeasure_exp_abs_integrable",
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
  "slug": "thetagraphmeasure-exp-abs-integrable--5ee11a09499a81e7ee39ebd9",
  "source": {
    "blob": "74d7bf292d711254a5c8355d6ebed0d742d94693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 139,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variant2396397688f340a835b3750dc8cbb6106cf8d2c786c682ddc141a4299b235480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ee11a09499a81e7ee39ebd9da25f869977de347c77179cc698ddb2fbe1f54ec",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variant2396397688f340a835b3750dc8cbb6106cf8d2c786c682ddc141a4299b235480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa6a85e5-b0d1-8537-fe29-e8f4e7d2c35f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaGraphMeasure_exp_abs_integrable {t : ℝ} (ht : 0 ≤ t) :
    Integrable (fun x : ℝ => Real.exp |x|) (thetaGraphMeasure t) := by
  rw [thetaGraphMeasure, graphMeasure, integrable_withDensity_iff_integrable_smul'
    (by fun_prop) (Eventually.of_forall (fun _ => ENNReal.ofReal_lt_top))]
  simp only [smul_eq_mul]
  apply ((exponential_integrable 2 (by norm_num) ht).const_mul 3).mono'
  · fun_prop
  · filter_upwards [momentMeasure_nonnegative_ae t] with x hx
    rw [ENNReal.toReal_ofReal (by positivity : 0 ≤ 1 + x ^ 2)]
    rw [Real.norm_of_nonneg (by positivity : 0 ≤ (1 + x ^ 2) * Real.exp |x|)]
    exact weighted_exp_bound hx

/-- Finite weighted mass is proved before invoking finite-measure uniqueness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variant2396397688f340a835b3750dc8cbb6106cf8d2c786c682ddc141a4299b235480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ThetaPolynomialGraphCore/Variant2396397688f340a835b3750dc8cbb6106cf8d2c786c682ddc141a4299b235480.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74d7bf292d711254a5c8355d6ebed0d742d94693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
