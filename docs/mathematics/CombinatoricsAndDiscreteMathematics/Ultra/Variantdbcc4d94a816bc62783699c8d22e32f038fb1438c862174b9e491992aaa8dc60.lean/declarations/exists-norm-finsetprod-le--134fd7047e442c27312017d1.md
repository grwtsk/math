# exists_norm_finsetProd_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7b85a1970373ec177320fc4875388074ce53404",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 284,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbcc4d94a816bc62783699c8d22e32f038fb1438c862174b9e491992aaa8dc60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21ee75bd-c02a-43c3-dbdf-1d5fae9bccbe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d51eed2f-c0c4-8009-e205-d95aad9b86fc",
  "kind": "theorem",
  "lexical_name": "exists_norm_finsetProd_le",
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
  "slug": "exists-norm-finsetprod-le--134fd7047e442c27312017d1",
  "source": {
    "blob": "a7b85a1970373ec177320fc4875388074ce53404",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 284,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variantdbcc4d94a816bc62783699c8d22e32f038fb1438c862174b9e491992aaa8dc60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:134fd7047e442c27312017d1d9e178a897d0ab744860ca2377bd2504a15e522d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ultra/Variantdbcc4d94a816bc62783699c8d22e32f038fb1438c862174b9e491992aaa8dc60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d51eed2f-c0c4-8009-e205-d95aad9b86fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_norm_finsetProd_le (t : Finset ι) [Nonempty ι] (f : ι → M) :
    ∃ i : ι, (t.Nonempty → i ∈ t) ∧ ‖∏ j ∈ t, f j‖ ≤ ‖f i‖ := by
  rcases t.eq_empty_or_nonempty with rfl | ht
  · simp
  exact (fun ⟨i, h, h'⟩ => ⟨i, fun _ ↦ h, h'⟩) <| exists_norm_finsetProd_le_of_nonempty ht f

@[deprecated (since := "2026-04-08")] alias exists_norm_finset_sum_le := exists_norm_finsetSum_le

@[to_additive existing, deprecated (since := "2026-04-08")]
alias exists_norm_finset_prod_le := exists_norm_finsetProd_le

/--
Given a function `f : ι → M` and a multiset `t : Multiset ι`, we can always find `i : ι`, belonging
to `t` if `t` is nonempty, such that `‖(s.map f).prod‖ ≤ ‖f i‖`.
-/
@[to_additive /-- Given a function `f : ι → M` and a multiset `t : Multiset ι`, we can always find
`i : ι`, belonging to `t` if `t` is nonempty, such that `‖(s.map f).sum‖ ≤ ‖f i‖`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ultra/Variantdbcc4d94a816bc62783699c8d22e32f038fb1438c862174b9e491992aaa8dc60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variantdbcc4d94a816bc62783699c8d22e32f038fb1438c862174b9e491992aaa8dc60.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7b85a1970373ec177320fc4875388074ce53404` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
