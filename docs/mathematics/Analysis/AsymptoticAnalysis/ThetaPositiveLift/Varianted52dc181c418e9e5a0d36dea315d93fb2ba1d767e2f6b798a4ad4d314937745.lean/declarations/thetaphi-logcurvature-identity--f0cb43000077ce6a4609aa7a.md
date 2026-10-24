# thetaPhi_logCurvature_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98df978f-f9b2-78c6-ffb4-1ba39ecd0a4c",
  "kind": "theorem",
  "lexical_name": "thetaPhi_logCurvature_identity",
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
  "slug": "thetaphi-logcurvature-identity--f0cb43000077ce6a4609aa7a",
  "source": {
    "blob": "8a751d462342e92a910edc8636fcd48f69f93bbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 224,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0cb43000077ce6a4609aa7a8acfb49fac0685c744036c92d3255207694b1c22",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98df978f-f9b2-78c6-ffb4-1ba39ecd0a4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhi_logCurvature_identity {t : ℝ} (ht : 0 ≤ t) :
    thetaPhi t * thetaPhiD2 t - (thetaPhiD1 t) ^ 2 =
      (thetaPhi t) ^ 2 * ((∑' m, thetaModeWeight m t * thetaModeCurvature m t) +
        thetaModeVariance t) := by
  have h := weighted_curvature_variance_identity (thetaModeWeight_summable t)
    (thetaModeWeight_score_summable ht) (thetaModeWeight_score_sq_summable ht)
    (thetaModeWeight_curvature_summable ht) (thetaModeWeight_sum_one ht)
  have hsum : (∑' m, thetaModeWeight m t * ((thetaModeScore m t) ^ 2 + thetaModeCurvature m t)) =
      thetaPhiD2 t / thetaPhi t := by
    unfold thetaPhiD2
    rw [← tsum_div_const]
    apply tsum_congr
    intro m
    unfold thetaModeWeight
    ring
  change _ - (thetaModeMean t) ^ 2 = _ + thetaModeVariance t at h
  rw [hsum, thetaModeMean_eq_div_D1] at h
  calc
    _ = (thetaPhi t) ^ 2 * (thetaPhiD2 t / thetaPhi t - (thetaPhiD1 t / thetaPhi t) ^ 2) := by
      field_simp [(thetaPhi_positive t ht).ne']
    _ = _ := by rw [h]

/-- The mean mode curvature is bounded above by `-16*A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a751d462342e92a910edc8636fcd48f69f93bbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
