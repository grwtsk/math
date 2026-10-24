# square_subset_S_case_1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba10de10-320b-607d-bd1d-41a167e7b857",
  "kind": "lemma",
  "lexical_name": "square_subset_S_case_1",
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
  "slug": "square-subset-s-case-1--77d25234845940ffaa090612",
  "source": {
    "blob": "ede695c4c5c2bb0254a5568e0a360f44a0358566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 994,
    "line": 960,
    "path": "GRWTSK/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77d25234845940ffaa090612a7fce0d976ac00c5d06cefa1de3f9144b7416d6f",
  "verification": {
    "reference": "docs/verification/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba10de10-320b-607d-bd1d-41a167e7b857`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 960–994.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma square_subset_S_case_1 (h : (C ∩ level n).Finite) (h' : (C ∩ level (n + 1)).Finite) :
    ∀ᶠ a in atTop, embed n '' Set.Ici (a, a) ⊆ S n C \ (C ∩ level n) := by
  rw [S, ite_eq_left h']
  -- Take a maximal pair `(b, c)` so that any `(d, e, n)` in `C` satisfies
  -- `(d, e, n) ≤ (b, c, n)`.
  obtain ⟨b, c, hab⟩ : ∃ b c, ∀ d e, h(d, e, n + 1) ∈ C → (d, e) ≤ (b, c) := by
    obtain ⟨⟨b, c⟩, hbc⟩ := (h'.image (fun t ↦ ((ofHollom t).1, (ofHollom t).2.1))).bddAbove
    use b, c
    intro d e hde
    simpa using hbc ⟨h(_, _, _), ⟨hde, by simp⟩, rfl⟩
  -- Using `a ≥ max b c`, we have that all elements of `{(x, y, n) | x ≥ a ∧ y ≥ a}` are comparable
  -- to all elements of `C ∩ level (n + 1)`.
  have : ∀ᶠ a in atTop, embed n '' .Ici (a, a) ⊆ {x | ∀ y ∈ C ∩ level (n + 1), x ≤ y ∨ y ≤ x} := by
    rw [eventually_atTop, level_eq]
    refine ⟨max b c, ?_⟩
    simp only [sup_le_iff, embed, RelEmbedding.coe_mk, Function.Embedding.coeFn_mk,
      Set.mem_inter_iff, Set.mem_ofPred_eq, and_imp, «forall», Prod.forall,
      Set.subset_def, Set.mem_image, Set.mem_Ici, Prod.exists, Prod.mk_le_mk, forall_exists_index,
      Prod.mk.injEq, Hollom.ext_iff]
    rintro d hbd hcd _ _ _ e f hde hdf rfl rfl rfl g h _ hgh rfl
    right
    apply toHollom_le_toHollom _ (by simp)
    have := hab _ _ hgh
    simp only [Prod.mk_le_mk] at this ⊢
    lia
  -- Combined with the fact that sufficiently large `a` have
  -- `{(x, y, n) | x ≥ a ∧ y ≥ a} ⊆ R \ (C ∩ level n)`, we can easily finish.
  filter_upwards [square_subset_R h, this] with a h₁ h₂
  exact fun x hx ↦ ⟨⟨(h₁ hx).1, h₂ hx⟩, (h₁ hx).2⟩

/--
Assuming `C ∩ level n` is finite, and `C ∩ level (n + 1)` is infinite, that there exists cofinitely
many `a` such that `{(x, y, n) | x ≥ a ∧ y ≥ a} ⊆ S \ (C ∩ level n)`.
We earlier showed the same assuming `C ∩ level (n + 1)` is finite.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean#L960).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ede695c4c5c2bb0254a5568e0a360f44a0358566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
