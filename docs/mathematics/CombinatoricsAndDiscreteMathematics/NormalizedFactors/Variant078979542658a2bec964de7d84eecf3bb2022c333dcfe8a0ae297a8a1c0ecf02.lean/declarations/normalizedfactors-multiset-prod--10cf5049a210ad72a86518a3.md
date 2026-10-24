# normalizedFactors_multiset_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c4263bf072a1e1bbd7d4d5edd0fd7cd315154f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 299,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e50270d-ca8d-55cd-a394-7522bfddea18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed73a699-c218-d7f0-0df7-58bcaa3818f5",
  "kind": "theorem",
  "lexical_name": "normalizedFactors_multiset_prod",
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
  "slug": "normalizedfactors-multiset-prod--10cf5049a210ad72a86518a3",
  "source": {
    "blob": "7c4263bf072a1e1bbd7d4d5edd0fd7cd315154f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 299,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10cf5049a210ad72a86518a3f499b51abdccf9b1470c8a8c502d672d3ef60cc0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed73a699-c218-d7f0-0df7-58bcaa3818f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedFactors_multiset_prod (s : Multiset α) (hs : 0 ∉ s) :
    normalizedFactors (s.prod) = (s.map normalizedFactors).sum := by
  cases subsingleton_or_nontrivial α
  · obtain rfl : s = 0 := by
      apply Multiset.eq_zero_of_forall_notMem
      intro _
      convert hs
    simp
  induction s using Multiset.induction with
  | empty => simp
  | cons _ _ IH =>
    rw [Multiset.prod_cons, Multiset.map_cons, Multiset.sum_cons, normalizedFactors_mul, IH]
    · exact fun h ↦ hs (Multiset.mem_cons_of_mem h)
    · exact fun h ↦ hs (h ▸ Multiset.mem_cons_self _ _)
    · apply Multiset.prod_ne_zero
      exact fun h ↦ hs (Multiset.mem_cons_of_mem h)

variable {β : Type*} [CancelCommMonoidWithZero β] [NormalizationMonoid β]
  [UniqueFactorizationMonoid β] {F : Type*} [EquivLike F α β] [MulEquivClass F α β] {f : F}

/--
If the monoid equiv `f : α ≃* β` commutes with `normalize` then, for `a : α`, it yields a
bijection between the `normalizedFactors` of `a` and of `f a`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c4263bf072a1e1bbd7d4d5edd0fd7cd315154f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
