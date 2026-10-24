# pairwiseDisjoint_pair_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "869a634995b330a3527eae71a98e82ded7eccc59",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f75bda32442ed32ed7c65b2f56728167860c9d817a853701c1cd86e51b1d9881.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22d2bb84-c062-1ab5-bb04-aaa03ae336de",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:543d3f58-45ea-83c2-f7cd-749fcf5c28bc",
  "kind": "lemma",
  "lexical_name": "pairwiseDisjoint_pair_insert",
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
  "slug": "pairwisedisjoint-pair-insert--f21cc0df7f7d7438fb085c2c",
  "source": {
    "blob": "869a634995b330a3527eae71a98e82ded7eccc59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variantf75bda32442ed32ed7c65b2f56728167860c9d817a853701c1cd86e51b1d9881.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f21cc0df7f7d7438fb085c2c29c9b557ddeb83fa0762d3d01d367a2d180d14a1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Powerset/Variantf75bda32442ed32ed7c65b2f56728167860c9d817a853701c1cd86e51b1d9881.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:543d3f58-45ea-83c2-f7cd-749fcf5c28bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pairwiseDisjoint_pair_insert [DecidableEq α] {a : α} (ha : a ∉ s) :
    (s.powerset : Set (Finset α)).PairwiseDisjoint fun t ↦ ({t, insert a t} : Set (Finset α)) := by
  simp_rw [Set.pairwiseDisjoint_iff, mem_coe, mem_powerset]
  rintro i hi j hj
  simp only [Set.Nonempty, Set.mem_inter_iff, Set.mem_insert_iff, Set.mem_singleton_iff,
    exists_eq_or_imp, exists_eq_left, or_imp, imp_self, true_and]
  refine ⟨?_, ?_, insert_erase_invOn.2.injOn (notMem_mono hi ha) (notMem_mono hj ha)⟩ <;>
    rintro rfl <;>
    cases Finset.notMem_mono ‹_› ha (Finset.mem_insert_self _ _)

/-- For predicate `p` decidable on subsets, it is decidable whether `p` holds for any subset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Powerset/Variantf75bda32442ed32ed7c65b2f56728167860c9d817a853701c1cd86e51b1d9881.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variantf75bda32442ed32ed7c65b2f56728167860c9d817a853701c1cd86e51b1d9881.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `869a634995b330a3527eae71a98e82ded7eccc59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
