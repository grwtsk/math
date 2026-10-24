# exists_approx_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:018d51da-55fa-a54e-cec8-e22ae219da2b",
  "kind": "theorem",
  "lexical_name": "exists_approx_aux",
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
  "slug": "exists-approx-aux--080e9e3a2d9536eeb847a116",
  "source": {
    "blob": "4e0bfeeda0a7b377fbaf3647af8e71f3e5945d0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 74,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variant291a32ae11ad4da7163bcd9bfba14bb292e4410631d7b2cd3984ee336c01b018.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:080e9e3a2d9536eeb847a116d1afe3ac60e70670c6422e26dfdae22824fa619e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variant291a32ae11ad4da7163bcd9bfba14bb292e4410631d7b2cd3984ee336c01b018.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:018d51da-55fa-a54e-cec8-e22ae219da2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_approx_aux (n : ℕ) (h : abv.IsAdmissible) :
    ∀ {ε : ℝ} (_hε : 0 < ε) {b : R} (_hb : b ≠ 0) (A : Fin (h.card ε ^ n).succ → Fin n → R),
      ∃ i₀ i₁, i₀ ≠ i₁ ∧ ∀ k, (abv (A i₁ k % b - A i₀ k % b) : ℝ) < abv b • ε := by
  haveI := Classical.decEq R
  induction n with
  | zero =>
    intro ε _hε b _hb A
    refine ⟨0, 1, ?_, ?_⟩
    · simp
    rintro ⟨i, ⟨⟩⟩
  | succ n ih =>
  intro ε hε b hb A
  let M := h.card ε
  -- By the "nicer" pigeonhole principle, we can find a collection `s`
  -- of more than `M^n` remainders where the first components lie close together:
  obtain ⟨s, s_inj, hs⟩ :
    ∃ s : Fin (M ^ n).succ → Fin (M ^ n.succ).succ,
      Function.Injective s ∧ ∀ i₀ i₁, (abv (A (s i₁) 0 % b - A (s i₀) 0 % b) : ℝ) < abv b • ε := by
    -- We can partition the `A`s into `M` subsets where
    -- the first components lie close together:
    obtain ⟨t, ht⟩ :
      ∃ t : Fin (M ^ n.succ).succ → Fin M,
        ∀ i₀ i₁, t i₀ = t i₁ → (abv (A i₁ 0 % b - A i₀ 0 % b) : ℝ) < abv b • ε :=
      h.exists_partition hε hb fun x ↦ A x 0
    -- Since the `M` subsets contain more than `M * M^n` elements total,
    -- there must be a subset that contains more than `M^n` elements.
    obtain ⟨s, hs⟩ :=
      Fintype.exists_lt_card_fiber_of_mul_lt_card (f := t)
        (by simpa only [Fintype.card_fin, pow_succ'] using Nat.lt_succ_self (M ^ n.succ))
    refine ⟨fun i ↦ (Finset.univ.filter fun x ↦ t x = s).toList.get <| i.castLE ?_, fun i j h ↦ ?_,
      fun i₀ i₁ ↦ ht _ _ ?_⟩
    · rwa [Finset.length_toList]
    · ext
      simpa [(Finset.nodup_toList _).getElem_inj_iff] using h
    · #adaptation_note /-- https://github.com/leanprover/lean4/pull/4400
      This proof was nicer before.
      Please feel welcome to improve it, by avoiding use of `List.get` in favour of `GetElem`. -/
      have : ∀ i h, t ((Finset.univ.filter fun x ↦ t x = s).toList.get ⟨i, h⟩) = s := fun i h ↦
        (Finset.mem_filter.mp (Finset.mem_toList.mp (List.get_mem _ ⟨i, h⟩))).2
      simp only [Nat.succ_eq_add_one, Finset.length_toList, List.get_eq_getElem] at this
      simp only [Nat.succ_eq_add_one, List.get_eq_getElem, Fin.coe_castLE]
      rw [this _ (Nat.lt_of_le_of_lt (Nat.le_of_lt_succ i₁.2) hs),
        this _ (Nat.lt_of_le_of_lt (Nat.le_of_lt_succ i₀.2) hs)]
  -- Since `s` is large enough, there are two elements of `A ∘ s`
  -- where the second components lie close together.
  obtain ⟨k₀, k₁, hk, h⟩ := ih hε hb fun x ↦ Fin.tail (A (s x))
  refine ⟨s k₀, s k₁, fun h ↦ hk (s_inj h), fun i ↦ Fin.cases ?_ (fun i ↦ ?_) i⟩
  · exact hs k₀ k₁
  · exact h i

/-- Any large enough family of vectors in `R^ι` has a pair of elements
whose remainders are close together, pointwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variant291a32ae11ad4da7163bcd9bfba14bb292e4410631d7b2cd3984ee336c01b018.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variant291a32ae11ad4da7163bcd9bfba14bb292e4410631d7b2cd3984ee336c01b018.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e0bfeeda0a7b377fbaf3647af8e71f3e5945d0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
