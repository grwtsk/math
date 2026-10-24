# HSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c320242ea656fba60fc05ef788db9361b35906d6d546c07eb4ddcb6d2d9897fe",
  "kind": "class",
  "lexical_name": "HSpace",
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
  "slug": "hspace--c3db891ba8c7dae8605aa70b",
  "source": {
    "blob": "046e6c5b2496644427a7efec61b490e632e8282b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/HSpaces/Variantc1a9897dcb138ff8f12cb1dd19863e8f17da7266edcad1f0a90d0b8f578399ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3db891ba8c7dae8605aa70b60c3926be9a0ee57c303f557bdfb246add8ece8d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HSpaces/Variantc1a9897dcb138ff8f12cb1dd19863e8f17da7266edcad1f0a90d0b8f578399ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c320242ea656fba60fc05ef788db9361b35906d6d546c07eb4ddcb6d2d9897fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HSpace (X : Type u) [TopologicalSpace X] where
  hmul : C(X × X, X)
  e : X
  hmul_e_e : hmul (e, e) = e
  eHmul :
    (hmul.comp <| (const X e).prodMk <| ContinuousMap.id X).HomotopyRel (ContinuousMap.id X) {e}
  hmulE :
    (hmul.comp <| (ContinuousMap.id X).prodMk <| const X e).HomotopyRel (ContinuousMap.id X) {e}

/-- The binary operation `hmul` on an `H`-space -/
scoped[HSpaces] notation x "⋀" y => HSpace.hmul (x, y)

open scoped HSpaces

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HSpaces/Variantc1a9897dcb138ff8f12cb1dd19863e8f17da7266edcad1f0a90d0b8f578399ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HSpaces/Variantc1a9897dcb138ff8f12cb1dd19863e8f17da7266edcad1f0a90d0b8f578399ad.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `046e6c5b2496644427a7efec61b490e632e8282b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
