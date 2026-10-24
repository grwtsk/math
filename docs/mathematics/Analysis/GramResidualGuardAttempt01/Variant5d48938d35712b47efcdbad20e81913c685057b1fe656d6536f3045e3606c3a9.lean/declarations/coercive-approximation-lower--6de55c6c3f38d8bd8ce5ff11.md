# coercive_approximation_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0425461f-a758-e829-dffd-f1b7d2ca83cc",
  "kind": "theorem",
  "lexical_name": "coercive_approximation_lower",
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
  "slug": "coercive-approximation-lower--6de55c6c3f38d8bd8ce5ff11",
  "source": {
    "blob": "8ba5bb5bf4c5713c54ab976221fd7f5553e48713",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 39,
    "path": "GRWTSK/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6de55c6c3f38d8bd8ce5ff116cf262e2a10b4560709536137a73332ded128004",
  "verification": {
    "reference": "docs/verification/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0425461f-a758-e829-dffd-f1b7d2ca83cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coercive_approximation_lower (H P : E →L[𝕜] E) (c : ℝ)
    (hmargin : ∀ u, c*‖u‖^2 ≤ P.reApplyInnerSelf u) (u : E) :
    (c-‖H-P‖)*‖u‖^2 ≤ H.reApplyInnerSelf u := by
  have h := (abs_le.mp (quadratic_difference_abs_le H P u)).1
  have hp := hmargin u
  nlinarith

/-- Hermitian/symmetric source and an independently established margin yield exact positivity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/GramResidualGuardAttempt01/Variant5d48938d35712b47efcdbad20e81913c685057b1fe656d6536f3045e3606c3a9.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ba5bb5bf4c5713c54ab976221fd7f5553e48713` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
