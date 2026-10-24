# memHolder_iff_holderWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65c1f765c13d5f583ca2777a35e127fd924bcada",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b46b3609-4b72-a08a-43c2-c9f1212fbff7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fe5e88e-f3e5-9d21-0669-2b5fc1bcbe9c",
  "kind": "lemma",
  "lexical_name": "memHolder_iff_holderWith",
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
  "slug": "memholder-iff-holderwith--b37ccd4230e57a086b531c03",
  "source": {
    "blob": "65c1f765c13d5f583ca2777a35e127fd924bcada",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 238,
    "path": "GRWTSK/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b37ccd4230e57a086b531c039f5262a3c4167af6b05ad2d281b85aebde9164d1",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fe5e88e-f3e5-9d21-0669-2b5fc1bcbe9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma memHolder_iff_holderWith {r : ℝ≥0} {f : X → Y} :
    MemHolder r f ↔ HolderWith (nnHolderNorm r f) r f :=
  ⟨MemHolder.holderWith, HolderWith.memHolder⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/HolderNorm/Variant48e52bfbf775ba9f69f7e3be8903c2d24dbc3c650207161de37aefd7441d7489.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65c1f765c13d5f583ca2777a35e127fd924bcada` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
