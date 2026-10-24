# delabTotalSpaceMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:371f066c7e7418ec95c02293db1a7e8108e3ce7a1d28ce00fe92f6967951b81b",
  "kind": "def",
  "lexical_name": "delabTotalSpaceMk",
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
  "slug": "delabtotalspacemk--df31d412f65cce2af8dd4b05",
  "source": {
    "blob": "4c9ee8f837e8d1dd5b5df5fb821e953a42dcf6ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1087,
    "line": 1080,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Notation/Variantbb1d8890c94024e7806be4a60779417d498190207f2cafc07c42166a02584fb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df31d412f65cce2af8dd4b05f1e07c23744274ed2066fa70fbdc8b2cf6e6f455",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Notation/Variantbb1d8890c94024e7806be4a60779417d498190207f2cafc07c42166a02584fb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:371f066c7e7418ec95c02293db1a7e8108e3ce7a1d28ce00fe92f6967951b81b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1080–1087.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[app_delab TotalSpace.mk] meta def delabTotalSpaceMk : Delab := do
  whenPPOption getPPNotation do
  withOverApp 5 do
  let bd ← withNaryArg 3 <| delab
  let vd ← withNaryArg 4 <| delab
  `(⟨$bd, $vd⟩)

/-- Delaborator for `Bundle.TotalSpace.mk'` using anonymous constructor notation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Notation/Variantbb1d8890c94024e7806be4a60779417d498190207f2cafc07c42166a02584fb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Notation/Variantbb1d8890c94024e7806be4a60779417d498190207f2cafc07c42166a02584fb2.lean#L1080).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c9ee8f837e8d1dd5b5df5fb821e953a42dcf6ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
