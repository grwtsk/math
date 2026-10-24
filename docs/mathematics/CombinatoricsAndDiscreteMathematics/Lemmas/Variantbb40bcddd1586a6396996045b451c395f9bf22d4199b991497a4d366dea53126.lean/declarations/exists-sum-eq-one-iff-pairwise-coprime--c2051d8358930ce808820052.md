# exists_sum_eq_one_iff_pairwise_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a7eb3f7-2eb6-d36d-ebb8-221a94b15779",
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
  "slug": "exists-sum-eq-one-iff-pairwise-coprime--c2051d8358930ce808820052",
  "source": {
    "blob": "cc422fe7de776d67e9726c70734ad1420ecb1750",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2051d8358930ce80882005269da64765fa8d95daadf015ba511398bae5cf1ca",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a7eb3f7-2eb6-d36d-ebb8-221a94b15779`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–174.

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
      · rw [prod_eq_mul_prod_diff_singleton h.choose_spec, ← mul_assoc, ←
          @if_pos _ _ h.choose_spec R (_ * _) 0, ← sum_pi_single', ← sum_add_distrib] at hμ
        rw [← hμ, sum_congr rfl]
        intro x hx
        dsimp -- Porting note: terms were showing as sort of `HAdd.hadd` instead of `+`
        -- this whole proof pretty much breaks and has to be rewritten from scratch
        rw [add_mul]
        congr 1
        · by_cases hx : x = h.choose
          · rw [hx, Pi.single_eq_same, Pi.single_eq_same]
          · rw [Pi.single_eq_of_ne hx, Pi.single_eq_of_ne hx, zero_mul]
        · rw [mul_assoc]
          congr
          rw [prod_eq_prod_diff_singleton_mul (mem x hx) _, mul_comm]
          congr 2
          rw [sdiff_sdiff_comm, sdiff_singleton_eq_erase a, erase_insert hat]
      · have : IsCoprime (s b) (s a) :=
          ⟨μ a * ∏ i ∈ t \ {b}, s i, ∑ i ∈ t, μ i * ∏ j ∈ t \ {i}, s j, ?_⟩
        · exact ⟨this.symm, this⟩
        rw [mul_assoc, ← prod_eq_prod_diff_singleton_mul hb, sum_mul, ← hμ, sum_congr rfl]
        intro x hx
        rw [mul_assoc]
        congr
        rw [prod_eq_prod_diff_singleton_mul (mem x hx) _]
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
      rw [mul_assoc, if_neg fun ha : x = a ↦ hat (ha.casesOn hx)]
      rw [mul_assoc]
      congr
      rw [prod_eq_prod_diff_singleton_mul (mem x hx) _]
      congr 2
      rw [sdiff_sdiff_comm, sdiff_singleton_eq_erase a, erase_insert hat]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc422fe7de776d67e9726c70734ad1420ecb1750` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
