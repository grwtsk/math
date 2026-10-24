# openEmbedding_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bafb85bc-56d3-2bb0-0270-386ec2e2e1c7",
  "kind": "theorem",
  "lexical_name": "openEmbedding_of_le",
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
  "slug": "openembedding-of-le--dbf0ffd87d248dee51876b98",
  "source": {
    "blob": "bf43c31a5759a186aee318cbb709473b9d843936",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 267,
    "path": "GRWTSK/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbf0ffd87d248dee51876b98fb416a40e5f5d8d846bcd56025aa0ed892d02771",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bafb85bc-56d3-2bb0-0270-386ec2e2e1c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem openEmbedding_of_le {U V : Opens α} (i : U ≤ V) :
    OpenEmbedding (Set.inclusion $ SetLike.coe_subset_coe.2 i) :=
  { toEmbedding := embedding_inclusion i
    open_range := by
      rw [Set.range_inclusion i]
      exact U.isOpen.preimage continuous_subtype_val }
#align topological_space.opens.open_embedding_of_le TopologicalSpace.Opens.openEmbedding_of_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Opens/Variant9c22ba9b24d9096b1ba911ef696b404af9fb70bb4208d3ed77cd0327c2a1a162.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf43c31a5759a186aee318cbb709473b9d843936` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
