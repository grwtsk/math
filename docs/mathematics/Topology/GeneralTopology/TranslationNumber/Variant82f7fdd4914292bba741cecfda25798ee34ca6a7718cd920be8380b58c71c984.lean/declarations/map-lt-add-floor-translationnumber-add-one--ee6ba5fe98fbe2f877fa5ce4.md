# map_lt_add_floor_translationNumber_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a39efb0d54eddd347003c197280cc04d8b93c3e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 744,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82f7fdd4914292bba741cecfda25798ee34ca6a7718cd920be8380b58c71c984.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2a87dbd-ad8b-e6a3-60f6-798cfa552b78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82035a0b-b3d7-dc23-2df2-16d92ed0aadf",
  "kind": "theorem",
  "lexical_name": "map_lt_add_floor_translationNumber_add_one",
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
  "slug": "map-lt-add-floor-translationnumber-add-one--ee6ba5fe98fbe2f877fa5ce4",
  "source": {
    "blob": "a39efb0d54eddd347003c197280cc04d8b93c3e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 750,
    "line": 744,
    "path": "GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant82f7fdd4914292bba741cecfda25798ee34ca6a7718cd920be8380b58c71c984.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee6ba5fe98fbe2f877fa5ce4bb3ba0b5ab09740cb31b34b24bbd413bb18ae422",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TranslationNumber/Variant82f7fdd4914292bba741cecfda25798ee34ca6a7718cd920be8380b58c71c984.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82035a0b-b3d7-dc23-2df2-16d92ed0aadf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 744–750.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_lt_add_floor_translationNumber_add_one (x : ℝ) : f x < x + ⌊τ f⌋ + 1 := by
  rw [add_assoc]
  norm_cast
  refine map_lt_of_translationNumber_lt_int _ ?_ _
  push_cast
  exact lt_floor_add_one _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TranslationNumber/Variant82f7fdd4914292bba741cecfda25798ee34ca6a7718cd920be8380b58c71c984.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant82f7fdd4914292bba741cecfda25798ee34ca6a7718cd920be8380b58c71c984.lean#L744).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a39efb0d54eddd347003c197280cc04d8b93c3e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
