# regularizedMass_le_norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff2f632b-130c-84d0-8075-f944d4bb42f2",
  "kind": "theorem",
  "lexical_name": "regularizedMass_le_norm_sq",
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
  "slug": "regularizedmass-le-norm-sq--d5da1209f8c2ed4d13834905",
  "source": {
    "blob": "3207ffb3a95be936792efce10d5ef7423c2a718d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 704,
    "line": 686,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationStatements/Variant4a8e5c278c1c8bf355810c5bd43905ef766d7cb30f940a972449c44abfd70d27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5da1209f8c2ed4d13834905bd97695e4522d987314e2a6fe778800276ba3e50",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceResolventTruncationStatements/Variant4a8e5c278c1c8bf355810c5bd43905ef766d7cb30f940a972449c44abfd70d27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff2f632b-130c-84d0-8075-f944d4bb42f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 686–704.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem regularizedMass_le_norm_sq
    (S : H →L[ℂ] H) (hS : S.IsPositive) (α : ℝ) (hα : 0 < α) (r : H) :
    regularizedMass S α r ≤ ‖r‖ ^ 2 := by
  have hinner : (inner ℂ r (positiveResolvent S α r)).re ≤
      ‖r‖ ^ 2 * (1 / α) := by
    calc
      _ ≤ ‖inner ℂ r (positiveResolvent S α r)‖ := Complex.re_le_norm _
      _ ≤ ‖r‖ * ‖positiveResolvent S α r‖ := norm_inner_le_norm _ _
      _ ≤ ‖r‖ * (‖positiveResolvent S α‖ * ‖r‖) :=
        mul_le_mul_of_nonneg_left ((positiveResolvent S α).le_opNorm r) (norm_nonneg _)
      _ ≤ ‖r‖ * ((1 / α) * ‖r‖) := by
        gcongr
        exact positiveResolvent_norm_le S hS α hα
      _ = _ := by ring
  calc
    _ ≤ α * (‖r‖ ^ 2 * (1 / α)) := mul_le_mul_of_nonneg_left hinner hα.le
    _ = _ := by field_simp

/-- The original reference has squared norm one half, bounding its actual directional mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceResolventTruncationStatements/Variant4a8e5c278c1c8bf355810c5bd43905ef766d7cb30f940a972449c44abfd70d27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationStatements/Variant4a8e5c278c1c8bf355810c5bd43905ef766d7cb30f940a972449c44abfd70d27.lean#L686).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3207ffb3a95be936792efce10d5ef7423c2a718d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
