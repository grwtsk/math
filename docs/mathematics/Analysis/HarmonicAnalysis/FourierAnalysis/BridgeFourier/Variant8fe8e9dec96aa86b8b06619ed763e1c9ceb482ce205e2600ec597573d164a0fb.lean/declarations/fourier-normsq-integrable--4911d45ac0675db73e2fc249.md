# fourier_normSq_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3722e5c1-9c84-160e-ff79-443f8ab55c41",
  "kind": "theorem",
  "lexical_name": "fourier_normSq_integrable",
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
  "slug": "fourier-normsq-integrable--4911d45ac0675db73e2fc249",
  "source": {
    "blob": "b2d61f9436742e686f967b23ce7686daf323e416",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 166,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4911d45ac0675db73e2fc249e873471ab0ced084a8025a2245ce57a9ef194b78",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3722e5c1-9c84-160e-ff79-443f8ab55c41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourier_normSq_integrable (f : ℝ → ℝ) (hf : Integrable f)
    (hd : Differentiable ℝ f) (hdi : Integrable (deriv f)) :
    Integrable (fun ξ ↦ Complex.normSq (sourceFourier f ξ)) := by
  have hm : AEStronglyMeasurable (fun ξ ↦ Complex.normSq (sourceFourier f ξ)) volume :=
    (Complex.continuous_normSq.comp (sourceFourier_continuous hf)).aestronglyMeasurable
  apply (integrable_inv_one_add_sq.const_mul
    ((∫ x, ‖f x‖) ^ 2 + (∫ x, ‖deriv f x‖) ^ 2)).mono' hm
  filter_upwards [] with ξ
  rw [Real.norm_eq_abs, abs_of_nonneg (Complex.normSq_nonneg _),
    Complex.normSq_eq_norm_sq, ← div_eq_mul_inv]
  apply (le_div_iff₀ (by positivity : 0 < 1 + ξ ^ 2)).2
  have hn := norm_nonneg (sourceFourier f ξ)
  have hb := sourceFourier_norm_le f ξ
  have hd := sourceFourier_frequency_bound f hf hd hdi ξ
  have hb0 : 0 ≤ ∫ x, ‖f x‖ := integral_nonneg (fun x ↦ norm_nonneg _)
  have hd0 : 0 ≤ ∫ x, ‖deriv f x‖ := integral_nonneg (fun x ↦ norm_nonneg _)
  have hb2 := (sq_le_sq₀ hn hb0).2 hb
  have hd2 := (sq_le_sq₀ (mul_nonneg (abs_nonneg ξ) hn) hd0).2 hd
  simp only [mul_pow, sq_abs] at hd2
  nlinarith

/-- The derivative of the actual normalized test is integrable, not merely totalized. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/BridgeFourier/Variant8fe8e9dec96aa86b8b06619ed763e1c9ceb482ce205e2600ec597573d164a0fb.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2d61f9436742e686f967b23ce7686daf323e416` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
