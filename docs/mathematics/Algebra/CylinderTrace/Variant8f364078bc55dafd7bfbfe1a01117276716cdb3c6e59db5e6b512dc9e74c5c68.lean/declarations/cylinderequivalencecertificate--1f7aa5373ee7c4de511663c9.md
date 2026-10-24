# CylinderEquivalenceCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0017d3d51253dfa0cc5140c4c5ffab9cd1c58b40350fe81dda8de42acd24906",
  "kind": "structure",
  "lexical_name": "CylinderEquivalenceCertificate",
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
  "slug": "cylinderequivalencecertificate--1f7aa5373ee7c4de511663c9",
  "source": {
    "blob": "5f66b8a8ceb2e06a0843602c5e028385fede5c4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 40,
    "path": "GRWTSK/Algebra/CylinderTrace/Variant8f364078bc55dafd7bfbfe1a01117276716cdb3c6e59db5e6b512dc9e74c5c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f7aa5373ee7c4de511663c946b7e024073d15e799837ec4c7cbc02f4656f8f9",
  "verification": {
    "reference": "docs/verification/Algebra/CylinderTrace/Variant8f364078bc55dafd7bfbfe1a01117276716cdb3c6e59db5e6b512dc9e74c5c68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0017d3d51253dfa0cc5140c4c5ffab9cd1c58b40350fe81dda8de42acd24906`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CylinderEquivalenceCertificate
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (traceSystem :
      ProjectiveTraceSystem boundary) where
  equivalent :
    CylinderPresentation traceSystem →
      CylinderPresentation traceSystem → Prop
  reflexive :
    Reflexive equivalent
  symmetric :
    Symmetric equivalent
  transitive :
    Transitive equivalent
  commonPullbackImpliesEquivalent :
    ∀ {left right}
      (stage : Nat)
      (left_le : left.stage ≤ stage)
      (right_le : right.stage ≤ stage),
      traceSystem.pullback
          left_le left.observable =
        traceSystem.pullback
          right_le right.observable →
      equivalent left right
  equivalentHasCommonPullback :
    ∀ {left right},
      equivalent left right →
      ∃ stage
        (left_le : left.stage ≤ stage)
        (right_le : right.stage ≤ stage),
        traceSystem.pullback
            left_le left.observable =
          traceSystem.pullback
            right_le right.observable
  traceRespects :
    ∀ {left right},
      equivalent left right →
      (finiteCrossedProductStableTrace
        (boundary.cut left.stage)).trace
          left.observable =
        (finiteCrossedProductStableTrace
          (boundary.cut right.stage)).trace
            right.observable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CylinderTrace/Variant8f364078bc55dafd7bfbfe1a01117276716cdb3c6e59db5e6b512dc9e74c5c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CylinderTrace/Variant8f364078bc55dafd7bfbfe1a01117276716cdb3c6e59db5e6b512dc9e74c5c68.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f66b8a8ceb2e06a0843602c5e028385fede5c4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
