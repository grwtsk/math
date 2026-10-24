# l2_angular_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7ac1ed4-fd87-e25a-f576-87cdda903633",
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
  "slug": "l2-angular-square--461e0af9861954bc1abac585",
  "source": {
    "blob": "0331081ed484478ba3acddd4a04ce865afea82d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 25,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant7eec49f1e6424361be6dbab7b4d53eecbdaeab03efab17efea64b7b92bb1565f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:461e0af9861954bc1abac585274018dc7fd6911191fb729fa1d82bcee78aab19",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant7eec49f1e6424361be6dbab7b4d53eecbdaeab03efab17efea64b7b92bb1565f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7ac1ed4-fd87-e25a-f576-87cdda903633`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–49.

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

/-- The actual multiplier of the complete logarithmic vector has the original signed error trace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant7eec49f1e6424361be6dbab7b4d53eecbdaeab03efab17efea64b7b92bb1565f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/WeightedResidualNorm/Variant7eec49f1e6424361be6dbab7b4d53eecbdaeab03efab17efea64b7b92bb1565f.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0331081ed484478ba3acddd4a04ce865afea82d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
