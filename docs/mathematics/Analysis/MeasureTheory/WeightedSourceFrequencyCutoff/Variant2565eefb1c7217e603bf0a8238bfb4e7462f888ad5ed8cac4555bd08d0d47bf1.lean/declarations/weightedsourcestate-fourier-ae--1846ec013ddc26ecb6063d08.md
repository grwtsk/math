# weightedSourceState_fourier_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a7a0ad6-0f2f-a476-229d-b4567a4a786c",
  "kind": "theorem",
  "lexical_name": "weightedSourceState_fourier_ae",
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
  "slug": "weightedsourcestate-fourier-ae--1846ec013ddc26ecb6063d08",
  "source": {
    "blob": "c32a6a8c244ef48517e13107784089fb0db67484",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 107,
    "path": "GRWTSK/Analysis/MeasureTheory/WeightedSourceFrequencyCutoff/Variant2565eefb1c7217e603bf0a8238bfb4e7462f888ad5ed8cac4555bd08d0d47bf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1846ec013ddc26ecb6063d080f7d3bb44a2d08225c7e00d1eba1d8940dc0caf9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/WeightedSourceFrequencyCutoff/Variant2565eefb1c7217e603bf0a8238bfb4e7462f888ad5ed8cac4555bd08d0d47bf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a7a0ad6-0f2f-a476-229d-b4567a4a786c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedSourceState_fourier_ae {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    ((𝓕 (weightedSourceState A t hA) : ComplexSourceL2) : ℝ → ℂ) =ᵐ[volume]
      𝓕 (fun x : ℝ ↦ (sourceVector A t x : ℂ)) := by
  have hc := fourier_coe_ae _ (weightedSourceState_integrable hA t)
  have he : 𝓕 (weightedSourceState A t hA : ℝ → ℂ) =
      𝓕 (fun x : ℝ ↦ (sourceVector A t x : ℂ)) := by
    funext ξ
    rw [Real.fourier_real_eq_integral_exp_smul, Real.fourier_real_eq_integral_exp_smul]
    apply integral_congr_ae
    filter_upwards [weightedSourceState_coe_ae hA t] with x hx
    rw [hx]
  exact hc.trans (ae_of_all _ fun ξ ↦ congrFun he ξ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/WeightedSourceFrequencyCutoff/Variant2565eefb1c7217e603bf0a8238bfb4e7462f888ad5ed8cac4555bd08d0d47bf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/WeightedSourceFrequencyCutoff/Variant2565eefb1c7217e603bf0a8238bfb4e7462f888ad5ed8cac4555bd08d0d47bf1.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c32a6a8c244ef48517e13107784089fb0db67484` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
