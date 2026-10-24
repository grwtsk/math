# prime_dvd_of_dvd_norm_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f1515299068de52e564fca7761d2e32e313e5d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 554,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7208d430-2064-48c2-5701-c29ce4d9430e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:210807bb-5068-abe6-9e58-bfbedb49624e",
  "kind": "theorem",
  "lexical_name": "prime_dvd_of_dvd_norm_sub_one",
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
  "slug": "prime-dvd-of-dvd-norm-sub-one--c335f4e0ab96e4468efaeaa3",
  "source": {
    "blob": "8f1515299068de52e564fca7761d2e32e313e5d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 618,
    "line": 554,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Varianta6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c335f4e0ab96e4468efaeaa3c058f35e94195375a93bbf34d05a0d5a6ac46e48",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Varianta6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:210807bb-5068-abe6-9e58-bfbedb49624e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 554–618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_dvd_of_dvd_norm_sub_one {n : ℕ} (hn : 2 ≤ n) {K : Type*}
    [Field K] [NumberField K] {ζ : K} {p : ℕ} [hF : Fact (Nat.Prime p)] (hζ : IsPrimitiveRoot ζ n)
    (hp : haveI : NeZero n := NeZero.of_gt hn; (p : ℤ) ∣ norm ℤ (hζ.toInteger - 1)) :
    p ∣ n := by
  have : NeZero n := NeZero.of_gt hn
  obtain ⟨μ, hC, hμ, h⟩ :
      ∃ μ : ℚ⟮ζ⟯, ∃ (_ : IsCyclotomicExtension {n} ℚ ℚ⟮ζ⟯), ∃ (hμ : IsPrimitiveRoot μ n),
      norm ℤ (hζ.toInteger - 1) = norm ℤ (hμ.toInteger - 1) ^ Module.finrank ℚ⟮ζ⟯ K := by
    refine ⟨IntermediateField.AdjoinSimple.gen ℚ ζ,
      intermediateField_adjoin_isCyclotomicExtension ℚ hζ, coe_submonoidClass_iff.mp hζ, ?_⟩
    have : NumberField ℚ⟮ζ⟯ := of_intermediateField _
    rw [norm_eq_iff ℤ (Sₘ := K) (Rₘ := ℚ) le_rfl, map_sub, map_one, RingOfIntegers.map_mk,
      show ζ - 1 = algebraMap ℚ⟮ζ⟯ K (IntermediateField.AdjoinSimple.gen ℚ ζ - 1) by rfl,
      ← norm_norm (S := ℚ⟮ζ⟯), Algebra.norm_algebraMap, map_pow, map_pow, ← norm_localization ℤ
      (nonZeroDivisors ℤ) (Sₘ := ℚ⟮ζ⟯), map_sub (algebraMap _ _), RingOfIntegers.map_mk, map_one]
  rw [h] at hp
  rsuffices ⟨q, hq, t, s, ht₁, ht₂, hs⟩ :
      ∃ q, q.Prime ∧ ∃ t s, t ≠ 0 ∧ n = q ^ t ∧ (p : ℤ) ∣ (q : ℤ) ^ s := by
    obtain hn | hn := lt_or_eq_of_le hn
    · by_cases! h : ∃ q, q.Prime ∧ ∃ t, q ^ t = n
      · obtain ⟨q, hq, t, hn'⟩ := h
        have : Fact (Nat.Prime q) := ⟨hq⟩
        cases t with
        | zero => simp [← hn'] at hn
        | succ r =>
          rw [← hn'] at hC hμ
          refine ⟨q, hq, r + 1, Module.finrank (ℚ⟮ζ⟯) K, r.add_one_ne_zero, hn'.symm, ?_⟩
          by_cases hq' : q = 2
          · cases r with
            | zero =>
                rw [← hn', hq', zero_add, pow_one] at hn
                exact hn.false.elim
            | succ k =>
                rw [hq'] at hC hμ ⊢
                rwa [hμ.norm_toInteger_sub_one_of_eq_two_pow] at hp
          · rwa [hμ.norm_toInteger_sub_one_of_prime_ne_two hq'] at hp
      · rw [IsPrimitiveRoot.norm_toInteger_sub_one_eq_one hμ hn, one_pow,
          Int.natCast_dvd_ofNat, Nat.dvd_one] at hp
        · exact (Nat.Prime.ne_one hF.out hp).elim
        · exact fun {p} a k ↦ h p a k
    · rw [← hn] at hμ hC ⊢
      refine ⟨2, Nat.prime_two, 1, Module.finrank ℚ⟮ζ⟯ K, one_ne_zero, by rw [pow_one], ?_⟩
      rwa [hμ.norm_toInteger_sub_one_of_eq_two, neg_eq_neg_one_mul, mul_pow, IsUnit.dvd_mul_left
        ((isUnit_pow_iff Module.finrank_pos.ne').mpr isUnit_neg_one)] at hp
  have : p = q := by
    rw [← Int.natCast_pow, Int.natCast_dvd_natCast] at hs
    exact (Nat.prime_dvd_prime_iff_eq hF.out hq).mp (hF.out.dvd_of_dvd_pow hs)
  rw [ht₂, this]
  exact dvd_pow_self _ ht₁

end IsPrimitiveRoot

section discr

namespace IsCyclotomicExtension.Rat

open nonZeroDivisors IsPrimitiveRoot

variable (K p k)
variable [CharZero K]

set_option backward.defeqAttrib.useBackward true in
/-- We compute the absolute discriminant of a `p ^ k`-th cyclotomic field.
  Beware that in the cases `p ^ k = 1` and `p ^ k = 2` the formula uses `1 / 2 = 0` and `0 - 1 = 0`.
  See also the results below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Varianta6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Varianta6dfcdc91575222e6daef4b1b08ed0a9f8fa78e66b87ab804375d2e9fd6116b8.lean#L554).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f1515299068de52e564fca7761d2e32e313e5d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
