# linearIndependent_of_top_le_span_of_card_eq_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6656116797961d4db3a0a963e51cb2e86864a815",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e77eee96c2edd36c26fe7c8b690c60356d00b9a06d6f62ebb9e2d12b6d22ab21.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61ed5f3f-b3be-e39b-de42-2c42e3870f64",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b986dc9-2372-1d44-ad7c-19ab774cd3ec",
  "kind": "theorem",
  "lexical_name": "linearIndependent_of_top_le_span_of_card_eq_finrank",
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
  "slug": "linearindependent-of-top-le-span-of-card-eq-finrank--86e25c9bba98703257c45e12",
  "source": {
    "blob": "6656116797961d4db3a0a963e51cb2e86864a815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 115,
    "path": "GRWTSK/Algebra/LinearAlgebra/DivisionRing/Variante77eee96c2edd36c26fe7c8b690c60356d00b9a06d6f62ebb9e2d12b6d22ab21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86e25c9bba98703257c45e129860a95d1623a5df23f095761e9919042867342f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DivisionRing/Variante77eee96c2edd36c26fe7c8b690c60356d00b9a06d6f62ebb9e2d12b6d22ab21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b986dc9-2372-1d44-ad7c-19ab774cd3ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_of_top_le_span_of_card_eq_finrank {ι : Type*} [Fintype ι] {b : ι → V}
    (spans : ⊤ ≤ span K (Set.range b)) (card_eq : Fintype.card ι = finrank K V) :
    LinearIndependent K b :=
  linearIndependent_iff'.mpr fun s g dependent i i_mem_s => by
    classical
    by_contra gx_ne_zero
    -- We'll derive a contradiction by showing `b '' (univ \ {i})` of cardinality `n - 1`
    -- spans a vector space of dimension `n`.
    refine not_le_of_gt (span_lt_top_of_card_lt_finrank
      (show (b '' (Set.univ \ {i})).toFinset.card < finrank K V from ?_)) ?_
    · calc
        (b '' (Set.univ \ {i})).toFinset.card = ((Set.univ \ {i}).toFinset.image b).card := by
          rw [Set.toFinset_card, Fintype.card_ofFinset]
        _ ≤ (Set.univ \ {i}).toFinset.card := Finset.card_image_le
        _ = (Finset.univ.erase i).card := (congr_arg Finset.card (Finset.ext (by simp [and_comm])))
        _ < Finset.univ.card := Finset.card_erase_lt_of_mem (Finset.mem_univ i)
        _ = finrank K V := card_eq
    -- We already have that `b '' univ` spans the whole space,
    -- so we only need to show that the span of `b '' (univ \ {i})` contains each `b j`.
    refine spans.trans (span_le.mpr ?_)
    rintro _ ⟨j, rfl, rfl⟩
    -- The case that `j ≠ i` is easy because `b j ∈ b '' (univ \ {i})`.
    by_cases j_eq : j = i
    swap
    · refine subset_span ⟨j, (Set.mem_diff _).mpr ⟨Set.mem_univ _, ?_⟩, rfl⟩
      exact mt Set.mem_singleton_iff.mp j_eq
    -- To show `b i ∈ span (b '' (univ \ {i}))`, we use that it's a weighted sum
    -- of the other `b j`s.
    rw [j_eq, SetLike.mem_coe, show b i = -((g i)⁻¹ • (s.erase i).sum fun j => g j • b j) from _]
    · refine neg_mem (smul_mem _ _ (sum_mem fun k hk => ?_))
      obtain ⟨k_ne_i, _⟩ := Finset.mem_erase.mp hk
      refine smul_mem _ _ (subset_span ⟨k, ?_, rfl⟩)
      simp_all only [Set.mem_univ, Set.mem_diff, Set.mem_singleton_iff, and_self, not_false_eq_true]
    -- To show `b i` is a weighted sum of the other `b j`s, we'll rewrite this sum
    -- to have the form of the assumption `dependent`.
    apply eq_neg_of_add_eq_zero_left
    calc
      (b i + (g i)⁻¹ • (s.erase i).sum fun j => g j • b j) =
          (g i)⁻¹ • (g i • b i + (s.erase i).sum fun j => g j • b j) := by
        rw [smul_add, ← mul_smul, inv_mul_cancel₀ gx_ne_zero, one_smul]
      _ = (g i)⁻¹ • (0 : V) := congr_arg _ ?_
      _ = 0 := smul_zero _
    -- And then it's just a bit of manipulation with finite sums.
    rwa [← Finset.insert_erase i_mem_s, Finset.sum_insert (Finset.notMem_erase _ _)] at dependent

/-- A finite family of vectors is linearly independent if and only if
its cardinality equals the dimension of its span. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DivisionRing/Variante77eee96c2edd36c26fe7c8b690c60356d00b9a06d6f62ebb9e2d12b6d22ab21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DivisionRing/Variante77eee96c2edd36c26fe7c8b690c60356d00b9a06d6f62ebb9e2d12b6d22ab21.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6656116797961d4db3a0a963e51cb2e86864a815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
