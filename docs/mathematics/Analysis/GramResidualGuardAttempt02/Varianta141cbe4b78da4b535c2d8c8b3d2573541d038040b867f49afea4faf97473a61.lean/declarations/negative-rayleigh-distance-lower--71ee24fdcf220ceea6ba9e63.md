# negative_rayleigh_distance_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1605291-df3b-c17e-775c-32dee31db45c",
  "kind": "theorem",
  "lexical_name": "negative_rayleigh_distance_lower",
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
  "slug": "negative-rayleigh-distance-lower--71ee24fdcf220ceea6ba9e63",
  "source": {
    "blob": "459ffcc01c55134447a189e118bf2e977b39099c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 111,
    "path": "GRWTSK/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71ee24fdcf220ceea6ba9e63bacc0f61f43da135e457b785502a8ecf8850e432",
  "verification": {
    "reference": "docs/verification/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1605291-df3b-c17e-775c-32dee31db45c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negative_rayleigh_distance_lower (H : E →L[𝕜] E) (u : E) :
    max 0 (-H.rayleighQuotient u) ≤ positiveDistance H := by
  unfold positiveDistance
  apply (Metric.le_infDist (s:={P : E →L[𝕜] E | P.IsPositive})
    ⟨0,ContinuousLinearMap.isPositive_zero⟩).mpr
  intro P hP
  rw [dist_eq_norm]
  exact max_le (norm_nonneg _) (negative_rayleigh_le_norm H P hP u)

/-- Distance zero means positivity only for the fixed Hermitian/symmetric source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/GramResidualGuardAttempt02/Varianta141cbe4b78da4b535c2d8c8b3d2573541d038040b867f49afea4faf97473a61.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `459ffcc01c55134447a189e118bf2e977b39099c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
