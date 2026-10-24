# monotone_foldlM_loop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f44f16e71c8796899279f3044e6d9eef0e852b5d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 389,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b586d2cdc643d962df2ab3f6336403e7f5af48c84ecb07a382c97bd5e6781b7f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a963c744-30ec-6ca4-1481-b6895d03c47b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c726a546-60e8-296c-97db-b33a23d119da",
  "kind": "theorem",
  "lexical_name": "monotone_foldlM_loop",
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
  "slug": "monotone-foldlm-loop--eab010fa71afaaf31e3fb865",
  "source": {
    "blob": "f44f16e71c8796899279f3044e6d9eef0e852b5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 389,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb586d2cdc643d962df2ab3f6336403e7f5af48c84ecb07a382c97bd5e6781b7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eab010fa71afaaf31e3fb8653737c560b419dae09fcaee933929ae29c6eedf9b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb586d2cdc643d962df2ab3f6336403e7f5af48c84ecb07a382c97bd5e6781b7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c726a546-60e8-296c-97db-b33a23d119da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monotone_foldlM_loop
    (f : γ → β → α → m β) (xs : Array α) (stop : Nat) (h : stop ≤ xs.size) (i j : Nat) (b : β)
    (hmono : monotone f) : monotone (fun x => Array.foldlM.loop (f x) xs stop h i j b) := by
  induction i, j, b using Array.foldlM.loop.induct (h := h) with
  | case1 =>
    simp only [Array.foldlM.loop, ↓reduceDIte, *]
    apply monotone_const
  | case2 _ _ _ _ _ ih =>
    unfold Array.foldlM.loop
    simp only [↓reduceDIte, *]
    apply monotone_bind
    · apply monotone_apply
      apply monotone_apply
      apply hmono
    · apply monotone_of_monotone_apply
      apply ih
  | case3 =>
    simp only [Array.foldlM.loop, ↓reduceDIte, *]
    apply monotone_const

@[partial_fixpoint_monotone]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb586d2cdc643d962df2ab3f6336403e7f5af48c84ecb07a382c97bd5e6781b7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantb586d2cdc643d962df2ab3f6336403e7f5af48c84ecb07a382c97bd5e6781b7f.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f44f16e71c8796899279f3044e6d9eef0e852b5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
