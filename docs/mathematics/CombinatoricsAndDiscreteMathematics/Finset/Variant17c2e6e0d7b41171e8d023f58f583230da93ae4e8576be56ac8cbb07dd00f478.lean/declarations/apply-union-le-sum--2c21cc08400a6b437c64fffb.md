# apply_union_le_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "04fc6ed3e31ef9cd594f3db95e8edf87bf593bf3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 716,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/17c2e6e0d7b41171e8d023f58f583230da93ae4e8576be56ac8cbb07dd00f478.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15a026f5-9d9d-8b7e-5045-a62e45690aac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2000069-8bdb-0874-b27f-41c67908e638",
  "kind": "theorem",
  "lexical_name": "apply_union_le_sum",
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
  "slug": "apply-union-le-sum--2c21cc08400a6b437c64fffb",
  "source": {
    "blob": "04fc6ed3e31ef9cd594f3db95e8edf87bf593bf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 721,
    "line": 716,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant17c2e6e0d7b41171e8d023f58f583230da93ae4e8576be56ac8cbb07dd00f478.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c21cc08400a6b437c64fffbc8a61a37c9960f55e4ec8928ee263185947d767d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variant17c2e6e0d7b41171e8d023f58f583230da93ae4e8576be56ac8cbb07dd00f478.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2000069-8bdb-0874-b27f-41c67908e638`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 716–721.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_union_le_sum [AddCommMonoid β] [Preorder β] [AddLeftMono β]
    {f : Set α → β} (zero : f ∅ = 0) (ih : ∀ {s t}, f (s ∪ t) ≤ f s + f t)
    {s : ι → Set α} (t : Finset ι) :
    f (⋃ i ∈ t, s i) ≤ ∑ i ∈ t, f (s i) :=
  Finset.sup_set_eq_biUnion t s ▸ t.apply_sup_le_sum zero (by simpa)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variant17c2e6e0d7b41171e8d023f58f583230da93ae4e8576be56ac8cbb07dd00f478.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant17c2e6e0d7b41171e8d023f58f583230da93ae4e8576be56ac8cbb07dd00f478.lean#L716).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04fc6ed3e31ef9cd594f3db95e8edf87bf593bf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
