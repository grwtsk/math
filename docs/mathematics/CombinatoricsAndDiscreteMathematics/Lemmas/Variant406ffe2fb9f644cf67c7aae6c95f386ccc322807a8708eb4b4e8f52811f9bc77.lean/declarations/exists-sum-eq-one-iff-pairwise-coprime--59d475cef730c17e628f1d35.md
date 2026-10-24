# exists_sum_eq_one_iff_pairwise_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7877e4d9627e08b8036c4cd9c9a0f15810b9ba2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1f89f9b-89ef-f4ef-21ae-13bb49ee6226",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2ae22bd-59f7-9fe2-c068-02f321290261",
  "kind": "theorem",
  "lexical_name": "exists_sum_eq_one_iff_pairwise_coprime",
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
  "slug": "exists-sum-eq-one-iff-pairwise-coprime--59d475cef730c17e628f1d35",
  "source": {
    "blob": "7877e4d9627e08b8036c4cd9c9a0f15810b9ba2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 126,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59d475cef730c17e628f1d35bbf5350536154df76fcc6205047e6f2c837009e0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2ae22bd-59f7-9fe2-c068-02f321290261`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_sum_eq_one_iff_pairwise_coprime [DecidableEq I] (h : t.Nonempty) :
    (∃ μ : I → R, (∑ i ∈ t, μ i * ∏ j ∈ t \ {i}, s j) = 1) ↔
      Pairwise (IsCoprime on fun i : t ↦ s i) := by
  induction h using Finset.Nonempty.cons_induction with
  | singleton =>
    simp [exists_apply_eq, Pairwise, Function.onFun]
  | cons a t hat h ih =>
    rw [pairwise_cons']
    have mem : ∀ x ∈ t, a ∈ insert a t \ {x} := fun x hx ↦ by
      rw [mem_sdiff, mem_singleton]
      exact ⟨mem_insert_self _ _, fun ha ↦ hat (ha ▸ hx)⟩
    constructor
    · rintro ⟨μ, hμ⟩
      rw [sum_cons, cons_eq_insert, sdiff_singleton_eq_erase, erase_insert hat] at hμ
      refine ⟨ih.mp ⟨Pi.single h.choose (μ a * s h.choose) + μ * fun _ ↦ s a, ?_⟩, fun b hb ↦ ?_⟩
      · rw [prod_eq_mul_prod_sdiff_singleton_of_mem h.choose_spec, ← mul_assoc, ←
          @ite_eq_left _ _ h.choose_spec R (_ * _) 0, ← sum_pi_single', ← sum_add_distrib] at hμ
        rw [← hμ, sum_congr rfl]
        intro x hx
        convert! add_mul (R := R) _ _ _ using 2
        · by_cases hx : x = h.choose
          · rw [hx, Pi.single_eq_same, Pi.single_eq_same]
          · rw [Pi.single_eq_of_ne hx, Pi.single_eq_of_ne hx, zero_mul]
        · convert! (mul_assoc _ _ _).symm
          rw [prod_eq_prod_sdiff_singleton_mul (mem x hx), mul_comm, sdiff_sdiff_comm,
            sdiff_singleton_eq_erase a, erase_insert hat]
      · have : IsCoprime (s b) (s a) :=
          ⟨μ a * ∏ i ∈ t \ {b}, s i, ∑ i ∈ t, μ i * ∏ j ∈ t \ {i}, s j, ?_⟩
        · exact ⟨this.symm, this⟩
        rw [mul_assoc, ← prod_eq_prod_sdiff_singleton_mul hb, sum_mul, ← hμ, sum_congr rfl]
        intro x hx
        rw [mul_assoc]
        congr
        rw [prod_eq_prod_sdiff_singleton_mul (mem x hx) _]
        congr 2
        rw [sdiff_sdiff_comm, sdiff_singleton_eq_erase a, erase_insert hat]
    · rintro ⟨hs, Hb⟩
      obtain ⟨μ, hμ⟩ := ih.mpr hs
      obtain ⟨u, v, huv⟩ := IsCoprime.prod_left fun b hb ↦ (Hb b hb).right
      use fun i ↦ if i = a then u else v * μ i
      have hμ' : (∑ i ∈ t, v * ((μ i * ∏ j ∈ t \ {i}, s j) * s a)) = v * s a := by
        rw [← mul_sum, ← sum_mul, hμ, one_mul]
      rw [sum_cons, cons_eq_insert, sdiff_singleton_eq_erase, erase_insert hat]
      simp only [↓reduceIte, ite_mul]
      rw [← huv, ← hμ', sum_congr rfl]
      intro x hx
      rw [mul_assoc, ite_eq_right fun ha : x = a ↦ hat (ha.casesOn hx)]
      rw [mul_assoc]
      congr
      rw [prod_eq_prod_sdiff_singleton_mul (mem x hx) _]
      congr 2
      rw [sdiff_sdiff_comm, sdiff_singleton_eq_erase a, erase_insert hat]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant406ffe2fb9f644cf67c7aae6c95f386ccc322807a8708eb4b4e8f52811f9bc77.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7877e4d9627e08b8036c4cd9c9a0f15810b9ba2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
