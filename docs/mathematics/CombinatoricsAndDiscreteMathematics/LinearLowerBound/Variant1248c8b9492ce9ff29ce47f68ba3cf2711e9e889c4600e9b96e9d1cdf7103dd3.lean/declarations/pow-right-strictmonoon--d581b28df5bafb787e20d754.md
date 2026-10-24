# pow_right_strictMonoOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edf083bfafe260a493a471f90f2c87e2ab50d86c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/1248c8b9492ce9ff29ce47f68ba3cf2711e9e889c4600e9b96e9d1cdf7103dd3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d51d06b0-9fb2-f0fa-99b6-77ea62763fb8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eab7e1f7-16c0-c265-3f99-0be81db49356",
  "kind": "lemma",
  "lexical_name": "pow_right_strictMonoOn",
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
  "slug": "pow-right-strictmonoon--d581b28df5bafb787e20d754",
  "source": {
    "blob": "edf083bfafe260a493a471f90f2c87e2ab50d86c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 60,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variant1248c8b9492ce9ff29ce47f68ba3cf2711e9e889c4600e9b96e9d1cdf7103dd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d581b28df5bafb787e20d754fb494b94b532c0d0d7cab4d3cb3133275f66a11d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variant1248c8b9492ce9ff29ce47f68ba3cf2711e9e889c4600e9b96e9d1cdf7103dd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eab7e1f7-16c0-c265-3f99-0be81db49356`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_right_strictMonoOn (hX₁ : 1 ∈ X) (hX : X.Nontrivial) :
    StrictMonoOn (fun n ↦ X ^ n) {n | (X ^ (n - 1) : Set G) ≠ closure (X : Set G)} := by
  refine strictMonoOn_of_lt_add_one ⟨?_⟩ fun n _ _ hn ↦
    pow_ssubset_pow_succ_of_pow_ne_closure hX₁ hX hn
  rintro - - n hn m ⟨-, hmn⟩ hm
  apply hn
  obtain rfl | hm₀ := m.eq_zero_or_pos
  · simp [eq_comm (a := (1 : Set _)), coe_set_eq_one, -Set.subset_singleton_iff,
      hX.coe.not_subset_singleton] at hm
  · calc (X : Set G) ^ (n - 1)
    _ = X ^ (n - m) * X ^ (m - 1) := by rw [← pow_add]; congr 1; omega
    _ = closure (X : Set G) := by rw [hm, Set.pow_mul_subgroupClosure hX.nonempty.to_set]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variant1248c8b9492ce9ff29ce47f68ba3cf2711e9e889c4600e9b96e9d1cdf7103dd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LinearLowerBound/Variant1248c8b9492ce9ff29ce47f68ba3cf2711e9e889c4600e9b96e9d1cdf7103dd3.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edf083bfafe260a493a471f90f2c87e2ab50d86c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
