# toGHSpace_lipschitz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56c1b85953815730c1ae4ca2fcb47b663936378d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 523,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/155c3fbe2b3a86bf4df400c13ca353c751317f9c9fc251ab3ebd53124cb5c3f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b07d2d23-f5bc-9b52-861d-502a9374f473",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f79ecee-3e53-7b05-0dc9-e65676bba996",
  "kind": "theorem",
  "lexical_name": "toGHSpace_lipschitz",
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
  "slug": "toghspace-lipschitz--266a4752415c8239b592dea9",
  "source": {
    "blob": "56c1b85953815730c1ae4ca2fcb47b663936378d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 526,
    "line": 523,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant155c3fbe2b3a86bf4df400c13ca353c751317f9c9fc251ab3ebd53124cb5c3f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:266a4752415c8239b592dea906297389cd13ddaca49e6f65d2dbfe591bfc87f5",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorff/Variant155c3fbe2b3a86bf4df400c13ca353c751317f9c9fc251ab3ebd53124cb5c3f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f79ecee-3e53-7b05-0dc9-e65676bba996`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 523–526.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toGHSpace_lipschitz :
    LipschitzWith 1 (NonemptyCompacts.toGHSpace : NonemptyCompacts X → GHSpace) :=
  LipschitzWith.mk_one ghDist_le_nonemptyCompacts_dist

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorff/Variant155c3fbe2b3a86bf4df400c13ca353c751317f9c9fc251ab3ebd53124cb5c3f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant155c3fbe2b3a86bf4df400c13ca353c751317f9c9fc251ab3ebd53124cb5c3f2.lean#L523).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56c1b85953815730c1ae4ca2fcb47b663936378d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
