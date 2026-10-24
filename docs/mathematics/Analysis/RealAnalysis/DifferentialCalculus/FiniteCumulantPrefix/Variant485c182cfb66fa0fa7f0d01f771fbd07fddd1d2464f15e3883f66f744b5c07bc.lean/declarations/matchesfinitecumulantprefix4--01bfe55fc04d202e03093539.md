# MatchesFiniteCumulantPrefix4

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb98899f0b3746571c070855e7a7a2feb90481e4326c04191068ff92c3686233",
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
  "slug": "matchesfinitecumulantprefix4--01bfe55fc04d202e03093539",
  "source": {
    "blob": "819b35aef974f3c22b9f88ab1efcd788602131e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 214,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01bfe55fc04d202e03093539cc51d4d4fe7cb4ccb9613c8c2f7b2318f2576fd5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb98899f0b3746571c070855e7a7a2feb90481e4326c04191068ff92c3686233`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–237.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant485c182cfb66fa0fa7f0d01f771fbd07fddd1d2464f15e3883f66f744b5c07bc.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `819b35aef974f3c22b9f88ab1efcd788602131e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
