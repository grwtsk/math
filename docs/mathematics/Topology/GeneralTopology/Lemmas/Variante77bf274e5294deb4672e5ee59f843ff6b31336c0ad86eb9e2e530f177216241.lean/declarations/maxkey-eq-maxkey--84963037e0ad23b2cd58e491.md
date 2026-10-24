# maxKey!_eq_maxKey!

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56bc6135c55a9da254fb5401996378c149a5caf7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2334,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:346a5d3b-3972-e047-e18d-ca89fb25266e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0dbd411e-a810-b2ed-9e15-90c1c24f16df",
  "kind": "theorem",
  "lexical_name": "maxKey!_eq_maxKey!",
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
  "slug": "maxkey-eq-maxkey--84963037e0ad23b2cd58e491",
  "source": {
    "blob": "56bc6135c55a9da254fb5401996378c149a5caf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2338,
    "line": 2334,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variante77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84963037e0ad23b2cd58e4918e929b81d4a201b1d4cdfbfb7539494fbc9c24bf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variante77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dbd411e-a810-b2ed-9e15-90c1c24f16df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2334–2338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem maxKey!_eq_maxKey! [Ord α] [TransOrd α] [Inhabited α] [BEq α] [LawfulBEqOrd α]
    {t : Impl α β} (hlo : t.Ordered) :
    t.maxKey! = List.maxKey! t.toListModel := by
  simp only [List.maxKey!_eq_get!_maxKey?, maxKey!_eq_get!_maxKey?, maxKey?_eq_maxKey? hlo]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variante77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variante77bf274e5294deb4672e5ee59f843ff6b31336c0ad86eb9e2e530f177216241.lean#L2334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56bc6135c55a9da254fb5401996378c149a5caf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
