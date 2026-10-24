# not_S_mapsTo_previous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3eea7e4bd418a2e1ae42665cdf464a2230815e33",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa006110-9e76-d368-702b-dd2d996f220b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f1e26cc3-50bb-aca3-9c86-f72b148553dd",
  "kind": "theorem",
  "lexical_name": "not_S_mapsTo_previous",
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
  "slug": "not-s-mapsto-previous--924c840c6b7d9778dd65f4a7",
  "source": {
    "blob": "3eea7e4bd418a2e1ae42665cdf464a2230815e33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1208,
    "line": 1146,
    "path": "GRWTSK/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:924c840c6b7d9778dd65f4a7bb0f74221909701527d250c08e7aad2569f4b3bc",
  "verification": {
    "reference": "docs/verification/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1e26cc3-50bb-aca3-9c86-f72b148553dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1146–1208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_S_mapsTo_previous (hC : IsChain (· ≤ ·) C)
    (hCn : (C ∩ level n).Finite) (hn : n ≠ 0)
    (h : ∀ x ∈ S n C \ (C ∩ level n), f x ∈ C ∩ level (n - 1)) :
    False := by
  -- Take `a` such that `{(x, y, n) | x ≥ a ∧ y ≥ a} ⊆ S \ (C ∩ level n)`...
  obtain ⟨a, ha⟩ := (square_subset_S hCn).exists
  -- ...then let `F` be the chain from `(a, a)` to `(3 * a, a)`...
  let F : Finset Hollom := (chainBetween a a (3 * a) a).image (embed n)
  -- ...observing that by definition of `a`, we know `F` is entirely within `S \ (C ∩ level n)`...
  have F_subs : ↑F ⊆ S n C \ (C ∩ level n) := calc
    F = embed n '' chainBetween a a (3 * a) a := Finset.coe_image
    _ ⊆ embed n '' Finset.Icc (a, a) (3 * a, a) := Set.image_mono chainBetween_subset
    _ = embed n '' Set.Icc (a, a) (3 * a, a) := by simp
    _ ⊆ embed n '' Set.Ici (a, a) := Set.image_mono Set.Icc_subset_Ici_self
    _ ⊆ S n C \ (C ∩ level n) := ha
  -- ...and it has length `2a+1`.
  have card_F : #F = 2 * a + 1 := by
    rw [Finset.card_image_of_injective _ (embed n).injective,
      card_chainBetween (by lia) (by simp)]
    lia
  let T := {x ∈ C ∩ level (n - 1) | line x < 2 * a}
  -- Therefore, the image of `F` is within `C ∩ level (n - 1)`, and each of its points must be
  -- within `{(x, y, n - 1) | x + y < 2 * a}`. That is, the image of `F` under `f` is within `T`.
  have F_mapsTo : Set.MapsTo f F T := by
    intro x hx
    refine ⟨h _ (F_subs hx), ?_⟩
    set c := f x with hc
    have hc' : c ∈ C ∩ level (n - 1) := h _ (F_subs hx)
    clear_value c
    rw [coe_image, chainBetween, Ico_self, ite_eq_left (by lia), empty_union, ← Icc_map_sectL] at hx
    simp only [embed_apply, coe_map, Function.Embedding.sectL_apply, coe_Icc,
      Set.mem_image, Set.mem_Icc, exists_exists_and_eq_and] at hx
    obtain ⟨b, ⟨hab, hba⟩, rfl⟩ := hx
    induction hc'.2 using induction_on_level with | h u v =>
    simp only [line_toHollom]
    by_contra!
    have le : h(b, a, n) ≤ h(u, v, n - 1) := by
      match n, hn with
      | n + 1, _ =>
          simp only [add_tsub_cancel_right]
          apply HollomOrder.next_add (by lia)
    have : f h(u, v, n - 1) = f h(b, a, n) := by rw [f.eq_self_of_mem hc'.1, hc]
    have := le_of_toHollom_le_toHollom (f.eq_of_le this.symm le).ge
    lia
  -- And `f` acts injectively on `F`, as it is a chain.
  have F_inj : Set.InjOn f F := f.injOn_of_isChain image_chainBetween_isChain
  -- By definition of `T`, the `line` map sends it to the interval `[0, 2a)`
  have line_mapsTo : Set.MapsTo line T (range (2 * a)) := by
    rintro x ⟨_, hx⟩
    simpa using hx
  -- and it does so injectively, as `T` is a chain.
  have line_inj : Set.InjOn line T :=
    line_injOn (n - 1)
      (hC.mono (by simp +contextual [Set.subset_def, T]))
      (by simp +contextual [Set.subset_def, T])
  -- Therefore `line ∘ f` sends `F` to `[0, 2a)` injectively
  have line_F_mapsTo : Set.MapsTo (line ∘ f) F (range (2 * a)) := line_mapsTo.comp F_mapsTo
  -- which is a contradiction by cardinality arguments.
  have := card_le_card_of_injOn _ line_F_mapsTo (line_inj.comp F_inj F_mapsTo)
  simp only [Finset.card_range] at this
  lia

/-- The Hollom partial order has no spinal maps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean#L1146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3eea7e4bd418a2e1ae42665cdf464a2230815e33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
