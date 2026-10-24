# AnalyticAt.hasFPowerSeriesAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d7daf2f-8f35-85b3-d69d-b917c336460c",
  "kind": "lemma",
  "lexical_name": "AnalyticAt.hasFPowerSeriesAt",
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
  "slug": "analyticat-hasfpowerseriesat--8dcf7ad224fd50f686e0f468",
  "source": {
    "blob": "8aea979733809ca2cfcb33ff332f2d624cb98da5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 347,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantf5ee985d843f2874bbe87e141f72d93c12bd888c38fd2478f40458fc65c4d459.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dcf7ad224fd50f686e0f468bebc8615965541fa42e0d0f6bea73d2df895b001",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantf5ee985d843f2874bbe87e141f72d93c12bd888c38fd2478f40458fc65c4d459.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d7daf2f-8f35-85b3-d69d-b917c336460c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AnalyticAt.hasFPowerSeriesAt {𝕜 : Type*} [NontriviallyNormedField 𝕜] [CompleteSpace 𝕜]
    [CharZero 𝕜] {f : 𝕜 → 𝕜} {x : 𝕜} (h : AnalyticAt 𝕜 f x) :
    HasFPowerSeriesAt f
      (FormalMultilinearSeries.ofScalars 𝕜 (fun n ↦ iteratedDeriv n f x / n.factorial)) x := by
  obtain ⟨p, hp⟩ := h
  convert! hp
  obtain ⟨r, hpr⟩ := hp
  ext n
  have h_fact_smul := hpr.factorial_smul 1
  simp only [FormalMultilinearSeries.apply_eq_prod_smul_coeff, Finset.prod_const, Finset.card_univ,
    Fintype.card_fin, smul_eq_mul, nsmul_eq_mul, one_pow, one_mul] at h_fact_smul
  simp only [FormalMultilinearSeries.apply_eq_prod_smul_coeff,
    FormalMultilinearSeries.coeff_ofScalars, smul_eq_mul, mul_eq_mul_left_iff]
  left
  rw [div_eq_iff, mul_comm, h_fact_smul, ← iteratedDeriv_eq_iteratedFDeriv]
  norm_cast
  positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantf5ee985d843f2874bbe87e141f72d93c12bd888c38fd2478f40458fc65c4d459.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantf5ee985d843f2874bbe87e141f72d93c12bd888c38fd2478f40458fc65c4d459.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aea979733809ca2cfcb33ff332f2d624cb98da5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
