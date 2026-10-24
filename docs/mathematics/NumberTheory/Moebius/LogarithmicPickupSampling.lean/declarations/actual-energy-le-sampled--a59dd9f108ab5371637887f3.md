# actual_energy_le_sampled

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e35b22f3-3fc4-4dac-19f6-4c0d485ae0c1",
  "kind": "theorem",
  "lexical_name": "actual_energy_le_sampled",
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
  "slug": "actual-energy-le-sampled--a59dd9f108ab5371637887f3",
  "source": {
    "blob": "1eb0558ffdaf4ae826fea883a8c60a3e3fefdb5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 235,
    "path": "GRWTSK/NumberTheory/Moebius/LogarithmicPickupSampling.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a59dd9f108ab5371637887f348698dd6e8b635cf454bc251f25e08f0792f5dad",
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

Occurrence: `result:e35b22f3-3fc4-4dac-19f6-4c0d485ae0c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_energy_le_sampled {σ : ℝ} (hσ : -1 < σ)
    (hs : IntegrableOn (fun u : ℝ ↦ Real.exp (-σ * u) * sampledPickup u ^ 2) (Ici 0)) :
    (∫ u in Ici (0 : ℝ), Real.exp (-σ * u) * wholePickup u ^ 2) ≤
      2 * (∫ u in Ici (0 : ℝ), Real.exp (-σ * u) * sampledPickup u ^ 2) +
        2 / (σ + 1) := by
  have he := weighted_sampling_error_integrable hσ
  have hw := (weighted_integrable_iff_sampled hσ).mpr hs
  have hb := integral_mono_ae hw ((hs.const_mul 2).add (he.const_mul 2))
    (ae_of_all _ (fun u ↦ (weighted_square_comparisons σ u).1))
  dsimp only [Pi.add_apply] at hb
  rw [integral_add (hs.const_mul 2) (he.const_mul 2), integral_const_mul,
    integral_const_mul] at hb
  apply hb.trans
  apply add_le_add le_rfl
  simpa only [mul_one_div] using
    (mul_le_mul_of_nonneg_left (weighted_sampling_error_integral_le hσ)
      (by norm_num : (0 : ℝ) ≤ 2))

/-- The converse keeps the same paid interpolation cost. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/LogarithmicPickupSampling.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/LogarithmicPickupSampling.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1eb0558ffdaf4ae826fea883a8c60a3e3fefdb5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
