# completeLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b5535edf5efbe3d78ee7c6fb7f5820fefc10a21483be8abcfd38c2e0fc1a083",
  "kind": "instance",
  "lexical_name": "completeLattice",
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
  "slug": "completelattice--6610ddd031b60899761fad98",
  "source": {
    "blob": "f04e1daece09b42f2ea2c1e10e5468c8e7aa001e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 752,
    "line": 668,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/Variant7fb422ac0aa6cc2bb0f8ac615e757af8c140cc8a0b47887085a8fd8fd7870111.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6610ddd031b60899761fad98c3313eeeca0b4255e9e4a6b0df41b305ad7f05e2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/Variant7fb422ac0aa6cc2bb0f8ac615e757af8c140cc8a0b47887085a8fd8fd7870111.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b5535edf5efbe3d78ee7c6fb7f5820fefc10a21483be8abcfd38c2e0fc1a083`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 668–752.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance completeLattice [@DecidableRel α (· ≤ ·)] :
    CompleteLattice (Interval α) := by
  classical
  exact
      { Interval.lattice, Interval.boundedOrder with
        sSup := fun S =>
          if h : S ⊆ {⊥} then ⊥
          else
            some
              ⟨⟨⨅ (s : NonemptyInterval α) (_ : ↑s ∈ S), s.fst,
                  ⨆ (s : NonemptyInterval α) (_ : ↑s ∈ S), s.snd⟩, by
                obtain ⟨s, hs, ha⟩ := not_subset.1 h
                lift s to NonemptyInterval α using ha
                exact iInf₂_le_of_le s hs (le_iSup₂_of_le s hs s.fst_le_snd)⟩
        le_sSup := fun s s ha => by
          dsimp only -- Porting note: added
          split_ifs with h
          · exact (h ha).le
          cases s
          · exact bot_le
          · -- Porting note: This case was
            -- `exact WithBot.some_le_some.2 ⟨iInf₂_le _ ha, le_iSup₂_of_le _ ha le_rfl⟩`
            -- but there seems to be a defEq-problem at `iInf₂_le` that lean cannot resolve yet.
            apply WithBot.some_le_some.2
            constructor
            · apply iInf₂_le
              exact ha
            · exact le_iSup₂_of_le _ ha le_rfl
        sSup_le := fun s s ha => by
          dsimp only -- Porting note: added
          split_ifs with h
          · exact bot_le
          obtain ⟨b, hs, hb⟩ := not_subset.1 h
          lift s to NonemptyInterval α using ne_bot_of_le_ne_bot hb (ha _ hs)
          exact
            WithBot.coe_le_coe.2
              ⟨le_iInf₂ fun c hc => (WithBot.coe_le_coe.1 <| ha _ hc).1,
                iSup₂_le fun c hc => (WithBot.coe_le_coe.1 <| ha _ hc).2⟩
        sInf := fun S =>
          if h :
              ⊥ ∉ S ∧
                ∀ ⦃s : NonemptyInterval α⦄,
                  ↑s ∈ S → ∀ ⦃t : NonemptyInterval α⦄, ↑t ∈ S → s.fst ≤ t.snd then
            some
              ⟨⟨⨆ (s : NonemptyInterval α) (_ : ↑s ∈ S), s.fst,
                  ⨅ (s : NonemptyInterval α) (_ : ↑s ∈ S), s.snd⟩,
                iSup₂_le fun s hs => le_iInf₂ <| h.2 hs⟩
          else ⊥
        sInf_le := fun s₁ s ha => by
          dsimp only -- Porting note: added
          split_ifs with h
          · lift s to NonemptyInterval α using ne_of_mem_of_not_mem ha h.1
            -- Porting note: Lean failed to figure out the function `f` by itself,
            -- so I added it through manually
            let f := fun (s : NonemptyInterval α) (_ : ↑s ∈ s₁) => s.toProd.fst
            exact WithBot.coe_le_coe.2 ⟨le_iSup₂ (f := f) s ha, iInf₂_le s ha⟩
          · exact bot_le
        le_sInf := by
          intro S s ha
          cases s with
          | none => exact bot_le
          | some s =>
            dsimp -- Porting note: added
            split_ifs with h
            · exact WithBot.some_le_some.2
                ⟨iSup₂_le fun t hb => (WithBot.coe_le_coe.1 <| ha _ hb).1,
                  le_iInf₂ fun t hb => (WithBot.coe_le_coe.1 <| ha _ hb).2⟩
            · rw [not_and_or, not_not] at h
              rcases h with h | h
              · exact ha _ h
              · -- Porting note: ungolfed, due to identification problems
                -- between `toProd` and `toDualProd`. Original mathport output:
                -- cases h fun t hb c hc =>
                --   (WithBot.coe_le_coe.1 <| ha _ hb).1.trans <|
                --     s.fst_le_snd.trans (WithBot.coe_le_coe.1 <| ha _ hc).2 }
                exfalso
                apply h
                intro b hb c hc
                have h₁ := (WithBot.coe_le_coe.1 <| ha _ hb).1
                repeat rw [NonemptyInterval.toDualProd_apply] at h₁
                rw [OrderDual.toDual_le_toDual] at h₁
                exact h₁.trans (s.fst_le_snd.trans (WithBot.coe_le_coe.1 <| ha _ hc).2)
  }

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/Variant7fb422ac0aa6cc2bb0f8ac615e757af8c140cc8a0b47887085a8fd8fd7870111.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/Variant7fb422ac0aa6cc2bb0f8ac615e757af8c140cc8a0b47887085a8fd8fd7870111.lean#L668).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f04e1daece09b42f2ea2c1e10e5468c8e7aa001e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
