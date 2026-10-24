# actualPsiComplexMellin_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:051d1cdf-eefe-3ec8-57a2-61151bb46976",
  "kind": "theorem",
  "lexical_name": "actualPsiComplexMellin_integrableOn",
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
  "slug": "actualpsicomplexmellin-integrableon--6e3a0a87c0580afaf098e2f9",
  "source": {
    "blob": "71c76337b1de25ad5006a608919ebdeed8afdc2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e3a0a87c0580afaf098e2f9f3cecf55817ae54b252146f674ec42291537f4ff",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:051d1cdf-eefe-3ec8-57a2-61151bb46976`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPsiComplexMellin_integrableOn {s : ℂ} (hs : 1 < s.re) :
    IntegrableOn (fun x : ℝ => (Chebyshev.psi x : ℂ) * (x : ℂ) ^ (-(s + 1)))
      (Ioi (1 : ℝ)) := by
  have hm : AEStronglyMeasurable
      (fun x : ℝ => (Chebyshev.psi x : ℂ) * (x : ℂ) ^ (-(s + 1)))
      (volume.restrict (Ioi (1 : ℝ))) := by
    have hp : Measurable (fun x : ℝ => (Chebyshev.psi x : ℂ)) :=
      Complex.measurable_ofReal.comp actual_psi_measurable
    have hc : Measurable (fun x : ℝ => (x : ℂ) ^ (-(s + 1))) := by fun_prop
    exact (hp.mul hc).aestronglyMeasurable
  have hD : IntegrableOn (fun x : ℝ => (Real.log 4 + 4) * x ^ (-s.re)) (Ioi (1 : ℝ)) :=
    (integrableOn_Ioi_rpow_of_lt (by linarith : -s.re < -1) (by norm_num)).const_mul _
  apply hD.mono' hm
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
  have hx0 : 0 < x := lt_trans (by norm_num) hx
  rw [norm_mul, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (Chebyshev.psi_nonneg _), Complex.norm_cpow_eq_rpow_re_of_pos hx0]
  have he : x * x ^ (-(s + 1)).re = x ^ (-s.re) := by
    simp only [neg_re, add_re, one_re]
    nth_rw 1 [← Real.rpow_one x]
    rw [← Real.rpow_add hx0]
    congr 1
    ring
  calc
    _ ≤ ((Real.log 4 + 4) * x) * x ^ (-(s + 1)).re :=
      mul_le_mul_of_nonneg_right (Chebyshev.psi_le_const_mul_self hx0.le)
        (Real.rpow_nonneg hx0.le _)
    _ = _ := by rw [mul_assoc, he]

/-- Maintained finite-prefix Mellin summation keeps every closed prime-power coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71c76337b1de25ad5006a608919ebdeed8afdc2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
