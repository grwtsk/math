# exists_approx_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bf2f8f0-bd1c-e7c6-c585-b054ee2f74d0",
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
  "slug": "exists-approx-aux--ead5f0f160ea1dac6e591de5",
  "source": {
    "blob": "fe89bce3a9c22385db1b7f59582b49883e8e135f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variantd554fd3aeeed4d2c165429f12e3ed04aaaff22b8bca8bf3be01c4a6c0019dfa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ead5f0f160ea1dac6e591de52a4ab0dbe922ef82e38ae6f0bfb7bec7b19da980",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variantd554fd3aeeed4d2c165429f12e3ed04aaaff22b8bca8bf3be01c4a6c0019dfa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bf2f8f0-bd1c-e7c6-c585-b054ee2f74d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_approx_aux (n : ℕ) (h : abv.IsAdmissible) :
    ∀ {ε : ℝ} (_hε : 0 < ε) {b : R} (_hb : b ≠ 0) (A : Fin (h.card ε ^ n).succ → Fin n → R),
      ∃ i₀ i₁, i₀ ≠ i₁ ∧ ∀ k, (abv (A i₁ k % b - A i₀ k % b) : ℝ) < abv b • ε := by
  have := Classical.decEq R
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
  -- of more than `M ^ n` remainders where the first components lie close together:
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
    have : (M ^ n).succ ≤ (Finset.toList {x | t x = s}).length := by
      rwa [Finset.length_toList]
    refine ⟨fun i ↦ (Finset.toList {x | t x = s})[i.castLE this], fun i j h ↦ ?_,
      fun i₀ i₁ ↦ ht _ _ ?_⟩
    · simpa [(Finset.nodup_toList _).getElem_inj_iff, Fin.val_inj] using h
    · have (i : Fin (M ^ n).succ) : t (Finset.toList {x | t x = s})[i.castLE this] = s :=
        (Finset.mem_filter.mp ((Finset.mem_toList (s := {x | t x = s})).mp (List.getElem_mem _))).2
      simp_rw [this]
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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variantd554fd3aeeed4d2c165429f12e3ed04aaaff22b8bca8bf3be01c4a6c0019dfa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variantd554fd3aeeed4d2c165429f12e3ed04aaaff22b8bca8bf3be01c4a6c0019dfa3.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe89bce3a9c22385db1b7f59582b49883e8e135f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
