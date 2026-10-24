# centeredMangoldtError_laplace_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ce29422-2b52-201d-20cb-bd06e7c5a942",
  "kind": "theorem",
  "lexical_name": "centeredMangoldtError_laplace_integrable",
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
  "slug": "centeredmangoldterror-laplace-integrable--fa0ac289f296f6365826e8a2",
  "source": {
    "blob": "8a5008bc4e96326487690bfb5ec46135aaf6dc27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 45,
    "path": "GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant83f2cf8d6c8f3e1d03034806e1c6ad3aaa97c300ff930de2f56419d069b4d9df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa0ac289f296f6365826e8a2e81421f0a7ccb2d092827ea6e8a112d0eb8282e3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant83f2cf8d6c8f3e1d03034806e1c6ad3aaa97c300ff930de2f56419d069b4d9df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ce29422-2b52-201d-20cb-bd06e7c5a942`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredMangoldtError_laplace_integrable {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun t : ℝ => Complex.exp (-z*(t:ℂ))*
      ((mangoldtLogError t+Real.eulerMascheroniConstant : ℝ):ℂ)) (Ioi 0) := by
  let B : ℝ := Real.log 4+4+Real.log 2+|Real.eulerMascheroniConstant|
  have hB : 0 ≤ B := by
    dsimp [B]
    have h4 := Real.log_nonneg (by norm_num : (1:ℝ)≤4)
    have h2 := Real.log_nonneg (by norm_num : (1:ℝ)≤2)
    positivity
  have hex : Measurable (fun t : ℝ => Complex.exp (-z*(t:ℂ))) := by fun_prop
  have hr : Measurable (fun t : ℝ =>
      ((mangoldtLogError t+Real.eulerMascheroniConstant : ℝ):ℂ)) :=
    Complex.continuous_ofReal.measurable.comp centeredMangoldtError_measurable
  refine ((exp_neg_integrableOn_Ioi 0 hz).mul_const B).mono'
    (hex.mul hr).aestronglyMeasurable ?_
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  rw [norm_mul,Complex.norm_exp]
  simp only [Complex.mul_re,Complex.neg_re,Complex.ofReal_re,Complex.ofReal_im,
    mul_zero,sub_zero,Complex.norm_real,Real.norm_eq_abs]
  exact mul_le_mul_of_nonneg_left (centeredMangoldtError_bound ht.le) (Real.exp_pos _).le

/-- Uncentered actual error is also integrable against the same genuine weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant83f2cf8d6c8f3e1d03034806e1c6ad3aaa97c300ff930de2f56419d069b4d9df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrability/Variant83f2cf8d6c8f3e1d03034806e1c6ad3aaa97c300ff930de2f56419d069b4d9df.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a5008bc4e96326487690bfb5ec46135aaf6dc27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
