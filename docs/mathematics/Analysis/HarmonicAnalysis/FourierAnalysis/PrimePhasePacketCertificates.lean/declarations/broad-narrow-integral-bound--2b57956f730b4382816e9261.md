# broad_narrow_integral_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "067ed635f13b06de091f788f403bba214f5a5dce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/Analysis/Fourier/PrimePhasePacketCertificates.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ed8c112-9a26-237a-1438-52da2e382fca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90459d57-ef59-2273-bb24-58450382a416",
  "kind": "theorem",
  "lexical_name": "broad_narrow_integral_bound",
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
  "slug": "broad-narrow-integral-bound--2b57956f730b4382816e9261",
  "source": {
    "blob": "067ed635f13b06de091f788f403bba214f5a5dce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 48,
    "path": "GRWTSK/Analysis/Fourier/PrimePhasePacketCertificates.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b57956f730b4382816e926108db3645e4041ef3b238f4e50fe75f78091e1223",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90459d57-ef59-2273-bb24-58450382a416`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem broad_narrow_integral_bound (B : Finset ℕ) (κ : ℝ) (F : ℝ → ℂ)
    (hweighted : Integrable (density B F)) (hsource : Integrable (fun ξ => ‖F ξ‖ ^ 2)) :
    packetEnergy B F ≤ amplification B κ * sourceSpectralEnergy F + narrowEnergy B κ F := by
  have hpoint : ∀ᵐ ξ ∂volume.restrict (broadSet B κ),
      density B F ξ ≤ amplification B κ * ‖F ξ‖ ^ 2 := by
    filter_upwards [ae_restrict_mem (broadSet_measurable B κ)] with ξ hξ
    exact mul_le_mul_of_nonneg_right (PPNC.broad_multiplier_bound B κ ξ hξ) (sq_nonneg _)
  have hint : (∫ ξ in broadSet B κ, density B F ξ) ≤
      amplification B κ * ∫ ξ, ‖F ξ‖ ^ 2 := by
    calc
      (∫ ξ in broadSet B κ, density B F ξ) ≤
          ∫ ξ in broadSet B κ, amplification B κ * ‖F ξ‖ ^ 2 :=
        integral_mono_ae hweighted.restrict (hsource.const_mul _).restrict hpoint
      _ = amplification B κ * ∫ ξ in broadSet B κ, ‖F ξ‖ ^ 2 := integral_const_mul _ _
      _ ≤ amplification B κ * ∫ ξ, ‖F ξ‖ ^ 2 := by
        apply mul_le_mul_of_nonneg_left _ (Real.exp_pos _).le
        exact integral_mono_measure Measure.restrict_le_self
          (Filter.Eventually.of_forall (fun ξ => sq_nonneg _)) hsource
  rw [spectral_split B κ F hweighted]
  have hscale : 0 ≤ (2 * Real.pi)⁻¹ := by positivity
  have hscaled := mul_le_mul_of_nonneg_left hint hscale
  have hfinal : (2 * Real.pi)⁻¹ * (∫ ξ in broadSet B κ, density B F ξ) ≤
      amplification B κ * sourceSpectralEnergy F := by
    simpa only [sourceSpectralEnergy, mul_left_comm] using hscaled
  linarith

/-- Mass-bearing chart data with exact packet identity and unchanged block multiplier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhasePacketCertificates.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/PrimePhasePacketCertificates.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `067ed635f13b06de091f788f403bba214f5a5dce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
