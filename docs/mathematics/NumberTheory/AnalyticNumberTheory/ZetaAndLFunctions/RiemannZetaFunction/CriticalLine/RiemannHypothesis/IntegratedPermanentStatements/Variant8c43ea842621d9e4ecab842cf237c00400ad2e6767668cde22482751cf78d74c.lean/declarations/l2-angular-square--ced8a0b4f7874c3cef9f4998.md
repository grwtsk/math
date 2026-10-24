# l2_angular_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34b05281-7568-1fb2-a39c-9f667b751edc",
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
  "slug": "l2-angular-square--ced8a0b4f7874c3cef9f4998",
  "source": {
    "blob": "bd14a4123a5f6d5db3df013d82d6ea7f25988703",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 8478,
    "line": 8454,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant8c43ea842621d9e4ecab842cf237c00400ad2e6767668cde22482751cf78d74c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ced8a0b4f7874c3cef9f49987ce42086568df99de0d0a6b32c7116b8556c6855",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant8c43ea842621d9e4ecab842cf237c00400ad2e6767668cde22482751cf78d74c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34b05281-7568-1fb2-a39c-9f667b751edc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 8454–8478.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant8c43ea842621d9e4ecab842cf237c00400ad2e6767668cde22482751cf78d74c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant8c43ea842621d9e4ecab842cf237c00400ad2e6767668cde22482751cf78d74c.lean#L8454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd14a4123a5f6d5db3df013d82d6ea7f25988703` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
