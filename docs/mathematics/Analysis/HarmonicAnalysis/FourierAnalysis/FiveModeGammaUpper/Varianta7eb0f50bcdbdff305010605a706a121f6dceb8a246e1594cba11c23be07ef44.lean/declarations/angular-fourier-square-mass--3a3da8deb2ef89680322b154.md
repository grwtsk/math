# angular_fourier_square_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91228762-840b-ed7c-5f5a-5fbe9748f8a7",
  "kind": "theorem",
  "lexical_name": "angular_fourier_square_mass",
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
  "slug": "angular-fourier-square-mass--3a3da8deb2ef89680322b154",
  "source": {
    "blob": "3b30480a38340ace76c119b487c6fc97972efe0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 88,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeGammaUpper/Varianta7eb0f50bcdbdff305010605a706a121f6dceb8a246e1594cba11c23be07ef44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a3da8deb2ef89680322b1542788029234e2a17c77ce4479c5409af4fab650bd",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeGammaUpper/Varianta7eb0f50bcdbdff305010605a706a121f6dceb8a246e1594cba11c23be07ef44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91228762-840b-ed7c-5f5a-5fbe9748f8a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angular_fourier_square_mass (f : ℝ → ℝ) (hf : Integrable f)
    (hsq : Integrable (fun x : ℝ => (f x)^2)) :
    Integrable (fun ω : ℝ => Complex.normSq (sourceFourier f ω)) ∧
    (∫ ω : ℝ, Complex.normSq (sourceFourier f ω)) =
      (2*Real.pi) * ∫ x : ℝ, (f x)^2 := by
  have hfC : Integrable (fun x : ℝ => (f x : ℂ)) := Complex.ofRealCLM.integrable_comp hf
  have hL : MemLp (fun x : ℝ => (f x : ℂ)) 2 :=
    (memLp_two_iff_integrable_sq_norm hfC.aestronglyMeasurable).mpr (by
      simpa only [Complex.norm_real, Real.norm_eq_abs, sq_abs] using hsq)
  have h := standard_fourier_square_mass (fun x : ℝ => (f x : ℂ)) hfC hL
  simp_rw [SourcePlancherel.standardFourier_eq_sourceFourier] at h
  have hn : -(2*Real.pi) ≠ 0 := neg_ne_zero.mpr (by positivity)
  refine ⟨(integrable_comp_mul_left_iff _ hn).mp h.1, ?_⟩
  have he := h.2
  simp only [Complex.normSq_ofReal, ← pow_two] at he
  rw [Measure.integral_comp_mul_left
    (fun ω : ℝ => Complex.normSq (sourceFourier f ω)) (-(2*Real.pi)), smul_eq_mul,
    abs_inv, abs_neg, abs_of_pos (by positivity : 0 < 2*Real.pi)] at he
  have hp : (2*Real.pi) ≠ 0 := by positivity
  calc
    _ = (2*Real.pi) * ((2*Real.pi)⁻¹ * ∫ ω : ℝ, Complex.normSq (sourceFourier f ω)) := by
      rw [← mul_assoc, mul_inv_cancel₀ hp, one_mul]
    _ = _ := by rw [he]

/-- Actual first-derivative Parseval; ordinary C¹ and integrable derivative suffice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeGammaUpper/Varianta7eb0f50bcdbdff305010605a706a121f6dceb8a246e1594cba11c23be07ef44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeGammaUpper/Varianta7eb0f50bcdbdff305010605a706a121f6dceb8a246e1594cba11c23be07ef44.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b30480a38340ace76c119b487c6fc97972efe0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
