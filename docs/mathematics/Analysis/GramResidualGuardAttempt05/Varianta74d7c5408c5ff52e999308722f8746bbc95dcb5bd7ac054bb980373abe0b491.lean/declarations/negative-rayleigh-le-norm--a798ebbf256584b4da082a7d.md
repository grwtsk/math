# negative_rayleigh_le_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1e4e4d2-7614-7b8f-67e1-555c36c8491d",
  "kind": "theorem",
  "lexical_name": "negative_rayleigh_le_norm",
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
  "slug": "negative-rayleigh-le-norm--a798ebbf256584b4da082a7d",
  "source": {
    "blob": "4f21b4b1e8522af767272ee9515d5195fb6a388d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 107,
    "path": "GRWTSK/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a798ebbf256584b4da082a7d664b60d7a1f405f816c298f2c26b125e295f67c9",
  "verification": {
    "reference": "docs/verification/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1e4e4d2-7614-7b8f-67e1-555c36c8491d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem negative_rayleigh_le_norm (H P : E →L[𝕜] E) (hP : P.IsPositive) (u : E) :
    -H.rayleighQuotient u ≤ ‖H-P‖ := by
  have hd := (H-P).rayleighQuotient_le_norm u
  have he : (H-P).rayleighQuotient u=H.rayleighQuotient u-P.rayleighQuotient u := by
    simp [ContinuousLinearMap.rayleighQuotient,ContinuousLinearMap.reApplyInnerSelf,
      inner_sub_left,sub_div]
  rw [he] at hd
  have hp : 0 ≤ P.rayleighQuotient u := div_nonneg (hP.re_inner_nonneg_left u) (sq_nonneg _)
  have hl := (abs_le.mp hd).1
  linarith

/-- Every negative Rayleigh value gives a rigorous lower half of the distance-to-PSD formula. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f21b4b1e8522af767272ee9515d5195fb6a388d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
