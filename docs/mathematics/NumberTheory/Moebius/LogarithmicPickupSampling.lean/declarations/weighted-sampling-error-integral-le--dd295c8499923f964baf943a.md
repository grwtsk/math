# weighted_sampling_error_integral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3c6e8c8-88f0-b0cd-cd76-dc6e7a17d5c2",
  "kind": "theorem",
  "lexical_name": "weighted_sampling_error_integral_le",
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
  "slug": "weighted-sampling-error-integral-le--dd295c8499923f964baf943a",
  "source": {
    "blob": "1eb0558ffdaf4ae826fea883a8c60a3e3fefdb5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 167,
    "path": "GRWTSK/NumberTheory/Moebius/LogarithmicPickupSampling.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd295c8499923f964baf943aa0918080455d88ea0cba63d874f76e48758e90a5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/LogarithmicPickupSampling.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3c6e8c8-88f0-b0cd-cd76-dc6e7a17d5c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_sampling_error_integral_le {σ : ℝ} (hσ : -1 < σ) :
    (∫ u in Ici (0 : ℝ),
      Real.exp (-σ * u) * (wholePickup u - sampledPickup u) ^ 2) ≤ 1 / (σ + 1) := by
  have he : IntegrableOn (fun u : ℝ ↦ Real.exp (-(σ + 1) * u)) (Ici 0) :=
    (integrableOn_Ici_iff_integrableOn_Ioi (by finiteness)).mpr
      (integrableOn_exp_mul_Ioi (by linarith) 0)
  calc
    _ ≤ ∫ u in Ici (0 : ℝ), Real.exp (-(σ + 1) * u) := by
      apply integral_mono_ae (weighted_sampling_error_integrable hσ) he
      filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
      exact weighted_sampling_error_le σ hu
    _ = 1 / (σ + 1) := by
      rw [integral_Ici_eq_integral_Ioi,
        integral_exp_mul_Ioi (by linarith : -(σ + 1) < 0)]
      simp only [mul_zero, Real.exp_zero, neg_div_neg_eq]

/-- The error is paid, not either complete waveform's undamped energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/LogarithmicPickupSampling.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/LogarithmicPickupSampling.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1eb0558ffdaf4ae826fea883a8c60a3e3fefdb5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
