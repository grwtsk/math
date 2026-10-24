# adj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:222496aa0187314b818a3f69a1f3fe1cd5b6a55ff03c9f98b83509005af02859",
  "kind": "def",
  "lexical_name": "adj",
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
  "slug": "adj--10ecc74efd7dbc56754e33fb",
  "source": {
    "blob": "863b8429297539c3e9f02149881a61a1262d591f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 44,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantc64cec7dbc25ea8b766b5e31546c06613deb83fd841e8172f85a1a689b393813.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10ecc74efd7dbc56754e33fbe89b86e1b1469e86c95b6949ca94b7281edbd177",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantc64cec7dbc25ea8b766b5e31546c06613deb83fd841e8172f85a1a689b393813.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:222496aa0187314b818a3f69a1f3fe1cd5b6a55ff03c9f98b83509005af02859`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def adj (v w : Verts) : Bool := (v, w) ∈ edges || (w, v) ∈ edges

/-- The Königsberg graph structure. While the Königsberg bridge problem
is usually described using a multigraph, we use a "mediant" construction
to transform it into a simple graph -- every edge in the multigraph is subdivided
into a path of two edges. This construction preserves whether a graph is Eulerian.

(TODO: once mathlib has multigraphs, either prove the mediant construction preserves the
Eulerian property or switch this file to use multigraphs. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantc64cec7dbc25ea8b766b5e31546c06613deb83fd841e8172f85a1a689b393813.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Konigsberg/Variantc64cec7dbc25ea8b766b5e31546c06613deb83fd841e8172f85a1a689b393813.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `863b8429297539c3e9f02149881a61a1262d591f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
