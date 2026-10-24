# IsNowhereDense.biUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1c59967-3ea1-9d89-2d58-b85c52d70f14",
  "kind": "lemma",
  "lexical_name": "IsNowhereDense.biUnion",
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
  "slug": "isnowheredense-biunion--e5d56ab2b60001300043ef5a",
  "source": {
    "blob": "42d99a2ddab77f7ea93932a9607a63de9112d903",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 229,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5d56ab2b60001300043ef5aadf64e5ab146605f5843076914a9152169f1bd67",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1c59967-3ea1-9d89-2d58-b85c52d70f14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma IsNowhereDense.biUnion {u : Finset ι} {f : ι → Set X}
    (hf : ∀ i ∈ u, IsNowhereDense (f i)) : IsNowhereDense (⋃ i ∈ u, f i) := by
  induction u using Finset.cons_induction with
  | empty => simp
  | cons a u ha ih =>
      rw [← Finset.set_biUnion_coe, Finset.coe_cons, Set.biUnion_insert, Finset.set_biUnion_coe]
      exact (hf a (Finset.mem_cons_self a u)).union
        (ih fun i hi => hf i (Finset.mem_cons_of_mem hi))

/-- A finite union of nowhere dense sets is nowhere dense. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantc76008db078b81fa8fccc289bb95586a892180a4666df12409d41c82d87b40a8.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42d99a2ddab77f7ea93932a9607a63de9112d903` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
