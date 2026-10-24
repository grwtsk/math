# MatchesFiniteCumulantPrefix4

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:980bed65b7d745393356064918fb6f5926775c74a7dcbdc69d0c54dd5a78c1e3",
  "kind": "structure",
  "lexical_name": "MatchesFiniteCumulantPrefix4",
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
  "slug": "matchesfinitecumulantprefix4--b298501d7b57151182f5c9c0",
  "source": {
    "blob": "4f4246f65869281ae397818cd305ad1ff084e4d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 206,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant4563a9c7c907c8fdf3a72f0f2f2d6fb6bc322b98f0f3d4937da5416d89aeef03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b298501d7b57151182f5c9c06e7274cfff80028be46ee105f30bb04e0f2c9ac5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant4563a9c7c907c8fdf3a72f0f2f2d6fb6bc322b98f0f3d4937da5416d89aeef03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:980bed65b7d745393356064918fb6f5926775c74a7dcbdc69d0c54dd5a78c1e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MatchesFiniteCumulantPrefix4
    (theta : E)
    (κ : DirectionCumulantFamily E ℝ) : Prop where
  order0 :
    ∀ directions : Fin 0 → E,
      κ 0 directions = 0
  order1 :
    ∀ directions : Fin 1 → E,
      κ 1 directions =
        F.firstDirectionalCumulant theta directions
  order2 :
    ∀ directions : Fin 2 → E,
      κ 2 directions =
        F.secondDirectionalCumulant theta directions
  order3 :
    ∀ directions : Fin 3 → E,
      κ 3 directions =
        F.thirdDirectionalCumulant theta directions
  order4 :
    ∀ directions : Fin 4 → E,
      κ 4 directions =
        F.fourthDirectionalCumulant theta directions

/-- The canonical prefix matches itself through order four. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant4563a9c7c907c8fdf3a72f0f2f2d6fb6bc322b98f0f3d4937da5416d89aeef03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant4563a9c7c907c8fdf3a72f0f2f2d6fb6bc322b98f0f3d4937da5416d89aeef03.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f4246f65869281ae397818cd305ad1ff084e4d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
