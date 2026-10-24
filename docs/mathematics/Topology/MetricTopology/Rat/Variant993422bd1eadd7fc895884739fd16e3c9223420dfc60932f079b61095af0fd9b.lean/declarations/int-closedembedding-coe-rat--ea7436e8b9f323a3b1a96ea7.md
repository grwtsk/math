# Int.closedEmbedding_coe_rat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfa8d78b-2510-f9d0-1ebf-1b15dcbe091a",
  "kind": "theorem",
  "lexical_name": "Int.closedEmbedding_coe_rat",
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
  "slug": "int-closedembedding-coe-rat--ea7436e8b9f323a3b1a96ea7",
  "source": {
    "blob": "3d705f27d1f0a8399f98c240cd26acf800463845",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 88,
    "path": "GRWTSK/Topology/MetricTopology/Rat/Variant993422bd1eadd7fc895884739fd16e3c9223420dfc60932f079b61095af0fd9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea7436e8b9f323a3b1a96ea7ce3293bd20187d0e835e7f171d1ea687a47607c0",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Rat/Variant993422bd1eadd7fc895884739fd16e3c9223420dfc60932f079b61095af0fd9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfa8d78b-2510-f9d0-1ebf-1b15dcbe091a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Int.closedEmbedding_coe_rat : ClosedEmbedding ((↑) : ℤ → ℚ) :=
  closedEmbedding_of_pairwise_le_dist zero_lt_one <| by simpa using Int.pairwise_one_le_dist
#align int.closed_embedding_coe_rat Int.closedEmbedding_coe_rat

namespace Rat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Rat/Variant993422bd1eadd7fc895884739fd16e3c9223420dfc60932f079b61095af0fd9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Rat/Variant993422bd1eadd7fc895884739fd16e3c9223420dfc60932f079b61095af0fd9b.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d705f27d1f0a8399f98c240cd26acf800463845` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
