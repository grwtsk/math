# count_erase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f35d96f622744658843063f780a6041054070da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 225,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7aee750c-35ec-1a02-ee22-30d8381629d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87b1a9ec-4179-ce0f-ea1d-30e6343170ba",
  "kind": "theorem",
  "lexical_name": "count_erase",
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
  "slug": "count-erase--27c0f5cc4bb85a692417aca1",
  "source": {
    "blob": "9f35d96f622744658843063f780a6041054070da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 225,
    "path": "GRWTSK/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27c0f5cc4bb85a692417aca113175b052807aac26dd8ee48693c26855982c1cf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87b1a9ec-4179-ce0f-ea1d-30e6343170ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_erase (a b : α) :
    ∀ l : List α, count a (l.erase b) = count a l - if a = b then 1 else 0
  | [] => by simp
  | c :: l => by
    rw [erase_cons]
    if hc : c = b then
      rw [if_pos hc, hc, count_cons, Nat.add_sub_cancel]
    else
      rw [if_neg hc, count_cons, count_cons, count_erase a b l]
      if ha : a = b then
        rw [← ha, eq_comm] at hc
        rw [if_pos ha, if_neg hc, Nat.add_zero, Nat.add_zero]
      else
        rw [if_neg ha, Nat.sub_zero, Nat.sub_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Count/Variantb29536c0d2f5b02a36b1376df36cfa2e263a3c0e1532ed2a2ad048aae7182ddd.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f35d96f622744658843063f780a6041054070da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
