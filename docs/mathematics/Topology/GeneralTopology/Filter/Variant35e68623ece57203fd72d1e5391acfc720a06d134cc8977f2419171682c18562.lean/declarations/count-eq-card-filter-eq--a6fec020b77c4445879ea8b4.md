# count_eq_card_filter_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df2cbe0ea24727a0cf78a51ff3fccee449580281",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 404,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35e68623ece57203fd72d1e5391acfc720a06d134cc8977f2419171682c18562.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de8249b5-f0f4-4d66-eb61-c608d6da1e33",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f3cef7dd-526d-347c-f038-414b6817d7f9",
  "kind": "theorem",
  "lexical_name": "count_eq_card_filter_eq",
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
  "slug": "count-eq-card-filter-eq--a6fec020b77c4445879ea8b4",
  "source": {
    "blob": "df2cbe0ea24727a0cf78a51ff3fccee449580281",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 404,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant35e68623ece57203fd72d1e5391acfc720a06d134cc8977f2419171682c18562.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6fec020b77c4445879ea8b4e0814706f02e45f22219b6b3040c39b0afd78abe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variant35e68623ece57203fd72d1e5391acfc720a06d134cc8977f2419171682c18562.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3cef7dd-526d-347c-f038-414b6817d7f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_eq_card_filter_eq [DecidableEq α] (s : Multiset α) (a : α) :
    s.count a = card (s.filter (a = ·)) := by rw [count, countP_eq_card_filter]

/--
Mapping a multiset through a predicate and counting the `True`s yields the cardinality of the set
filtered by the predicate. Note that this uses the notion of a multiset of `Prop`s - due to the
decidability requirements of `count`, the decidability instance on the LHS is different from the
RHS. In particular, the decidability instance on the left leaks `Classical.decEq`.
See [here](https://github.com/leanprover-community/mathlib/pull/11306#discussion_r782286812)
for more discussion.
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant35e68623ece57203fd72d1e5391acfc720a06d134cc8977f2419171682c18562.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant35e68623ece57203fd72d1e5391acfc720a06d134cc8977f2419171682c18562.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df2cbe0ea24727a0cf78a51ff3fccee449580281` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
