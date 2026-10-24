# compensated_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80a0f1b2-bbfb-00f4-4eb7-895dd70bf11c",
  "kind": "theorem",
  "lexical_name": "compensated_integral",
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
  "slug": "compensated-integral--581788f4764c1ada4a84f2a0",
  "source": {
    "blob": "4c63da6c036d77103c7bda0672771339b1576024",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:581788f4764c1ada4a84f2a0c0e0fd64b65051afd0eec3f8e064cfaeb858634f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80a0f1b2-bbfb-00f4-4eb7-895dd70bf11c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensated_integral {a : ℝ} (ha : 0 < a) (b : ℝ) :
    (∫ t : ℝ in Ioi 0, Real.exp (-a*t)*(1-Real.cos (b*t))) =
      b^2/(a*(a^2+b^2)) := by
  have he : (fun t : ℝ => Real.exp (-a*t)*(1-Real.cos (b*t))) =
      (fun t => Real.exp (-a*t) - Real.exp (-a*t)*Real.cos (b*t)) := by
    funext t; ring
  rw [he, integral_sub (integrableOn_exp_mul_Ioi (by linarith : -a < 0) 0)
    (damped_cosine_integrable ha b), integral_exp_mul_Ioi (by linarith : -a < 0) 0,
    damped_cosine_integral ha b]
  have hsum : a^2+b^2 ≠ 0 := ne_of_gt (by positivity)
  simp only [mul_zero, Real.exp_zero, neg_div_neg_eq]
  field_simp
  ring

/-- Exact source rate 2n+1/2 and exact factor two, including zero frequency. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c63da6c036d77103c7bda0672771339b1576024` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
