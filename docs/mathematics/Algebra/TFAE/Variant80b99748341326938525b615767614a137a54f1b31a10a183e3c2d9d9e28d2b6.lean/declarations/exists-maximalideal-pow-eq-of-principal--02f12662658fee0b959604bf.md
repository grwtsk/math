# exists_maximalIdeal_pow_eq_of_principal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56c03acf7009e6b550e52ff6b48b1bc9fb1d1666",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ede583fc-2f0b-82f8-8319-153e6335c3da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:24a7850a-6d44-101b-39b4-2fac087c131e",
  "kind": "theorem",
  "lexical_name": "exists_maximalIdeal_pow_eq_of_principal",
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
  "slug": "exists-maximalideal-pow-eq-of-principal--02f12662658fee0b959604bf",
  "source": {
    "blob": "56c03acf7009e6b550e52ff6b48b1bc9fb1d1666",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 40,
    "path": "GRWTSK/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02f12662658fee0b959604bf396c04c7b1f7d552a585e0b92e7fadb5db993c0b",
  "verification": {
    "reference": "docs/verification/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24a7850a-6d44-101b-39b4-2fac087c131e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_maximalIdeal_pow_eq_of_principal [IsNoetherianRing R] [IsLocalRing R] [IsDomain R]
    (h' : (maximalIdeal R).IsPrincipal) (I : Ideal R) (hI : I ≠ ⊥) :
    ∃ n : ℕ, I = maximalIdeal R ^ n := by
  by_cases h : IsField R
  · let _ := h.toField
    exact ⟨0, by simp [(eq_bot_or_eq_top I).resolve_left hI]⟩
  classical
  obtain ⟨x, hx : _ = Ideal.span _⟩ := h'
  by_cases hI' : I = ⊤
  · use 0; rw [pow_zero, hI', Ideal.one_eq_top]
  have H : ∀ r : R, ¬IsUnit r ↔ x ∣ r := fun r =>
    (SetLike.ext_iff.mp hx r).trans Ideal.mem_span_singleton
  have : x ≠ 0 := by
    rintro rfl
    apply Ring.ne_bot_of_isMaximal_of_not_isField (maximalIdeal.isMaximal R) h
    simp [hx]
  have hx' := IsDiscreteValuationRing.irreducible_of_span_eq_maximalIdeal x this hx
  have H' : ∀ r : R, r ≠ 0 → r ∈ nonunits R → ∃ n : ℕ, Associated (x ^ n) r := by
    intro r hr₁ hr₂
    obtain ⟨f, hf₁, rfl, hf₂⟩ := (WfDvdMonoid.not_isUnit_iff_exists_factors_eq r hr₁).mp hr₂
    have : ∀ b ∈ f, Associated x b := by
      intro b hb
      exact Irreducible.associated_of_dvd hx' (hf₁ b hb) ((H b).mp (hf₁ b hb).1)
    clear hr₁ hr₂ hf₁
    induction f using Multiset.induction with
    | empty => exact (hf₂ rfl).elim
    | cons fa fs fh => ?_
    rcases eq_or_ne fs ∅ with (rfl | hf')
    · use 1
      rw [pow_one, Multiset.prod_cons, Multiset.empty_eq_zero, Multiset.prod_zero, mul_one]
      exact this _ (Multiset.mem_cons_self _ _)
    · obtain ⟨n, hn⟩ := fh hf' fun b hb => this _ (Multiset.mem_cons_of_mem hb)
      use n + 1
      rw [pow_add, Multiset.prod_cons, mul_comm, pow_one]
      exact Associated.mul_mul (this _ (Multiset.mem_cons_self _ _)) hn
  have : ∃ n : ℕ, x ^ n ∈ I := by
    obtain ⟨r, hr₁, hr₂⟩ : ∃ r : R, r ∈ I ∧ r ≠ 0 := by
      by_contra! h; apply hI; rw [eq_bot_iff]; exact h
    obtain ⟨n, u, rfl⟩ := H' r hr₂ (le_maximalIdeal hI' hr₁)
    use n
    rwa [← I.unit_mul_mem_iff_mem u.isUnit, mul_comm]
  use Nat.find this
  apply le_antisymm
  · change ∀ s ∈ I, s ∈ _
    by_contra! ⟨s, hs₁, hs₂⟩
    apply hs₂
    by_cases hs₃ : s = 0; · rw [hs₃]; exact zero_mem _
    obtain ⟨n, u, rfl⟩ := H' s hs₃ (le_maximalIdeal hI' hs₁)
    rw [mul_comm, Ideal.unit_mul_mem_iff_mem _ u.isUnit] at hs₁ ⊢
    apply Ideal.pow_le_pow_right (Nat.find_min' this hs₁)
    apply Ideal.pow_mem_pow
    exact (H _).mpr (dvd_refl _)
  · rw [hx, Ideal.span_singleton_pow, Ideal.span_le, Set.singleton_subset_iff]
    exact Nat.find_spec this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TFAE/Variant80b99748341326938525b615767614a137a54f1b31a10a183e3c2d9d9e28d2b6.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56c03acf7009e6b550e52ff6b48b1bc9fb1d1666` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
