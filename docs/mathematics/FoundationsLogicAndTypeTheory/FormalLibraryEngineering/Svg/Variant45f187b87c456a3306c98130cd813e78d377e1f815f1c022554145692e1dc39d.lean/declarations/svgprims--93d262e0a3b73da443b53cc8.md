# svgprims

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f8a52ea88857513ce70fc977642cdc1a94634fc616c7d56fb48cf3e18ddfcc0",
  "kind": "def",
  "lexical_name": "svgprims",
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
  "slug": "svgprims--93d262e0a3b73da443b53cc8",
  "source": {
    "blob": "c089519abf9ccf0a735e6fcba448fd6bf5ba6986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Svg/Variant45f187b87c456a3306c98130cd813e78d377e1f815f1c022554145692e1dc39d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:93d262e0a3b73da443b53cc849b918e2c6721d4caef2d1cbf25902b45a814c74",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Svg/Variant45f187b87c456a3306c98130cd813e78d377e1f815f1c022554145692e1dc39d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f8a52ea88857513ce70fc977642cdc1a94634fc616c7d56fb48cf3e18ddfcc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def svgprims : Svg frame :=
 {elements := #[

        rect (100.0, 100.0) (.abs 70.0) (.abs 70.0)
        |>.setStroke (255., 0., 0.) (.px 2)
        |>.setFill (0.5, 0.5, 0.5),

        ellipse (200.0, 200.0) (.abs 50.0) (.abs 30.0)
        |>.setStroke (0., 255., 0.) (.px 2)
        |>.setFill (0.3, 0.3, 1.0),

        line (300.0, 300.0) (350.0, 350.0)
        |>.setStroke (255., 255., 0.) (.px 2),

        polygon #[ (100., 50.), (50., 150.), (150., 150.), (20.,70.) ]
        |>.setStroke (0., 0., 255.) (.px 2)
        |>.setFill (0., 1., 0.)
 ] }

 #html svgprims.toHtml
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Svg/Variant45f187b87c456a3306c98130cd813e78d377e1f815f1c022554145692e1dc39d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Svg/Variant45f187b87c456a3306c98130cd813e78d377e1f815f1c022554145692e1dc39d.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c089519abf9ccf0a735e6fcba448fd6bf5ba6986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
