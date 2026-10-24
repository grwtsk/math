# paperFT_autocorr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e40b784a-6cef-0c1d-0896-9051573a92da",
  "kind": "theorem",
  "lexical_name": "paperFT_autocorr",
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
  "slug": "paperft-autocorr--080dcca0a51aef20625eae17",
  "source": {
    "blob": "58cab2cabe3d30794ee6e204b4ff6fa1c45a683d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 214,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Fourier/Variantbd04de1e32aeec9e847f63d723aa52a7b71f933c5510088c755c2f567ae18980.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:080dcca0a51aef20625eae172a35b4c2cbbd7d7c3333d6ea58e7d0b8d0d4cb66",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Fourier/Variantbd04de1e32aeec9e847f63d723aa52a7b71f933c5510088c755c2f567ae18980.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e40b784a-6cef-0c1d-0896-9051573a92da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paperFT_autocorr (hv : ∀ u, v (-u) = v u) (hc : Continuous v) (hs : HasCompactSupport v)
    (r : ℝ) :
    paperFT (fun y => (Params.autocorr v y : ℂ)) r = (paperFT (fun u => (v u : ℂ)) r) ^ 2 := by
  have hsC : HasCompactSupport (fun u => (v u : ℂ)) := hs.comp_left Complex.ofReal_zero
  have hcC : Continuous (fun u => (v u : ℂ)) := Complex.continuous_ofReal.comp hc
  have hiC : Integrable (fun u => (v u : ℂ)) := hcC.integrable_of_hasCompactSupport hsC
  rw [ofReal_autocorr_eq_convolution hv, paperFT_ofReal_eq_fourier, paperFT_ofReal_eq_fourier,
    Real.fourier_mul_convolution_eq hiC hiC, sq]

/-! ## Fourier inversion in the paper's convention, cosine form -/

/-- If `A : ℝ → ℝ` is continuous and integrable and `h_A(r) = G(r)` (`r ∈ ℝ`) with `G` real and
integrable, then `∫ G(r) cos(ry) dr = 2π A(y)`.  (Inversion `A = 𝓕⁻ 𝓕 A`, the substitution
`r = −2πξ`, and real parts; the sine part drops because `A` is real.)  This is the form in which
the paper uses "Fourier inversion" for `A_φ` [prop:trace, P-part] and `g` [eq:Phi2FT]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Fourier/Variantbd04de1e32aeec9e847f63d723aa52a7b71f933c5510088c755c2f567ae18980.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Fourier/Variantbd04de1e32aeec9e847f63d723aa52a7b71f933c5510088c755c2f567ae18980.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58cab2cabe3d30794ee6e204b4ff6fa1c45a683d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
