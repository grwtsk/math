# card_filter_univ_eq_vector_get_eq_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d8f88a4c1aecb3f8fe4b8fcd2e6717bc2f5128b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d934dc19d92916b23634381396398dced33ae54fd020955387ebc912ad550d63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e74e2c3c-f76d-6359-b5b6-8f9b51768840",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ceafc299-6110-21f3-5006-d3d37220f793",
  "kind": "theorem",
  "lexical_name": "card_filter_univ_eq_vector_get_eq_count",
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
  "slug": "card-filter-univ-eq-vector-get-eq-count--b566760b5654cd4ddbe2f5de",
  "source": {
    "blob": "7d8f88a4c1aecb3f8fe4b8fcd2e6717bc2f5128b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 56,
    "path": "GRWTSK/Topology/GeneralTopology/Fin/Variantd934dc19d92916b23634381396398dced33ae54fd020955387ebc912ad550d63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b566760b5654cd4ddbe2f5de719e9c83f73c8193a0043d0fa0239f500a4b2f13",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Fin/Variantd934dc19d92916b23634381396398dced33ae54fd020955387ebc912ad550d63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ceafc299-6110-21f3-5006-d3d37220f793`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_filter_univ_eq_vector_get_eq_count [DecidableEq α] (a : α) (v : List.Vector α n) :
    #{i | v.get i = a} = v.toList.count a := by
  induction v with
  | nil => simp
  | @cons n x xs hxs =>
    simp_rw [card_filter_univ_succ', Vector.get_cons_zero, Vector.toList_cons, Vector.get_cons_succ,
      hxs, List.count_cons, add_comm (ite (x = a) 1 0), beq_iff_eq]

/--
Given a "downward-closed" predicate `p` on `Fin n` (which could be spelt `Antitone p`),
then `p` holds for more than `j` elements iff it holds for `p` itself.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Fin/Variantd934dc19d92916b23634381396398dced33ae54fd020955387ebc912ad550d63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Fin/Variantd934dc19d92916b23634381396398dced33ae54fd020955387ebc912ad550d63.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d8f88a4c1aecb3f8fe4b8fcd2e6717bc2f5128b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
