# paperFT_autocorr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41ef273659adeaf754c97c5613253e7bfe5be01f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 206,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82ce41da-7646-21bc-6f10-9a493ce51d35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08c56eec-9bae-efab-628f-bf0255f5e863",
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
  "slug": "paperft-autocorr--436a8bed2d655aa61c3983a5",
  "source": {
    "blob": "41ef273659adeaf754c97c5613253e7bfe5be01f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 206,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:436a8bed2d655aa61c3983a59904178ffc2251b0351aed8166d9962dec13dd9b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08c56eec-9bae-efab-628f-bf0255f5e863`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–220.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Fourier/Variant712909d460cf675b2944d99768775f852a691e58f7f2ad71369d7c7dc1aaeed9.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41ef273659adeaf754c97c5613253e7bfe5be01f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
