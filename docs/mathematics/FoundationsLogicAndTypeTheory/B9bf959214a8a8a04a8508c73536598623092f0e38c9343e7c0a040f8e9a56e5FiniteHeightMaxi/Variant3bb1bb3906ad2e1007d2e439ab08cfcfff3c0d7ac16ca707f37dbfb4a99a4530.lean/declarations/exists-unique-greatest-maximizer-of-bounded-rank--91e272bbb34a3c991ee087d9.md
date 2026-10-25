# exists_unique_greatest_maximizer_of_bounded_rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2209ddf8-63b7-73bb-3a1e-4694b9f3d734",
  "kind": "theorem",
  "lexical_name": "exists_unique_greatest_maximizer_of_bounded_rank",
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
  "slug": "exists-unique-greatest-maximizer-of-bounded-rank--91e272bbb34a3c991ee087d9",
  "source": {
    "blob": "422917545d71a0211423ebaca12ffa0764efad0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/B9bf959214a8a8a04a8508c73536598623092f0e38c9343e7c0a040f8e9a56e5FiniteHeightMaxi/Variant3bb1bb3906ad2e1007d2e439ab08cfcfff3c0d7ac16ca707f37dbfb4a99a4530.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91e272bbb34a3c991ee087d95721ad7d86fb69e0c4cfc69bb9d76521fe372da5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/B9bf959214a8a8a04a8508c73536598623092f0e38c9343e7c0a040f8e9a56e5FiniteHeightMaxi/Variant3bb1bb3906ad2e1007d2e439ab08cfcfff3c0d7ac16ca707f37dbfb4a99a4530.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2209ddf8-63b7-73bb-3a1e-4694b9f3d734`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_unique_greatest_maximizer_of_bounded_rank {f : α → ℝ}
    (hf : Supermodular f) (hattained : ∃ x, IsMaximizer f x)
    (rank : α → ℕ) (D : ℕ)
    (hbounded : ∀ x, IsMaximizer f x → rank x ≤ D)
    (hstrict : ∀ {x y : α}, x < y → rank x < rank y) :
    ∃! g, IsGreatest {x | IsMaximizer f x} g := by
  classical
  let P : ℕ → Prop := fun n => ∃ x, IsMaximizer f x ∧ rank x = n
  obtain ⟨x₀, hx₀⟩ := hattained
  have hP : P (rank x₀) := ⟨x₀, hx₀, rfl⟩
  obtain ⟨g, hg, hgrank⟩ := Nat.findGreatest_spec (hbounded x₀ hx₀) hP
  have hmaxrank : ∀ x, IsMaximizer f x → rank x ≤ rank g := by
    intro x hx
    rw [hgrank]
    exact Nat.le_findGreatest (hbounded x hx) ⟨x, hx, rfl⟩
  have hgreatest : IsGreatest {x | IsMaximizer f x} g := by
    refine ⟨hg, ?_⟩
    intro x hx
    have hjoin := (maximizers_inf_sup hf hg hx).2
    have hjoinrank := hmaxrank (g ⊔ x) hjoin
    by_contra hxg
    have hne : g ≠ g ⊔ x := by
      intro heq
      apply hxg
      calc
        x ≤ g ⊔ x := le_sup_right
        _ = g := heq.symm
    exact (Nat.not_lt_of_ge hjoinrank) (hstrict (lt_of_le_of_ne le_sup_left hne))
  exact ⟨g, hgreatest, fun y hy => hy.unique hgreatest⟩

/-- The selected greatest maximizer is fixed by every defect-preserving
order automorphism. The rank itself need not be preserved by the symmetry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/B9bf959214a8a8a04a8508c73536598623092f0e38c9343e7c0a040f8e9a56e5FiniteHeightMaxi/Variant3bb1bb3906ad2e1007d2e439ab08cfcfff3c0d7ac16ca707f37dbfb4a99a4530.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/B9bf959214a8a8a04a8508c73536598623092f0e38c9343e7c0a040f8e9a56e5FiniteHeightMaxi/Variant3bb1bb3906ad2e1007d2e439ab08cfcfff3c0d7ac16ca707f37dbfb4a99a4530.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `422917545d71a0211423ebaca12ffa0764efad0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
