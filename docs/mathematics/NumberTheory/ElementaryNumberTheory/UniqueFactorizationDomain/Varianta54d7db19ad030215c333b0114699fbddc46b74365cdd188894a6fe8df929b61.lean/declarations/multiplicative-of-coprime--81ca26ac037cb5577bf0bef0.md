# multiplicative_of_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4772f19b-e672-7b06-0023-f4727d8a025e",
  "kind": "theorem",
  "lexical_name": "multiplicative_of_coprime",
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
  "slug": "multiplicative-of-coprime--81ca26ac037cb5577bf0bef0",
  "source": {
    "blob": "cf401250dde34a934d25e304e587c93dabbe5bfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1209,
    "line": 1139,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Varianta54d7db19ad030215c333b0114699fbddc46b74365cdd188894a6fe8df929b61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81ca26ac037cb5577bf0bef0b7419e92b4fcd06769084196c11e91afaee3505d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Varianta54d7db19ad030215c333b0114699fbddc46b74365cdd188894a6fe8df929b61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4772f19b-e672-7b06-0023-f4727d8a025e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1139–1209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplicative_of_coprime (f : α → β) (a b : α) (h0 : f 0 = 0)
    (h1 : ∀ {x y}, IsUnit y → f (x * y) = f x * f y)
    (hpr : ∀ {p} (i : ℕ), Prime p → f (p ^ i) = f p ^ i)
    (hcp : ∀ {x y}, (∀ p, p ∣ x → p ∣ y → IsUnit p) → f (x * y) = f x * f y) :
    f (a * b) = f a * f b := by
  letI := Classical.decEq α
  by_cases ha0 : a = 0
  · rw [ha0, zero_mul, h0, zero_mul]
  by_cases hb0 : b = 0
  · rw [hb0, mul_zero, h0, mul_zero]
  by_cases hf1 : f 1 = 0
  · calc
      f (a * b) = f (a * b * 1) := by rw [mul_one]
      _ = 0 := by simp only [h1 isUnit_one, hf1, mul_zero]
      _ = f a * f (b * 1) := by simp only [h1 isUnit_one, hf1, mul_zero]
      _ = f a * f b := by rw [mul_one]
  haveI : Nontrivial α := ⟨⟨_, _, ha0⟩⟩
  letI : NormalizationMonoid α := UniqueFactorizationMonoid.normalizationMonoid
  suffices
      f (∏ p in (normalizedFactors a).toFinset ∪ (normalizedFactors b).toFinset,
        p ^ ((normalizedFactors a).count p + (normalizedFactors b).count p)) =
      f (∏ p in (normalizedFactors a).toFinset ∪ (normalizedFactors b).toFinset,
        p ^ (normalizedFactors a).count p) *
      f (∏ p : α in (normalizedFactors a).toFinset ∪ (normalizedFactors b).toFinset,
        p ^ (normalizedFactors b).count p) by
    obtain ⟨ua, a_eq⟩ := normalizedFactors_prod ha0
    obtain ⟨ub, b_eq⟩ := normalizedFactors_prod hb0
    rw [← a_eq, ← b_eq, mul_right_comm (Multiset.prod (normalizedFactors a)) ua
        (Multiset.prod (normalizedFactors b) * ub), h1 ua.isUnit, h1 ub.isUnit, h1 ua.isUnit, ←
      mul_assoc, h1 ub.isUnit, mul_right_comm _ (f ua), ← mul_assoc]
    congr
    rw [← (normalizedFactors a).map_id, ← (normalizedFactors b).map_id,
      Finset.prod_multiset_map_count, Finset.prod_multiset_map_count,
      Finset.prod_subset (Finset.subset_union_left _ (normalizedFactors b).toFinset),
      Finset.prod_subset (Finset.subset_union_right _ (normalizedFactors b).toFinset), ←
      Finset.prod_mul_distrib]
    simp_rw [id.def, ← pow_add, this]
    all_goals simp only [Multiset.mem_toFinset]
    · intro p _ hpb
      simp [hpb]
    · intro p _ hpa
      simp [hpa]
  refine' multiplicative_prime_power _ _ _ _ _ @h1 @hpr @hcp
  all_goals simp only [Multiset.mem_toFinset, Finset.mem_union]
  · rintro p (hpa | hpb) <;> apply prime_of_normalized_factor <;> assumption
  · rintro p (hp | hp) q (hq | hq) hdvd <;>
      rw [← normalize_normalized_factor _ hp, ← normalize_normalized_factor _ hq] <;>
      exact
        normalize_eq_normalize hdvd
          ((prime_of_normalized_factor _ hp).irreducible.dvd_symm
            (prime_of_normalized_factor _ hq).irreducible hdvd)
#align unique_factorization_monoid.multiplicative_of_coprime UniqueFactorizationMonoid.multiplicative_of_coprime

end Multiplicative

end UniqueFactorizationMonoid

namespace Associates

open UniqueFactorizationMonoid Associated Multiset

variable [CancelCommMonoidWithZero α]

/-- `FactorSet α` representation elements of unique factorization domain as multisets.
`Multiset α` produced by `normalizedFactors` are only unique up to associated elements, while the
multisets in `FactorSet α` are unique by equality and restricted to irreducible elements. This
gives us a representation of each element as a unique multisets (or the added ⊤ for 0), which has a
complete lattice structure. Infimum is the greatest common divisor and supremum is the least common
multiple.
-/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Varianta54d7db19ad030215c333b0114699fbddc46b74365cdd188894a6fe8df929b61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/UniqueFactorizationDomain/Varianta54d7db19ad030215c333b0114699fbddc46b74365cdd188894a6fe8df929b61.lean#L1139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf401250dde34a934d25e304e587c93dabbe5bfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
