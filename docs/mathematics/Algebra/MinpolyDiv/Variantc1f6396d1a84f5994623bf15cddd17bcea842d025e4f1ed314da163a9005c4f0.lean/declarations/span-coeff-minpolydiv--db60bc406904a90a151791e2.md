# span_coeff_minpolyDiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ccba9dbe9550b3bd6ca53f6964df49092f383449",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:599ea55f-d91c-2b5a-f937-50b17b637f87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e98549d-ba90-5a3d-a762-5d305a2d7838",
  "kind": "lemma",
  "lexical_name": "span_coeff_minpolyDiv",
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
  "slug": "span-coeff-minpolydiv--db60bc406904a90a151791e2",
  "source": {
    "blob": "ccba9dbe9550b3bd6ca53f6964df49092f383449",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 156,
    "path": "GRWTSK/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db60bc406904a90a151791e2737a79ca353e1178f8e66757ce0814f57c4c16d9",
  "verification": {
    "reference": "docs/verification/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e98549d-ba90-5a3d-a762-5d305a2d7838`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma span_coeff_minpolyDiv :
    Submodule.span R (Set.range (coeff (minpolyDiv R x))) =
      Subalgebra.toSubmodule (R[x]) := by
  nontriviality S
  apply le_antisymm
  · rw [Submodule.span_le]
    rintro _ ⟨i, rfl⟩
    apply coeff_minpolyDiv_mem_adjoin
  · rw [← Submodule.span_range_natDegree_eq_adjoin (minpoly.monic hx) (minpoly.aeval _ _),
      Submodule.span_le]
    simp only [Finset.coe_image, Finset.coe_range, Set.image_subset_iff]
    intro i
    induction i using Nat.strongRecOn with | ind i hi => ?_
    intro hi'
    have : coeff (minpolyDiv R x) (natDegree (minpolyDiv R x) - i) ∈
        Submodule.span R (Set.range (coeff (minpolyDiv R x))) :=
      Submodule.subset_span (Set.mem_range_self _)
    rw [Set.mem_preimage, SetLike.mem_coe, ← Submodule.sub_mem_iff_right _ this]
    refine SetLike.le_def.mp ?_ (coeff_minpolyDiv_sub_pow_mem_span hx ?_)
    · rw [Submodule.span_le, Set.image_subset_iff]
      intro j (hj : j < i)
      exact hi j hj (lt_trans hj hi')
    · rwa [← natDegree_minpolyDiv_succ hx, Set.mem_Iio, Nat.lt_succ_iff] at hi'

end IsIntegral

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MinpolyDiv/Variantc1f6396d1a84f5994623bf15cddd17bcea842d025e4f1ed314da163a9005c4f0.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccba9dbe9550b3bd6ca53f6964df49092f383449` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
