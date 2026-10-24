# exists_sum_eq_one_iff_pairwise_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c7d74598cb76d7da21544e5765cf1cc956aa1e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:acc76daf-6f2b-048a-b9ee-a028bc3124ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a0df232-4efe-9e56-1af2-185cb811d83c",
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
  "slug": "exists-sum-eq-one-iff-pairwise-coprime--9eb3feeb6448b501cbf44581",
  "source": {
    "blob": "9c7d74598cb76d7da21544e5765cf1cc956aa1e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 111,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9eb3feeb6448b501cbf44581c94ae5392ca6b361d5b203d3026b9cc67ef05bda",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a0df232-4efe-9e56-1af2-185cb811d83c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_sum_eq_one_iff_pairwise_coprime [DecidableEq I] (h : t.Nonempty) :
    (∃ μ : I → R, (∑ i in t, μ i * ∏ j in t \ {i}, s j) = 1) ↔
      Pairwise (IsCoprime on fun i : t ↦ s i) := by
  refine' h.cons_induction _ _
  · simp only [sum_singleton, Finset.sdiff_self, prod_empty, mul_one, exists_apply_eq,
               Pairwise, Ne.def, true_iff_iff]
    rintro a ⟨i, hi⟩ ⟨j, hj⟩ h
    rw [Finset.mem_singleton] at hi hj
    simp [hi, hj] at h
  intro a t hat h ih
  rw [pairwise_cons']
  have mem : ∀ x ∈ t, a ∈ insert a t \ {x} := fun x hx ↦ by
    rw [mem_sdiff, mem_singleton]
    refine ⟨mem_insert_self _ _, fun ha ↦ hat (ha ▸ hx)⟩
  constructor
  · rintro ⟨μ, hμ⟩
    rw [sum_cons, cons_eq_insert, sdiff_singleton_eq_erase, erase_insert hat] at hμ
    refine' ⟨ih.mp ⟨Pi.single h.choose (μ a * s h.choose) + μ * fun _ ↦ s a, ?_⟩, fun b hb ↦ ?_⟩
    · rw [prod_eq_mul_prod_diff_singleton h.choose_spec, ← mul_assoc, ←
        @if_pos _ _ h.choose_spec R (_ * _) 0, ← sum_pi_single', ← sum_add_distrib] at hμ
      rw [← hμ, sum_congr rfl]
      intro x hx
      dsimp -- porting note: terms were showing as sort of `HAdd.hadd` instead of `+`
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
        ⟨μ a * ∏ i in t \ {b}, s i, ∑ i in t, μ i * ∏ j in t \ {i}, s j, ?_⟩
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
    have hμ' : (∑ i in t, v * ((μ i * ∏ j in t \ {i}, s j) * s a)) = v * s a := by
      rw [← mul_sum, ← sum_mul, hμ, one_mul]
    rw [sum_cons, cons_eq_insert, sdiff_singleton_eq_erase, erase_insert hat, if_pos rfl,
      ← huv, ← hμ', sum_congr rfl]
    intro x hx
    rw [mul_assoc, if_neg fun ha : x = a ↦ hat (ha.casesOn hx)]
    rw [mul_assoc]
    congr
    rw [prod_eq_prod_diff_singleton_mul (mem x hx) _]
    congr 2
    rw [sdiff_sdiff_comm, sdiff_singleton_eq_erase a, erase_insert hat]
#align exists_sum_eq_one_iff_pairwise_coprime exists_sum_eq_one_iff_pairwise_coprime

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c7d74598cb76d7da21544e5765cf1cc956aa1e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
