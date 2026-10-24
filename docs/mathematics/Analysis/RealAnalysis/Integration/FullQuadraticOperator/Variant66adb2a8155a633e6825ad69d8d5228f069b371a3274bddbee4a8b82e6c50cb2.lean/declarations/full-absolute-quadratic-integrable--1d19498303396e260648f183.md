# full_absolute_quadratic_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:995641c6-0d58-21db-2c1e-62b3dab4186b",
  "kind": "theorem",
  "lexical_name": "full_absolute_quadratic_integrable",
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
  "slug": "full-absolute-quadratic-integrable--1d19498303396e260648f183",
  "source": {
    "blob": "e40859a6b54d37a8477e49d62b5dd0e10598b9ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 170,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d19498303396e260648f183f9697d792be18790044b924a9174aafdc32ee5db",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:995641c6-0d58-21db-2c1e-62b3dab4186b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_absolute_quadratic_integrable (A : ℝ) (f : Hilbert) (hf : GammaFormDomain f) :
    Integrable (fun ξ ↦ |spectralMultiplier A ξ| * Complex.normSq (f ξ)) volume := by
  have hcos : Integrable (fun ξ ↦ |cosineMultiplier A ξ| * Complex.normSq (f ξ)) := by
    apply (hilbert_norm_sq_integrable f).bdd_mul (c := 2 * totalWeight A)
    · exact (cosine_multiplier_continuous A).abs.aestronglyMeasurable
    · filter_upwards [] with ξ
      simpa only [Real.norm_eq_abs, abs_abs] using cosine_multiplier_abs_le A ξ
  have hm : AEStronglyMeasurable
      (fun ξ ↦ |spectralMultiplier A ξ| * Complex.normSq (f ξ)) :=
    (spectral_multiplier_continuous A).abs.aestronglyMeasurable.mul
      (Complex.continuous_normSq.comp_aestronglyMeasurable (Lp.aestronglyMeasurable f))
  apply (hf.add hcos).mono' hm
  filter_upwards [] with ξ
  rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (abs_nonneg _) (Complex.normSq_nonneg _))]
  simp only [Pi.add_apply]
  exact (mul_le_mul_of_nonneg_right (abs_add_le _ _) (Complex.normSq_nonneg _)).trans_eq
    (add_mul _ _ _)

/-- The full quadratic form is a genuine integral on its stated form domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e40859a6b54d37a8477e49d62b5dd0e10598b9ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
