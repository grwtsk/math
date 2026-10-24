# LogOfAnalyticFunction'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5226c225-428c-c8c0-7323-e9d2c94231d9",
  "kind": "theorem",
  "lexical_name": "LogOfAnalyticFunction'",
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
  "slug": "logofanalyticfunction--945bc2dcf20f8ab704f836a3",
  "source": {
    "blob": "61d2b21c5e2eb2ba1b8f51b31fde3207433917e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 191,
    "path": "GRWTSK/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:945bc2dcf20f8ab704f836a3099f7228988794382e70d68b0331fa1fdeebc403",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5226c225-428c-c8c0-7323-e9d2c94231d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LogOfAnalyticFunction' {r' r R : ℝ} {B : ℂ → ℂ}
    (r'_pos : 0 < r') (r'_lt_r : r' < r) (r_lt_R : r < R)
    (BanalyticOnNhdOfDR : AnalyticOnNhd ℂ B (Metric.closedBall (0 : ℂ) R))
    (Bnonzero : ∀ z ∈ Metric.closedBall (0 : ℂ) r, B z ≠ 0) :
    ∃ (J_B : ℂ → ℂ), (AnalyticOnNhd ℂ J_B (Metric.ball 0 r)) ∧
      (J_B 0 = 0) ∧
      (∀ z ∈ Metric.closedBall 0 r', (deriv J_B) z = (deriv B) z / (B z)) ∧
      (∀ z ∈ Metric.ball 0 r, Real.log ‖B z‖ - Real.log ‖B 0‖ = (J_B z).re) := by
  have BanalyticOnNhdOfDr : AnalyticOnNhd ℂ B (Metric.closedBall (0 : ℂ) r) := BanalyticOnNhdOfDR.mono (Metric.closedBall_subset_closedBall r_lt_R.le)
  exact LogOfAnalyticFunction r'_pos r'_lt_r BanalyticOnNhdOfDr Bnonzero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/StrongPNTPrefix/Varianta82a130572f01bc35054a80ceec703788368ba1bdfbe27bd274cb29a0b073fa8.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61d2b21c5e2eb2ba1b8f51b31fde3207433917e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
