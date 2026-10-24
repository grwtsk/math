# toAddCircle_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a0c6fec9387db30b2bfab4eae689cb446d1fa33a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e3106d477af53038e6eacf5da730df7a09c57f786ef88eb5e15655aa0016d625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1fea7d9d-527d-90b3-4937-cb87ec266cc0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10c81182-44a6-bd99-e234-b587b1284f3b",
  "kind": "lemma",
  "lexical_name": "toAddCircle_natCast",
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
  "slug": "toaddcircle-natcast--09d8a573ce8ba26e25f27895",
  "source": {
    "blob": "a0c6fec9387db30b2bfab4eae689cb446d1fa33a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/Real/Variante3106d477af53038e6eacf5da730df7a09c57f786ef88eb5e15655aa0016d625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09d8a573ce8ba26e25f278951e00ad4ed1a4c122e04dc17b80e5b98b656f32c1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Real/Variante3106d477af53038e6eacf5da730df7a09c57f786ef88eb5e15655aa0016d625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10c81182-44a6-bd99-e234-b587b1284f3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toAddCircle_natCast (j : ℕ) :
    toAddCircle (j : ZMod N) = ↑(j / N : ℝ) := by
  simpa using toAddCircle_intCast (N := N) j

/--
Explicit formula for `toCircle j`. Note that this is "evil" because it uses `ZMod.val`. Where
possible, it is recommended to lift `j` to `ℤ` and use `toAddCircle_intCast` instead.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Real/Variante3106d477af53038e6eacf5da730df7a09c57f786ef88eb5e15655aa0016d625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Real/Variante3106d477af53038e6eacf5da730df7a09c57f786ef88eb5e15655aa0016d625.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0c6fec9387db30b2bfab4eae689cb446d1fa33a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
