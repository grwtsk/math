# hasColimit_mapGlueData_diagram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67a181d9-5c31-bd24-d206-2784fbf26b6a",
  "kind": "theorem",
  "lexical_name": "hasColimit_mapGlueData_diagram",
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
  "slug": "hascolimit-mapgluedata-diagram--09e5060c733190d33a950456",
  "source": {
    "blob": "8822cfa8d52539ee4d88d6342d1e83f9b063307e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 298,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant826a3fd8f248379d621bf4e05564094921cecf8a1a5dae50c19255b621c537ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09e5060c733190d33a950456a6dcf010b6e8b45aa530633b605e5f0b5846c61a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant826a3fd8f248379d621bf4e05564094921cecf8a1a5dae50c19255b621c537ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67a181d9-5c31-bd24-d206-2784fbf26b6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasColimit_mapGlueData_diagram : HasMulticoequalizer (D.mapGlueData F).diagram :=
  hasColimit_of_iso (D.diagramIso F).symm

attribute [local instance] hasColimit_mapGlueData_diagram

set_option backward.isDefEq.respectTransparency false in
/-- If `F` preserves the gluing, we obtain an iso between the glued objects. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant826a3fd8f248379d621bf4e05564094921cecf8a1a5dae50c19255b621c537ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variant826a3fd8f248379d621bf4e05564094921cecf8a1a5dae50c19255b621c537ab.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8822cfa8d52539ee4d88d6342d1e83f9b063307e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
