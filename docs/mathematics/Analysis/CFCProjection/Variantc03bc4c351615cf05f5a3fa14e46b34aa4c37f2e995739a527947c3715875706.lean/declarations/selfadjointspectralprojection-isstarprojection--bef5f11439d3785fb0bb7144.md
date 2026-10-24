# selfAdjointSpectralProjection_isStarProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cbc87b7-0c38-6b5d-c7ba-1c287ad71a0c",
  "kind": "theorem",
  "lexical_name": "selfAdjointSpectralProjection_isStarProjection",
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
  "slug": "selfadjointspectralprojection-isstarprojection--bef5f11439d3785fb0bb7144",
  "source": {
    "blob": "3aa98bcf08046d2fb29566b8e364ca232f95d77a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 217,
    "path": "GRWTSK/Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bef5f11439d3785fb0bb7144aa5dca2d9a0f7fc6363895fe437c6504cccd46eb",
  "verification": {
    "reference": "docs/verification/Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cbc87b7-0c38-6b5d-c7ba-1c287ad71a0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selfAdjointSpectralProjection_isStarProjection
    (A : H →L[ℂ] H) (hA : IsSelfAdjoint A)
    (U : Set (spectrum ℂ A)) (hU : IsClopen U) :
    IsStarProjection (selfAdjointSpectralProjection A hA U hU) :=
  cfcSpectralProjection_isStarProjection A hA.isStarNormal U hU

end Surface.Core.CFCProjection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CFCProjection/Variantc03bc4c351615cf05f5a3fa14e46b34aa4c37f2e995739a527947c3715875706.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3aa98bcf08046d2fb29566b8e364ca232f95d77a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
