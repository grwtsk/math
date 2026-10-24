# orderedBlock_index_eq_of_common_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:382d6dd9-0ded-dc2f-d4bb-8863646983cb",
  "kind": "theorem",
  "lexical_name": "orderedBlock_index_eq_of_common_mem",
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
  "slug": "orderedblock-index-eq-of-common-mem--ad8d2dfd64c6637228705c30",
  "source": {
    "blob": "2277a01aa090dd6dd1a563d780e2ea4d74cba32c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantd3327e37f502212b4ef417c24f9846ec26b60fff69192a15e9476c38f18a51c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad8d2dfd64c6637228705c301bd256ecbeb12b874040ef7176055d89558961a5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantd3327e37f502212b4ef417c24f9846ec26b60fff69192a15e9476c38f18a51c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:382d6dd9-0ded-dc2f-d4bb-8863646983cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderedBlock_index_eq_of_common_mem
    {n : ℕ}
    (c : OrderedFinpartition n)
    {m k : Fin c.length}
    {x : Fin n}
    (hm : x ∈ orderedBlock c m)
    (hk : x ∈ orderedBlock c k) :
    m = k := by
  by_contra hmk
  obtain ⟨jm, hjm⟩ := (mem_orderedBlock_iff c m x).1 hm
  obtain ⟨jk, hjk⟩ := (mem_orderedBlock_iff c k x).1 hk
  have hd :
      Disjoint (Set.range (c.emb m)) (Set.range (c.emb k)) :=
    c.disjoint (Set.mem_univ m) (Set.mem_univ k) hmk
  exact Set.disjoint_left.1 hd
    (Set.mem_range.2 ⟨jm, hjm⟩)
    (Set.mem_range.2 ⟨jk, hjk⟩)

/-- Different ordered block indices give different finite blocks. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantd3327e37f502212b4ef417c24f9846ec26b60fff69192a15e9476c38f18a51c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variantd3327e37f502212b4ef417c24f9846ec26b60fff69192a15e9476c38f18a51c3.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2277a01aa090dd6dd1a563d780e2ea4d74cba32c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
