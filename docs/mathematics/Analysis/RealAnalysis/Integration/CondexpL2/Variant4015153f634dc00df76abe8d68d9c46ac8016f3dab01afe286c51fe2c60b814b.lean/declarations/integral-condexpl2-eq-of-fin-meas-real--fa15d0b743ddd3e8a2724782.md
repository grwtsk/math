# integral_condexpL2_eq_of_fin_meas_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:289aff3b-6ec1-752a-d5ea-1aa1a75431dc",
  "kind": "theorem",
  "lexical_name": "integral_condexpL2_eq_of_fin_meas_real",
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
  "slug": "integral-condexpl2-eq-of-fin-meas-real--fa15d0b743ddd3e8a2724782",
  "source": {
    "blob": "93c814ed467e1eb8811ab1a1422a6fe989ad66de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 159,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa15d0b743ddd3e8a2724782b2fe1c1067e1c5eb743c63db26ce55353e583d09",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:289aff3b-6ec1-752a-d5ea-1aa1a75431dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_condexpL2_eq_of_fin_meas_real (f : Lp 𝕜 2 μ) (hs : MeasurableSet[m] s)
    (hμs : μ s ≠ ∞) : ∫ x in s, (condexpL2 𝕜 𝕜 hm f : α → 𝕜) x ∂μ = ∫ x in s, f x ∂μ := by
  rw [← L2.inner_indicatorConstLp_one (𝕜 := 𝕜) (hm s hs) hμs f]
  have h_eq_inner : ∫ x in s, (condexpL2 𝕜 𝕜 hm f : α → 𝕜) x ∂μ =
      inner (indicatorConstLp 2 (hm s hs) hμs (1 : 𝕜)) (condexpL2 𝕜 𝕜 hm f) := by
    rw [L2.inner_indicatorConstLp_one (hm s hs) hμs]
  rw [h_eq_inner, ← inner_condexpL2_left_eq_right, condexpL2_indicator_of_measurable hm hs hμs]
#align measure_theory.integral_condexp_L2_eq_of_fin_meas_real MeasureTheory.integral_condexpL2_eq_of_fin_meas_real

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93c814ed467e1eb8811ab1a1422a6fe989ad66de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
