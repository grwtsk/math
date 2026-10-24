# verticalLineMass_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66357bd5-12d8-00f4-713f-6fa3bb0efd7f",
  "kind": "theorem",
  "lexical_name": "verticalLineMass_antitone",
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
  "slug": "verticallinemass-antitone--56cd5dfbc85be2a896b5f22b",
  "source": {
    "blob": "95ddb9b1b87d88bbf47cee2e1216b5b2e1dc716d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 27,
    "path": "GRWTSK/NumberTheory/Moebius/VerticalLineMonotonicity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56cd5dfbc85be2a896b5f22b7029bb428f269405350e8459b6134c13d3aa4f12",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/VerticalLineMonotonicity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66357bd5-12d8-00f4-713f-6fa3bb0efd7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verticalLineMass_antitone {σ τ T : ℝ} (hστ : σ ≤ τ) (hT : 0 ≤ T) :
    verticalLineMass τ T ≤ verticalLineMass σ T := by
  rw [verticalLineMass_eq_weightedWindow hT,
    verticalLineMass_eq_weightedWindow hT]
  have hτc : Continuous (fun u : ℝ =>
      Real.exp (-2 * τ * u) * wholePickup u ^ 2) :=
    (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      (wholePickup_continuous.pow 2)
  have hσc : Continuous (fun u : ℝ =>
      Real.exp (-2 * σ * u) * wholePickup u ^ 2) :=
    (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      (wholePickup_continuous.pow 2)
  apply setIntegral_mono_on hτc.integrableOn_Icc hσc.integrableOn_Icc
    measurableSet_Icc
  intro u hu
  apply mul_le_mul_of_nonneg_right _ (sq_nonneg (wholePickup u))
  exact Real.exp_le_exp.mpr (by nlinarith [hu.1])

/-- Only the reciprocal lines at and left of the boundary `σ = 1/2`.
Each line has its own constant, but that constant is uniform in the horizon. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/VerticalLineMonotonicity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/VerticalLineMonotonicity.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95ddb9b1b87d88bbf47cee2e1216b5b2e1dc716d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
