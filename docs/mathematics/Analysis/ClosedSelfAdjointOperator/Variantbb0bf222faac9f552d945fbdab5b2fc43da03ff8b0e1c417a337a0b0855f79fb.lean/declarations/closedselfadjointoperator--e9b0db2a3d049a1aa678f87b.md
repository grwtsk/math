# ClosedSelfAdjointOperator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76ba4d4227b59aabe7a8075d42a5a283567d904cc64c1999ab3b403c9f7314ca",
  "kind": "structure",
  "lexical_name": "ClosedSelfAdjointOperator",
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
  "slug": "closedselfadjointoperator--e9b0db2a3d049a1aa678f87b",
  "source": {
    "blob": "7234174cfbd3401b914f3a2abac20eb7a9da1f5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 38,
    "path": "GRWTSK/Analysis/ClosedSelfAdjointOperator/Variantbb0bf222faac9f552d945fbdab5b2fc43da03ff8b0e1c417a337a0b0855f79fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9b0db2a3d049a1aa678f87b8ee3f6cb08eb23ed2315a24f99ba1294d28d3fec",
  "verification": {
    "reference": "docs/verification/Analysis/ClosedSelfAdjointOperator/Variantbb0bf222faac9f552d945fbdab5b2fc43da03ff8b0e1c417a337a0b0855f79fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76ba4d4227b59aabe7a8075d42a5a283567d904cc64c1999ab3b403c9f7314ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ClosedSelfAdjointOperator (H : Type*)
    [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H] where
  toLinearPMap : H →ₗ.[ℂ] H
  selfAdjoint : IsSelfAdjoint toLinearPMap

namespace ClosedSelfAdjointOperator

variable {H : Type*}
variable [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]

/-- Self-adjointness supplies a dense operator domain in the pinned API. -/
@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ClosedSelfAdjointOperator/Variantbb0bf222faac9f552d945fbdab5b2fc43da03ff8b0e1c417a337a0b0855f79fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ClosedSelfAdjointOperator/Variantbb0bf222faac9f552d945fbdab5b2fc43da03ff8b0e1c417a337a0b0855f79fb.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7234174cfbd3401b914f3a2abac20eb7a9da1f5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
