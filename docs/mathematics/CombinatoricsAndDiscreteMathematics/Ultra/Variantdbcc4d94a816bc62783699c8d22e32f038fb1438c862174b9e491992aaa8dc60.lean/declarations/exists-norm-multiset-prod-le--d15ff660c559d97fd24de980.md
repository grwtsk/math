# exists_norm_multiset_prod_le

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
      "line": 301,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbcc4d94a816bc62783699c8d22e32f038fb1438c862174b9e491992aaa8dc60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c5fbaaa-8526-859d-16c5-ee3a90df2e16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1a43ddb-2e50-41d4-f5ce-e20a5c2b9d78",
  "kind": "theorem",
  "lexical_name": "exists_norm_multiset_prod_le",
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
  "slug": "exists-norm-multiset-prod-le--d15ff660c559d97fd24de980",
  "source": {
    "blob": "a7b85a1970373ec177320fc4875388074ce53404",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 301,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variantdbcc4d94a816bc62783699c8d22e32f038fb1438c862174b9e491992aaa8dc60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d15ff660c559d97fd24de98051f4d1374c32f4bb3f579eb00e1af5317331c47d",
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

Occurrence: `result:d1a43ddb-2e50-41d4-f5ce-e20a5c2b9d78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_norm_multiset_prod_le (s : Multiset ι) [Nonempty ι] {f : ι → M} :
    ∃ i : ι, (s ≠ 0 → i ∈ s) ∧ ‖(s.map f).prod‖ ≤ ‖f i‖ := by
  inhabit ι
  induction s using Multiset.induction_on with
  | empty => simp
  | cons a t hM =>
      obtain ⟨M, hMs, hM⟩ := hM
      by_cases! hMa : ‖f M‖ ≤ ‖f a‖
      · refine ⟨a, by simp, ?_⟩
        · rw [Multiset.map_cons, Multiset.prod_cons]
          exact le_trans (norm_mul_le_max _ _) (max_le (le_refl _) (le_trans hM hMa))
      · rcases eq_or_ne t 0 with rfl | ht
        · exact ⟨a, by simp, by simp⟩
        · refine ⟨M, ?_, ?_⟩
          · simp [hMs ht]
          rw [Multiset.map_cons, Multiset.prod_cons]
          exact le_trans (norm_mul_le_max _ _) (max_le hMa.le hM)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ultra/Variantdbcc4d94a816bc62783699c8d22e32f038fb1438c862174b9e491992aaa8dc60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variantdbcc4d94a816bc62783699c8d22e32f038fb1438c862174b9e491992aaa8dc60.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7b85a1970373ec177320fc4875388074ce53404` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
