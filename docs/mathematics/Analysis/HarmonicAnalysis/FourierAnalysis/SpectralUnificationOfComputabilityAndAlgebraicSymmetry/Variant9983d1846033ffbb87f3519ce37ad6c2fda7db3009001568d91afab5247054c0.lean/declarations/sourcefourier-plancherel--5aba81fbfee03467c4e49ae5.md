# sourceFourier_plancherel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a030cc5372fddf7e42980a2027b2600d851d0d59",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/9983d1846033ffbb87f3519ce37ad6c2fda7db3009001568d91afab5247054c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07fa32bd-9f50-fdaf-ecbf-008b0fff5892",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a1be689-750b-7d63-1f82-9b4360c34bc6",
  "kind": "theorem",
  "lexical_name": "sourceFourier_plancherel",
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
  "slug": "sourcefourier-plancherel--5aba81fbfee03467c4e49ae5",
  "source": {
    "blob": "a030cc5372fddf7e42980a2027b2600d851d0d59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 112,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant9983d1846033ffbb87f3519ce37ad6c2fda7db3009001568d91afab5247054c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5aba81fbfee03467c4e49ae51f26334022a050ce0949029f4a6bb126d0c64b7f",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant9983d1846033ffbb87f3519ce37ad6c2fda7db3009001568d91afab5247054c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a1be689-750b-7d63-1f82-9b4360c34bc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceFourier_plancherel (f : ℝ → ℝ) (hf1 : Integrable f volume)
    (hf2 : MemLp f 2 volume) :
    (∫ ξ, Complex.normSq (sourceFourier f ξ)) / (2 * Real.pi) = ∫ x, f x ^ 2 := by
  have hcomplex : Integrable (fun x ↦ (f x : ℂ)) volume :=
    Complex.ofRealCLM.integrable_comp hf1
  have hscale := Measure.integral_comp_div
    (fun ξ : ℝ ↦ ‖𝓕 (fun x ↦ (f x : ℂ)) ξ‖ ^ 2) (-(2 * Real.pi))
  have hpositive : 0 < 2 * Real.pi := by positivity
  have hsource : (∫ ξ, Complex.normSq (sourceFourier f ξ)) =
      (2 * Real.pi) * ∫ ξ, ‖𝓕 (fun x ↦ (f x : ℂ)) ξ‖ ^ 2 := by
    simpa only [BridgeFourier.sourceFourier_eq_fourier, Complex.normSq_eq_norm_sq,
      neg_div, div_neg, abs_neg, abs_of_pos hpositive, smul_eq_mul] using hscale
  rw [hsource, integral_norm_sq_fourier (fun x ↦ (f x : ℂ)) hcomplex hf2.ofReal]
  simp only [Complex.norm_real, Real.norm_eq_abs, sq_abs]
  exact mul_div_cancel_left₀ _ hpositive.ne'

/-- The actual global derivative transform gives the exact angular-frequency square moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant9983d1846033ffbb87f3519ce37ad6c2fda7db3009001568d91afab5247054c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant9983d1846033ffbb87f3519ce37ad6c2fda7db3009001568d91afab5247054c0.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a030cc5372fddf7e42980a2027b2600d851d0d59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
