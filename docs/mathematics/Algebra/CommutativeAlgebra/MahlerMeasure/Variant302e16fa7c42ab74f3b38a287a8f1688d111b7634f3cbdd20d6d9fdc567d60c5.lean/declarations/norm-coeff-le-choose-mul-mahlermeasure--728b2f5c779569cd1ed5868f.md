# norm_coeff_le_choose_mul_mahlerMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2728419ad1445bcdb12ee8096254dd55ccc58278",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 359,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/302e16fa7c42ab74f3b38a287a8f1688d111b7634f3cbdd20d6d9fdc567d60c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ec6455a-b68d-4e81-3e1b-f9179dbd5bd2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db4174ad-2679-b7ca-812d-0e2f3333a2d6",
  "kind": "theorem",
  "lexical_name": "norm_coeff_le_choose_mul_mahlerMeasure",
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
  "slug": "norm-coeff-le-choose-mul-mahlermeasure--728b2f5c779569cd1ed5868f",
  "source": {
    "blob": "2728419ad1445bcdb12ee8096254dd55ccc58278",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 359,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant302e16fa7c42ab74f3b38a287a8f1688d111b7634f3cbdd20d6d9fdc567d60c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:728b2f5c779569cd1ed5868fa245b06b451f2193e0bc787c309d1f1cc682de23",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MahlerMeasure/Variant302e16fa7c42ab74f3b38a287a8f1688d111b7634f3cbdd20d6d9fdc567d60c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db4174ad-2679-b7ca-812d-0e2f3333a2d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_coeff_le_choose_mul_mahlerMeasure (n : ℕ) (p : ℂ[X]) :
    ‖p.coeff n‖ ≤ (p.natDegree).choose n * p.mahlerMeasure := by
  by_cases hp : p = 0
  · simp [hp]
  rcases lt_or_ge p.natDegree n with hlt | hn
  · simp [coeff_eq_zero_of_natDegree_lt hlt, Nat.choose_eq_zero_of_lt hlt]
  rw [mahlerMeasure_eq_leadingCoeff_mul_prod_roots, mul_left_comm,
    coeff_eq_esymm_roots_of_card (splits_iff_card_roots.mp (IsAlgClosed.splits p)) hn, mul_assoc,
    norm_mul, norm_mul, norm_pow, norm_neg, norm_one, one_pow, one_mul,
    mul_le_mul_iff_right₀ (by simp [leadingCoeff_ne_zero.mpr hp]), esymm,
    Finset.sum_multiset_map_count]
  apply le_trans <| norm_sum_le _ _
  simp_rw [nsmul_eq_mul, norm_mul, _root_.norm_natCast]
  let S := powersetCard (p.natDegree - n) p.roots
  --to be used later in the calc block:
  have (x : Multiset ℂ) (hx : x ∈ S.toFinset) : ∏ x_1 ∈ x.toFinset, ‖x_1‖ ^ count x_1 x
      ≤ ∏ m ∈ p.roots.toFinset, max 1 ‖m‖ ^ count m p.roots := by
    rw [mem_toFinset, mem_powersetCard] at hx
    calc
    ∏ z ∈ x.toFinset, ‖z‖ ^ count z x
      ≤ ∏ z ∈ x.toFinset, (1 ⊔ ‖z‖) ^ count z x := by
      gcongr with a
      exact le_max_right 1 ‖a‖
    _ ≤ ∏ z ∈ p.roots.toFinset, (1 ⊔ ‖z‖) ^ count z x := by
      simp_rw [← coe_nnnorm]
      norm_cast
      exact Finset.prod_le_prod_of_subset_of_one_le (toFinset_subset.mpr (subset_of_le hx.1))
        (fun a _ _ ↦ one_le_pow₀ (le_max_left 1 ‖a‖))
    _ ≤ ∏ z ∈ p.roots.toFinset, (1 ⊔ ‖z‖) ^ count z p.roots := by
      gcongr with a
      · exact le_max_left 1 ‖a‖
      · exact hx.1
  --final calc block:
  calc ∑ x ∈ S.toFinset, count x S * ‖x.prod‖
    _ ≤ ∑ x ∈ S.toFinset, count x S * ((p.roots).map (fun a ↦ max 1 ‖a‖)).prod := by
      gcongr with x hx
      rw [Finset.prod_multiset_map_count, Finset.prod_multiset_count, norm_prod]
      simp_rw [norm_pow]
      exact this x hx
    _ = p.natDegree.choose n * (p.roots.map (fun a ↦ 1 ⊔ ‖a‖)).prod := by
      rw [← Finset.sum_mul]
      congr
      norm_cast
      simp only [mem_powersetCard, mem_toFinset, imp_self, implies_true, sum_count_eq_card,
        card_powersetCard, S, ← Nat.choose_symm hn]
      congr
      exact splits_iff_card_roots.mp <| IsAlgClosed.splits p

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MahlerMeasure/Variant302e16fa7c42ab74f3b38a287a8f1688d111b7634f3cbdd20d6d9fdc567d60c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant302e16fa7c42ab74f3b38a287a8f1688d111b7634f3cbdd20d6d9fdc567d60c5.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2728419ad1445bcdb12ee8096254dd55ccc58278` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
