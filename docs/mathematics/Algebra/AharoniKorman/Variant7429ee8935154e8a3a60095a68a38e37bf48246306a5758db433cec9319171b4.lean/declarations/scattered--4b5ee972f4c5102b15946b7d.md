# scattered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52697c3e-89d2-31e4-73d8-bdf06bf57b80",
  "kind": "theorem",
  "lexical_name": "scattered",
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
  "slug": "scattered--4b5ee972f4c5102b15946b7d",
  "source": {
    "blob": "ede695c4c5c2bb0254a5568e0a360f44a0358566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 319,
    "path": "GRWTSK/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b5ee972f4c5102b15946b7d88e2ba14ea833f88951fcb6d6d985caf2ce43992",
  "verification": {
    "reference": "docs/verification/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52697c3e-89d2-31e4-73d8-bdf06bf57b80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scattered {f : ℚ → Hollom} (hf : StrictMono f) : False := by
  -- Let `g` be the function from `ℚ` to `ℕ` which is the third coordinate of `f`.
  let g (q : ℚ) : ℕ := (ofHollom (f q)).2.2
  have hg (q : ℚ) : f q ∈ level (g q) := by simp [g, level_eq]
  -- We have that `g` is antitone, since `f` is strictly monotone.
  have hg' : Antitone g := by
    rw [antitone_iff_forall_lt]
    intro x y hxy
    have : f x < f y := hf hxy
    simp only [ge_iff_le, g]
    cases hx : f x with | h x₁ x₂ x₃ =>
    cases hy : f y with | h y₁ y₂ y₃ =>
    rw [hx, hy] at this
    exact le_of_toHollom_le_toHollom this.le
  -- But it cannot be injective: otherwise it is strictly antitone, and thus precomposing with
  -- the obvious map `ℕ → ℚ` would give a strictly decreasing sequence in `ℕ`.
  have hg'' : ¬ g.Injective := fun hg'' ↦
    no_strictAnti _ ((hg'.strictAnti_of_injective hg'').comp_strictMono Nat.strictMono_cast)
  -- Take `x ≠ y` with `g x = g y`
  obtain ⟨x, y, hgxy, hxy'⟩ : ∃ x y, g x = g y ∧ x ≠ y := by simpa [Function.Injective] using hg''
  -- and wlog `x < y`
  wlog! hxy : x < y generalizing x y
  · exact this y x hgxy.symm hxy'.symm (lt_of_le_of_ne' hxy hxy')
  -- Now `f '' [x, y]` is infinite, as it is the image of an infinite set of rationals,
  have h₁ : (f '' Set.Icc x y).Infinite := (Set.Icc_infinite hxy).image hf.injective.injOn
  -- but it is contained in `[f x, f y]` by monotonicity
  have h₂ : f '' Set.Icc x y ⊆ Set.Icc (f x) (f y) := Monotone.image_Icc_subset hf.monotone
  -- and this is finite, as it is a closed interval in `level (g x)`
  have h₃ : (Set.Icc (f x) (f y)).Finite := by
    set n := g y
    obtain ⟨a, ha⟩ : f x ∈ Set.range (embed n) := by rw [← level_eq_range, ← hgxy]; exact hg _
    obtain ⟨b, hb⟩ : f y ∈ Set.range (embed n) := by rw [← level_eq_range]; exact hg _
    rw [← ha, ← hb, ← OrderEmbedding.image_Icc]
    · exact (Set.finite_Icc a b).image (embed n)
    · rw [← level_eq_range]
      exact ordConnected_level
  -- giving a contradiction.
  exact h₁ (h₃.subset h₂)

/--
Any antichain in the Hollom partial order is finite. This corresponds to Lemma 5.9 in [hollom2025].
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ede695c4c5c2bb0254a5568e0a360f44a0358566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
