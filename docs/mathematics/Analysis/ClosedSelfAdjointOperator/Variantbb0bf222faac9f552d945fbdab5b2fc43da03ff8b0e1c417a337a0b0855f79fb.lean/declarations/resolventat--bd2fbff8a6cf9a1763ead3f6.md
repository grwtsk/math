# ResolventAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:111980c183ca6a97fc2a333524f0bdf89534197e7f06e32ab0844de1889896f4",
  "kind": "structure",
  "lexical_name": "ResolventAt",
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
  "slug": "resolventat--bd2fbff8a6cf9a1763ead3f6",
  "source": {
    "blob": "7234174cfbd3401b914f3a2abac20eb7a9da1f5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 70,
    "path": "GRWTSK/Analysis/ClosedSelfAdjointOperator/Variantbb0bf222faac9f552d945fbdab5b2fc43da03ff8b0e1c417a337a0b0855f79fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd2fbff8a6cf9a1763ead3f6e4b3002ebce42a20e8e002106f46b48ee16e13d2",
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

Occurrence: `declaration:111980c183ca6a97fc2a333524f0bdf89534197e7f06e32ab0844de1889896f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ResolventAt (A : ClosedSelfAdjointOperator H) (z : ℂ) where
  inverse : H →L[ℂ] H
  mapsToDomain : ∀ y : H, inverse y ∈ A.toLinearPMap.domain
  right_inverse : ∀ y : H,
    A.toLinearPMap ⟨inverse y, mapsToDomain y⟩ - z • inverse y = y
  left_inverse : ∀ x : A.toLinearPMap.domain,
    inverse (A.toLinearPMap x - z • (x : H)) = (x : H)

/-- Existence of at least one compact bounded resolvent inverse. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ClosedSelfAdjointOperator/Variantbb0bf222faac9f552d945fbdab5b2fc43da03ff8b0e1c417a337a0b0855f79fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ClosedSelfAdjointOperator/Variantbb0bf222faac9f552d945fbdab5b2fc43da03ff8b0e1c417a337a0b0855f79fb.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7234174cfbd3401b914f3a2abac20eb7a9da1f5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
