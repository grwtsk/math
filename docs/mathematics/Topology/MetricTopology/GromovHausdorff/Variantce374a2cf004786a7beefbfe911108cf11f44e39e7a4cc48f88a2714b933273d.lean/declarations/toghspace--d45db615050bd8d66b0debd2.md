# toGHSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57e8b94d7a2195245a4a7bfdc9675203298b75b3109db1a405efafd6d6c62cbe",
  "kind": "def",
  "lexical_name": "toGHSpace",
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
  "slug": "toghspace--d45db615050bd8d66b0debd2",
  "source": {
    "blob": "8b16fb6ac9e2401d610a790878999f1676ea9061",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 90,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d45db615050bd8d66b0debd27cdb6069d9ce12470ebb0267b8519eeb44a2c92e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57e8b94d7a2195245a4a7bfdc9675203298b75b3109db1a405efafd6d6c62cbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toGHSpace (X : Type u) [MetricSpace X] [CompactSpace X] [Nonempty X] : GHSpace :=
  ⟦NonemptyCompacts.kuratowskiEmbedding X⟧

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantce374a2cf004786a7beefbfe911108cf11f44e39e7a4cc48f88a2714b933273d.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b16fb6ac9e2401d610a790878999f1676ea9061` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
