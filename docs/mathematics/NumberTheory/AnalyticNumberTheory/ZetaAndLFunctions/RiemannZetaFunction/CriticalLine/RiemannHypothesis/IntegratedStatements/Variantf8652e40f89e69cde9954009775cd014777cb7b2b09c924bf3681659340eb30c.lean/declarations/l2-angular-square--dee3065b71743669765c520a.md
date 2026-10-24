# l2_angular_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87e990a0-6a33-a5fa-02d7-7892d1e43220",
  "kind": "theorem",
  "lexical_name": "l2_angular_square",
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
  "slug": "l2-angular-square--dee3065b71743669765c520a",
  "source": {
    "blob": "999a49d629f31bad8859fc1ee0511c5686631672",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 277,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedStatements/Variantf8652e40f89e69cde9954009775cd014777cb7b2b09c924bf3681659340eb30c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dee3065b71743669765c520a42d2b7a253e77a851d4e7ca1221e7ddb9c85100b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedStatements/Variantf8652e40f89e69cde9954009775cd014777cb7b2b09c924bf3681659340eb30c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87e990a0-6a33-a5fa-02d7-7892d1e43220`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem l2_angular_square (f : FullH) (G : ℝ → ℂ)
    (hF : (𝓕 f : FullH) =ᵐ[volume] (fun ξ : ℝ => G (2 * Real.pi * ξ))) :
    Integrable (fun t : ℝ => ‖G t‖ ^ 2) ∧
      ‖f‖ ^ 2 = (1 / (2 * Real.pi)) * ∫ t : ℝ, ‖G t‖ ^ 2 := by
  have hπ : 0 < 2 * Real.pi := by positivity
  have hm : MemLp (fun ξ : ℝ => G (2 * Real.pi * ξ)) 2 volume :=
    MemLp.ae_eq hF (Lp.memLp _)
  have hi := (memLp_two_iff_integrable_sq_norm hm.aestronglyMeasurable).mp hm
  have he (t : ℝ) : G (2 * Real.pi * ((2 * Real.pi)⁻¹ * t)) = G t := by
    congr 1
    field_simp
  have hGi : Integrable (fun t : ℝ => ‖G t‖ ^ 2) := by
    simpa only [he] using hi.comp_mul_left' (inv_ne_zero hπ.ne')
  refine ⟨hGi, ?_⟩
  calc
    ‖f‖ ^ 2 = ‖(𝓕 f : FullH)‖ ^ 2 := by rw [Lp.norm_fourier_eq]
    _ = ∫ ξ : ℝ, ‖(𝓕 f : FullH) ξ‖ ^ 2 := by
      simpa only [Lp.toLp_coeFn] using norm_sq_toLp _ (Lp.memLp (𝓕 f : FullH))
    _ = ∫ ξ : ℝ, ‖G (2 * Real.pi * ξ)‖ ^ 2 :=
      integral_congr_ae (hF.fun_comp (fun z : ℂ => ‖z‖ ^ 2))
    _ = _ := by
      simpa only [smul_eq_mul, one_div, abs_of_pos (inv_pos.mpr hπ)] using
        Measure.integral_comp_mul_left (fun t : ℝ => ‖G t‖ ^ 2) (2 * Real.pi)


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedStatements/Variantf8652e40f89e69cde9954009775cd014777cb7b2b09c924bf3681659340eb30c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedStatements/Variantf8652e40f89e69cde9954009775cd014777cb7b2b09c924bf3681659340eb30c.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `999a49d629f31bad8859fc1ee0511c5686631672` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
