# chainBotCoeff_mul_chainTopCoeff.aux_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59ee2edeade04c28abb7620e5857f6fda667c14b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 467,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb5e6cff-edd2-d2e7-b000-278043218df6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f41c3ba-48cc-c110-1412-f1786d6c7f83",
  "kind": "lemma",
  "lexical_name": "chainBotCoeff_mul_chainTopCoeff.aux_1",
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
  "slug": "chainbotcoeff-mul-chaintopcoeff-aux-1--ac9af98dd096247e170e2956",
  "source": {
    "blob": "59ee2edeade04c28abb7620e5857f6fda667c14b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 467,
    "path": "GRWTSK/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac9af98dd096247e170e29566ff81c5ad239257618f428c2a666fae75787022e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f41c3ba-48cc-c110-1412-f1786d6c7f83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma chainBotCoeff_mul_chainTopCoeff.aux_1
    (hki : P.pairingIn ℤ k i = 0) :
    have _i := P.reflexive_left; letI := P.indexNeg
    P.root i + P.root m ∈ range P.root → P.root j + P.root (-l) ∈ range P.root →
      P.root j + P.root (-k) ∈ range P.root →
    (P.chainBotCoeff i m + 1) * (P.chainBotCoeff j (-k) + 1) =
      (P.chainBotCoeff j (-l) + 1) * (P.chainBotCoeff i k + 1) := by
  intro _ him_mem hjl_mem hjk_mem
  /- Setup some typeclasses and name the 6th root `n`. -/
  letI := P.indexNeg
  have _i : NoZeroSMulDivisors ℤ M := NoZeroSMulDivisors.int_of_charZero R M
  obtain ⟨n, hn⟩ := h₃
  /- Establish basic relationships about roots and their sums / differences. -/
  have hnk_ne : n ≠ k := by rintro rfl; simp [sub_eq_zero, hij, add_sub_assoc] at hn
  have hkj_ne : k ≠ j ∧ P.root k ≠ -P.root j := (IsReduced.linearIndependent_iff _).mp <|
    P.linearIndependent_of_sub_mem_range_root <| h₂ ▸ mem_range_self m
  have hnk_notMem : P.root n - P.root k ∉ range P.root := by
    convert b.sub_notMem_range_root hi hj using 2; rw [hn]; module
  /- Calculate some auxiliary relationships between root pairings. -/
  have aux₀ : P.pairingIn ℤ j i = - P.pairingIn ℤ m i := by
    suffices P.pairing j i = - P.pairing m i from
      algebraMap_injective ℤ R <| by simpa only [algebraMap_pairingIn, map_neg]
    replace hki : P.pairing k i = 0 := by rw [← P.algebraMap_pairingIn ℤ, hki, map_zero]
    simp only [← root_coroot_eq_pairing, ← h₂]
    simp [hki]
  have aux₁ : P.pairingIn ℤ j i = 0 := by
    refine le_antisymm (b.pairingIn_le_zero_of_ne hij.symm hj hi) ?_
    rw [aux₀, neg_nonneg]
    refine P.pairingIn_le_zero_of_root_add_mem ⟨n, ?_⟩
    rw [hn, ← h₂]
    abel
  /- Calculate the pairings between four key root pairs. -/
  have key₁ : P.pairingIn ℤ i k = 0 := by rwa [pairingIn_eq_zero_iff]
  have key₂ : P.pairingIn ℤ i m = 0 := P.pairingIn_eq_zero_iff.mp <| by simpa [aux₁] using aux₀
  have key₃ : P.pairingIn ℤ j k = 2 := by
    suffices 2 ≤ P.pairingIn ℤ j k by have := IsNotG2.pairingIn_mem_zero_one_two (P := P) j k; aesop
    have hn₁ : P.pairingIn ℤ n k = 2 + P.pairingIn ℤ i k - P.pairingIn ℤ j k := by
      apply algebraMap_injective ℤ R
      simp only [map_add, map_sub, algebraMap_pairingIn, ← root_coroot_eq_pairing, hn]
      simp
    have hn₂ : P.pairingIn ℤ n k ≤ 0 := by
      by_contra! contra; exact hnk_notMem <| P.root_sub_root_mem_of_pairingIn_pos contra hnk_ne
    omega
  have key₄ : P.pairingIn ℤ l j = 1 := by
    have hij : P.pairing i j = 0 := by
      rw [pairing_eq_zero_iff, ← P.algebraMap_pairingIn ℤ, aux₁, map_zero]
    have hkj : P.pairing k j = 1 := by
      rw [← P.algebraMap_pairingIn ℤ]
      have := P.pairingIn_pairingIn_mem_set_of_isCrystal_of_isRed' j k (by aesop) (by aesop)
      aesop
    apply algebraMap_injective ℤ R
    rw [algebraMap_pairingIn, ← root_coroot_eq_pairing, ← h₁]
    simp [hkj, hij]
  replace key₄ : P.pairingIn ℤ j l ≠ 0 := by rw [ne_eq, P.pairingIn_eq_zero_iff]; omega
  /- Calculate the value of each of the four terms in the goal. -/
  have hik_mem : P.root i + P.root k ∈ range P.root := ⟨l, by rw [← h₁, add_comm]⟩
  simp only [P.chainBotCoeff_if_one_zero, hik_mem, him_mem, hjl_mem, hjk_mem]
  simp [key₁, key₂, key₃, key₄]

/- An auxiliary result en route to `RootPairing.chainBotCoeff_mul_chainTopCoeff`. -/
open RootPositiveForm in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59ee2edeade04c28abb7620e5857f6fda667c14b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
