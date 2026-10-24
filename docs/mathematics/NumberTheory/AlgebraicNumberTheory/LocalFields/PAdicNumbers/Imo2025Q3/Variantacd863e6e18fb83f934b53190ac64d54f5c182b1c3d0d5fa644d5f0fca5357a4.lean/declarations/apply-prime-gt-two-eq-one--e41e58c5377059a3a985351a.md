# apply_prime_gt_two_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa09bcc0c3fa865b9ef049fb56560c9cfd7ad0e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/acd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea4d1f29-e24e-6f20-538d-3f2c8512cc0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f0d9d56-7308-9534-7c4a-ac02879d7fb3",
  "kind": "theorem",
  "lexical_name": "apply_prime_gt_two_eq_one",
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
  "slug": "apply-prime-gt-two-eq-one--e41e58c5377059a3a985351a",
  "source": {
    "blob": "fa09bcc0c3fa865b9ef049fb56560c9cfd7ad0e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 90,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variantacd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e41e58c5377059a3a985351ae2b727a6ef0843ea9f9a17b21ad33966d80b4680",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variantacd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f0d9d56-7308-9534-7c4a-ac02879d7fb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_prime_gt_two_eq_one (hf : IsBonza f) (hnf : ¬ ∀ x > (0 : ℕ), f x = x) :
    ∀ p > 2, p.Prime → f p = 1 := by
  obtain ⟨N, hN⟩ : ∃ N, ∀ p > N, p.Prime → f p = 1 :=
    hf.not_id_apply_prime_of_gt_eq_one hnf
  have apply_dvd_pow_sub {a p : ℕ} (ha : 0 < a) (pp : p.Prime) (hp : N < p) :
      (f a : ℤ) ∣ p ^ a - 1 := by
    simpa [hN p hp pp, Nat.cast_one, one_pow] using hf.1 a p ha (by lia)
  intro q hq qp
  obtain ⟨k, ha1, ha2⟩ : ∃ k, k ≤ q ∧ f q = q ^ k :=
    (dvd_prime_pow qp).mp (hf.apply_dvd_pow (zero_lt_of_lt hq))
  by_cases ch : k = 0
  · simpa [ch] using ha2
  · have {p : ℕ} (pp : p.Prime) (hp : N < p) : (q : ℤ) ∣ p ^ q - 1 := by calc
      _ ∣ (f q : ℤ) := by simp [ha2, natCast_pow q k, ch]
      _ ∣ _ := apply_dvd_pow_sub (zero_lt_of_lt hq) pp hp
    obtain ⟨p, hp⟩ : ∃ p > N, p.Prime ∧ p ≡ -1 [ZMOD q] :=
      forall_exists_prime_gt_and_zmodEq N (by lia) isCoprime_one_left.neg_left
    have : 1 ≡ -1 [ZMOD q] := by calc
      _ ≡ p ^ q [ZMOD q] := by grind [Int.modEq_iff_dvd]
      _ ≡ p [ZMOD q] := ModEq.pow_prime_eq_self qp p
      _ ≡ _ [ZMOD q] := hp.2.2
    rw [modEq_comm, Int.modEq_iff_dvd] at this
    have : (q : ℤ).natAbs ≤ (1 - (-1) : ℤ).natAbs := natAbs_le_of_dvd_ne_zero this (by norm_num)
    lia

/-- Therefore, if a bonza function is not identity, then every `f x` is a pow of two -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variantacd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Imo2025Q3/Variantacd863e6e18fb83f934b53190ac64d54f5c182b1c3d0d5fa644d5f0fca5357a4.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa09bcc0c3fa865b9ef049fb56560c9cfd7ad0e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
