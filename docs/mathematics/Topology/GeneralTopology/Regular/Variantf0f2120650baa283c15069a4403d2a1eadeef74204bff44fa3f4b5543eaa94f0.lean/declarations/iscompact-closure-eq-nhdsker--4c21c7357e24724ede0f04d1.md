# IsCompact.closure_eq_nhdsKer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ab8ac2866c917f921ebfd21ae7c876899707775a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 375,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:015d185e-f6b9-87b2-493c-61fd27c289ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3883c084-6060-662e-1586-798ef5025eb2",
  "kind": "lemma",
  "lexical_name": "IsCompact.closure_eq_nhdsKer",
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
  "slug": "iscompact-closure-eq-nhdsker--4c21c7357e24724ede0f04d1",
  "source": {
    "blob": "ab8ac2866c917f921ebfd21ae7c876899707775a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 375,
    "path": "GRWTSK/Topology/GeneralTopology/Regular/Variantf0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c21c7357e24724ede0f04d16bd18e7b4af76e072d75dc40e55faad3bbd2fc7a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Regular/Variantf0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3883c084-6060-662e-1586-798ef5025eb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCompact.closure_eq_nhdsKer [RegularSpace X] {s : Set X} (hs : IsCompact s) :
    closure s = nhdsKer s := by
  apply subset_antisymm
  · rw [nhdsKer, ← hs.lift'_closure_nhdsSet]
    simp +contextual [Filter.lift', Filter.lift, closure_mono, subset_of_mem_nhdsSet]
  · intro y hy
    by_contra! hy'
    rw [← _root_.disjoint_nhdsSet_nhds, Filter.disjoint_iff] at hy'
    obtain ⟨t, hts, t', ht'y, H⟩ := hy'
    exact Set.disjoint_iff.mp H ⟨hy t hts, mem_of_mem_nhds ht'y⟩

end LocallyCompactRegularSpace

section T25

/-- A T₂.₅ space, also known as a Urysohn space, is a topological space
  where for every pair `x ≠ y`, there are two open sets, with the intersection of closures
  empty, one containing `x` and the other `y` . -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regular/Variantf0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regular/Variantf0f2120650baa283c15069a4403d2a1eadeef74204bff44fa3f4b5543eaa94f0.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab8ac2866c917f921ebfd21ae7c876899707775a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
