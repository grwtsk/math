# full_sesquilinear_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bba22ceb-17bd-6aba-caea-8d4380088093",
  "kind": "theorem",
  "lexical_name": "full_sesquilinear_integrable",
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
  "slug": "full-sesquilinear-integrable--aebffecdd61ebad669f602c0",
  "source": {
    "blob": "e40859a6b54d37a8477e49d62b5dd0e10598b9ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 199,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aebffecdd61ebad669f602c0780e86439008dd0c94114b40f6ca303e49c5a18c",
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

Occurrence: `result:bba22ceb-17bd-6aba-caea-8d4380088093`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_sesquilinear_integrable (A : ℝ) (f g : Hilbert)
    (hf : GammaFormDomain f) (hg : GammaFormDomain g) :
    Integrable (fun ξ ↦ (spectralMultiplier A ξ : ℂ) * conj (f ξ) * g ξ) volume := by
  have hm : AEStronglyMeasurable
      (fun ξ ↦ (spectralMultiplier A ξ : ℂ) * conj (f ξ) * g ξ) :=
    (Complex.continuous_ofReal.comp (spectral_multiplier_continuous A)).aestronglyMeasurable.mul
      (Complex.continuous_conj.comp_aestronglyMeasurable (Lp.aestronglyMeasurable f)) |>.mul
        (Lp.aestronglyMeasurable g)
  apply ((full_absolute_quadratic_integrable A f hf).add
    (full_absolute_quadratic_integrable A g hg)).mono' hm
  filter_upwards [] with ξ
  simp only [Pi.add_apply, norm_mul, Complex.norm_real, Real.norm_eq_abs, Complex.norm_conj]
  have hfg : ‖f ξ‖ * ‖g ξ‖ ≤ Complex.normSq (f ξ) + Complex.normSq (g ξ) := by
    simp only [Complex.normSq_eq_norm_sq]
    nlinarith [sq_nonneg (‖f ξ‖ - ‖g ξ‖), sq_nonneg ‖f ξ‖, sq_nonneg ‖g ξ‖]
  calc
    _ = |spectralMultiplier A ξ| * (‖f ξ‖ * ‖g ξ‖) := by ring
    _ ≤ |spectralMultiplier A ξ| * (Complex.normSq (f ξ) + Complex.normSq (g ξ)) :=
      mul_le_mul_of_nonneg_left hfg (abs_nonneg _)
    _ = _ := by ring

/-- The real complete multiplier gives Hermitian symmetry.
Genuine integrability on the common domain is proved separately. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant66adb2a8155a633e6825ad69d8d5228f069b371a3274bddbee4a8b82e6c50cb2.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e40859a6b54d37a8477e49d62b5dd0e10598b9ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
