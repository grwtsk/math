# fourierTransformCLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17050cc304bd4e3f2887175ea3d521a31d71bad705bf4df24292cb77c3899d38",
  "kind": "def",
  "lexical_name": "fourierTransformCLM",
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
  "slug": "fouriertransformclm--e3f8ebf3594e22a15efd2c97",
  "source": {
    "blob": "12bbe5a0f2ed6bfdee77c9f86bbccfaf5f0c1a1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 59,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3f8ebf3594e22a15efd2c976d85c2ad6947ae8580c6e12794f77ed48aa83724",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17050cc304bd4e3f2887175ea3d521a31d71bad705bf4df24292cb77c3899d38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fourierTransformCLM : 𝓢(V, E) →L[𝕜] 𝓢(V, E) := by
  refine mkCLM ((𝓕 : (V → E) → (V → E)) ·) ?_ ?_ ?_ ?_
  · intro f g
    simp [fourier_eq, integral_add ((fourierIntegral_convergent_iff _).mpr f.integrable)
      ((fourierIntegral_convergent_iff _).mpr g.integrable)]
  · simp [fourier_eq, smul_comm, integral_smul]
  · exact fun f ↦ contDiff_fourier (fun n _ ↦ integrable_pow_mul volume f n)
  · rintro ⟨k, n⟩
    refine ⟨Finset.range (n + integrablePower (volume : Measure V) + 1) ×ˢ Finset.range (k + 1),
      (2 * π) ^ n * (2 * n + 2) ^ k * (Finset.range (n + 1) ×ˢ Finset.range (k + 1)).card *
        2 ^ integrablePower (volume : Measure V) *
        (∫ x : V, (1 + ‖x‖) ^ (- integrablePower (volume : Measure V) : ℝ)) * 2, by positivity,
      fun f x ↦ ?_⟩
    apply (pow_mul_norm_iteratedFDeriv_fourier_le (f.smooth ⊤)
      (fun k n _hk _hn ↦ integrable_pow_mul_iteratedFDeriv _ f k n) le_top le_top x).trans
    simp only [mul_assoc]
    gcongr
    calc
    _ ≤ ∑ _ ∈ Finset.range (n + 1) ×ˢ Finset.range (k + 1),
        2 ^ integrablePower (volume : Measure V) *
          (∫ x : V, (1 + ‖x‖) ^ (- integrablePower (volume : Measure V) : ℝ)) * 2 *
          (Finset.range (n + integrablePower (volume : Measure V) + 1) ×ˢ Finset.range (k + 1)).sup
          (schwartzSeminormFamily 𝕜 V E) f := by
      gcongr with p
      apply (f.integral_pow_mul_iteratedFDeriv_le 𝕜 ..).trans
      simp only [mul_assoc, two_mul]
      gcongr
      · have : (0, p.2) ∈ Finset.range (n + integrablePower (volume : Measure V) + 1) ×ˢ
            Finset.range (k + 1) := by simp_all
        apply Seminorm.le_def.mp (Finset.le_sup (f := fun p ↦ SchwartzMap.seminorm 𝕜 p.1 p.2) this)
      · have : (p.1 + integrablePower (volume : Measure V), p.2) ∈ Finset.range
            (n + integrablePower (volume : Measure V) + 1) ×ˢ Finset.range (k + 1) := by simp_all
        apply Seminorm.le_def.mp (Finset.le_sup (f := fun p ↦ SchwartzMap.seminorm 𝕜 p.1 p.2) this)
    _ = _ := by simp [mul_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variante340b0d6b9a566a38382499ebb9d3bdc2ff99c78683fc67743586ef0e0ceb270.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12bbe5a0f2ed6bfdee77c9f86bbccfaf5f0c1a1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
