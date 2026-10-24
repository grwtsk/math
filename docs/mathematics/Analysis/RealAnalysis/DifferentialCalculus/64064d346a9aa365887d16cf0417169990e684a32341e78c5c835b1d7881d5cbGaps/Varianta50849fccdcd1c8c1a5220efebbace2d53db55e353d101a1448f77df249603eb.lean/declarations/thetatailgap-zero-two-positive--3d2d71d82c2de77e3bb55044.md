# thetaTailGap_zero_two_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9364c8a-6521-4d97-dd82-6752bc639173",
  "kind": "theorem",
  "lexical_name": "thetaTailGap_zero_two_positive",
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
  "slug": "thetatailgap-zero-two-positive--3d2d71d82c2de77e3bb55044",
  "source": {
    "blob": "bb5e6bc5b0f292762699482a9b88e32e218c9362",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d2d71d82c2de77e3bb550443f1db17f645ffef57c55194f058b388296c32f5c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9364c8a-6521-4d97-dd82-6752bc639173`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTailGap_zero_two_positive {t : ℝ} (ht : 0 ≤ t) :
    0 < thetaTailGap 0 2 t := by
  rw [thetaTailGap_zero_two_integral ht]
  apply (setIntegral_pos_iff_support_of_nonneg_ae ?_
    (zero_two_gap_integrand_integrable ht)).mpr
  · have hpos : (0 : ENNReal) < volume (Ioo (t + 1) (t + 2)) := by simp
    apply hpos.trans_le (measure_mono ?_)
    intro u hu
    have htu : t < u := by have := hu.1; linarith
    exact ⟨(mul_pos (sub_pos.mpr htu) (thetaPhi_logSlope_cross_positive ht htu)).ne', htu.le⟩
  · filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
    exact mul_nonneg (sub_nonneg.mpr hu) (thetaPhi_logSlope_cross_nonnegative ht hu)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/64064d346a9aa365887d16cf0417169990e684a32341e78c5c835b1d7881d5cbGaps/Varianta50849fccdcd1c8c1a5220efebbace2d53db55e353d101a1448f77df249603eb.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb5e6bc5b0f292762699482a9b88e32e218c9362` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
