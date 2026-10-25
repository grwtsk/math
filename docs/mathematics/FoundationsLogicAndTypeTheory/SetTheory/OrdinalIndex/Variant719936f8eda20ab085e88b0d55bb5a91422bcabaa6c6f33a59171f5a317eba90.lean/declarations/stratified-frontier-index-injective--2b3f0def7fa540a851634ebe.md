# stratified_frontier_index_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf53f0c7b304a1651688b7dfd570636edcb485e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb98f068-defe-e659-0f7a-38037b7f2205",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dff7171d-724f-73f0-5088-6f2afebb1fad",
  "kind": "theorem",
  "lexical_name": "stratified_frontier_index_injective",
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
  "slug": "stratified-frontier-index-injective--2b3f0def7fa540a851634ebe",
  "source": {
    "blob": "cf53f0c7b304a1651688b7dfd570636edcb485e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b3f0def7fa540a851634ebef1b1f7d7585b68a02170c02a05a38b656fac7043",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dff7171d-724f-73f0-5088-6f2afebb1fad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stratified_frontier_index_injective
    {limits : LimitSemantics}
    {Frontier : Type uFrontier}
    (index :
      StratifiedFrontierIndex limits Frontier) :
    Function.Injective index.code := by
  intro left right equal
  apply index.local.injective
  exact congrArg StratifiedFrontierCode.localRank
    equal

end StratifiedFrontierIndex

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/OrdinalIndex/Variant719936f8eda20ab085e88b0d55bb5a91422bcabaa6c6f33a59171f5a317eba90.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf53f0c7b304a1651688b7dfd570636edcb485e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
