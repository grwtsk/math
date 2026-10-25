# map_subtype_of_cycleType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b91ee73f7f677b9a856c9b8a1ae701dd568a791",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/865a5d6090c2a449be6281291a5802ca63df6a4682b2e14fb4f8e4b4172d114d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:949d87fe-4a8a-8770-a9fb-6e4e76ecefb6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91d00a63-2256-e716-18d2-d39c7f764506",
  "kind": "theorem",
  "lexical_name": "map_subtype_of_cycleType",
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
  "slug": "map-subtype-of-cycletype--a51b4c4dc8cb202b80dfa27c",
  "source": {
    "blob": "7b91ee73f7f677b9a856c9b8a1ae701dd568a791",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant865a5d6090c2a449be6281291a5802ca63df6a4682b2e14fb4f8e4b4172d114d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a51b4c4dc8cb202b80dfa27cf72ac465c1cb0a388dbe3378e4b40d3a6e425b2f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant865a5d6090c2a449be6281291a5802ca63df6a4682b2e14fb4f8e4b4172d114d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91d00a63-2256-e716-18d2-d39c7f764506`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_subtype_of_cycleType (m : Multiset ℕ) :
    ({g | (g : Perm α).cycleType = m} : Finset (alternatingGroup α)).map (Embedding.subtype _) =
      if Even (m.sum + m.card) then ({g | g.cycleType = m} : Finset (Perm α)) else ∅ := by
  split_ifs with hm
  · ext g
    simp_rw [Finset.mem_map, Finset.mem_filter_univ, Embedding.coe_subtype, Subtype.exists,
      mem_alternatingGroup, exists_and_left, exists_prop, exists_eq_right_right,
      and_iff_left_iff_imp]
    intro hg
    rw [sign_of_cycleType, hg, Even.neg_one_pow hm]
  · rw [Finset.eq_empty_iff_forall_notMem]
    intro g hg
    simp_rw [Finset.mem_map, Finset.mem_filter_univ, Embedding.coe_subtype, Subtype.exists,
      mem_alternatingGroup, exists_and_left, exists_prop, exists_eq_right_right] at hg
    rcases hg with ⟨hg, hs⟩
    rw [g.sign_of_cycleType, hg, neg_one_pow_eq_one_iff_even (by simp)] at hs
    contradiction

variable (α) in
/-- The cardinality of even permutations of given `cycleType` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant865a5d6090c2a449be6281291a5802ca63df6a4682b2e14fb4f8e4b4172d114d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Centralizer/Variant865a5d6090c2a449be6281291a5802ca63df6a4682b2e14fb4f8e4b4172d114d.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b91ee73f7f677b9a856c9b8a1ae701dd568a791` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
