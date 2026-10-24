# chainBotCoeff_mul_chainTopCoeff.aux_2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a3c09fd-e26c-4aaa-809b-c61c99cbee46",
  "kind": "lemma",
  "lexical_name": "chainBotCoeff_mul_chainTopCoeff.aux_2",
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
  "slug": "chainbotcoeff-mul-chaintopcoeff-aux-2--d95d850e491f74cd739760d1",
  "source": {
    "blob": "5aebdfdd479dbc358d7ef9544e1fc063fcb66ceb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 536,
    "path": "GRWTSK/Algebra/LinearAlgebra/Chain/Variant18c604ae52bd03440af1dd5f5446e9b85b514eed61a1f8a38810e044f98a94fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d95d850e491f74cd739760d1aee785141f2ffd8938ac4357a8297b9fe6a6c162",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Chain/Variant18c604ae52bd03440af1dd5f5446e9b85b514eed61a1f8a38810e044f98a94fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a3c09fd-e26c-4aaa-809b-c61c99cbee46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 536–602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma chainBotCoeff_mul_chainTopCoeff.aux_2
    (hki' : P.pairingIn ℤ k i < 0) (hkj' : 0 < P.pairingIn ℤ k j) :
    have _i := P.reflexive_left; letI := P.indexNeg
    P.root i + P.root m ∈ range P.root → P.root j + P.root (-l) ∈ range P.root →
      P.root j + P.root (-k) ∈ range P.root →
    ¬ (P.chainBotCoeff i m = 1 ∧ P.chainBotCoeff j (-l) = 0) := by
  intro _ him_mem hjl_mem hjk_mem
  letI := P.indexNeg
  /- Setup some typeclasses. -/
  have _i : NoZeroSMulDivisors ℤ M := NoZeroSMulDivisors.int_of_charZero R M
  /- Establish basic relationships about roots and their sums / differences. -/
  have hkj_ne : k ≠ j ∧ P.root k ≠ -P.root j := (IsReduced.linearIndependent_iff _).mp <|
    P.linearIndependent_of_sub_mem_range_root <| h₂ ▸ mem_range_self m
  have hlj_mem : P.root l - P.root j ∈ range P.root := by rwa [← h₁]
  /- It is sufficient to prove that two key pairings vanish. -/
  suffices ¬ (P.pairingIn ℤ m i = 0 ∧ P.pairingIn ℤ l j ≠ 0) by
    contrapose! this
    rcases ne_or_eq (P.pairingIn ℤ m i) 0 with hmi | hmi
    · simpa [hmi, this.1, P.pairingIn_eq_zero_iff (i := i)] using chainBotCoeff_if_one_zero him_mem
    refine ⟨hmi, fun hlj ↦ ?_⟩
    rw [chainBotCoeff_if_one_zero hjl_mem] at this
    simp [P.pairingIn_eq_zero_iff (i := j), hlj] at this
  /- Assume for contradiction that the two pairings do not vanish. -/
  rintro ⟨hmi, hlj⟩
  /- Use the assumptions to calculate various relationships between root pairings. -/
  have aux₀ : P.pairingIn ℤ j i = P.pairingIn ℤ k i := by
    suffices P.pairing j i = P.pairing k i from
      algebraMap_injective ℤ R <| by simpa only [algebraMap_pairingIn]
    replace h₂ : P.root k = P.root j + P.root m := (add_eq_of_eq_sub' h₂.symm).symm
    simpa [← P.root_coroot_eq_pairing k, h₂, ← P.algebraMap_pairingIn ℤ]
  obtain ⟨aux₁, aux₂⟩ : P.pairingIn ℤ i j = -1 ∧ P.pairingIn ℤ k j = 2 := by
    suffices 0 < - P.pairingIn ℤ i j ∧ - P.pairingIn ℤ i j < P.pairingIn ℤ k j ∧
      P.pairingIn ℤ k j ≤ 2 by omega
    refine ⟨?_, ?_, ?_⟩
    · rwa [neg_pos, P.pairingIn_lt_zero_iff, aux₀]
    · suffices P.pairingIn ℤ l j = P.pairingIn ℤ i j + P.pairingIn ℤ k j by
        have := zero_le_pairingIn_of_root_sub_mem hlj_mem; omega
      suffices P.pairing l j = P.pairing i j + P.pairing k j from
        algebraMap_injective ℤ R <| by simpa only [algebraMap_pairingIn, map_add]
      simp [← P.root_coroot_eq_pairing l, ← h₁, add_comm]
    · have := IsNotG2.pairingIn_mem_zero_one_two (P := P) k j
      aesop
  /- Choose a positive invariant form. -/
  obtain B : RootPositiveForm ℤ P := have : Fintype ι := Fintype.ofFinite ι; P.posRootForm ℤ
  /- Calculate root length relationships implied by the pairings calculated above. -/
  have ⟨aux₃, aux₄⟩ : B.rootLength i = B.rootLength j ∧ B.rootLength j < B.rootLength k := by
    have hij_le : B.rootLength i ≤ B.rootLength j := B.rootLength_le_of_pairingIn_eq <| Or.inl aux₁
    have hjk_lt : B.rootLength j < B.rootLength k :=
      B.rootLength_lt_of_pairingIn_notMem (by aesop) hkj_ne.2 <| by aesop
    refine ⟨?_, hjk_lt⟩
    simpa [posForm, rootLength] using (B.toInvariantForm.apply_eq_or_of_apply_ne (i := j) (j := k)
      (by simpa [posForm, rootLength] using hjk_lt.ne) i).resolve_right
      (by simpa [posForm, rootLength] using (lt_of_le_of_lt hij_le hjk_lt).ne)
  /- Use the root length results to calculate a final root pairing. -/
  have aux₅ : P.pairingIn ℤ k i = -1 := by
    suffices P.pairingIn ℤ j i = -1 by omega
    have aux : B.toInvariantForm.form (P.root i) (P.root i) =
        B.toInvariantForm.form (P.root j) (P.root j) := by simpa [posForm, rootLength] using aux₃
    have := P.pairingIn_pairingIn_mem_set_of_length_eq_of_ne aux hij (b.root_ne_neg_of_ne hi hj hij)
    aesop
  /- Use the newly calculated pairing result to obtain further information about root lengths. -/
  have aux₆ : B.rootLength k ≤ B.rootLength i := B.rootLength_le_of_pairingIn_eq <| Or.inl aux₅
  /- We now have contradictory information about root lengths. -/
  omega

open chainBotCoeff_mul_chainTopCoeff in
/-- This is Lemma 2.6 from [Geck](Geck2017). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Chain/Variant18c604ae52bd03440af1dd5f5446e9b85b514eed61a1f8a38810e044f98a94fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Chain/Variant18c604ae52bd03440af1dd5f5446e9b85b514eed61a1f8a38810e044f98a94fa.lean#L536).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5aebdfdd479dbc358d7ef9544e1fc063fcb66ceb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
