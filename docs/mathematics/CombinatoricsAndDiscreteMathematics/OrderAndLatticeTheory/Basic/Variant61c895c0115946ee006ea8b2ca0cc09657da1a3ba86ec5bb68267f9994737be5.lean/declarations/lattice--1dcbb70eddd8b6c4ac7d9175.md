# lattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a4eea4e2704d6b32e1e20eaadfdf32ee6877fe113138150bfb0f6681e3812c6",
  "kind": "instance",
  "lexical_name": "lattice",
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
  "slug": "lattice--1dcbb70eddd8b6c4ac7d9175",
  "source": {
    "blob": "3dc72f82a17110686edf676a1ead810fffa5ac1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 456,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant61c895c0115946ee006ea8b2ca0cc09657da1a3ba86ec5bb68267f9994737be5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1dcbb70eddd8b6c4ac7d9175d3c155aa9279acd2dbbeb0fa1bcaff4b583d18f3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant61c895c0115946ee006ea8b2ca0cc09657da1a3ba86ec5bb68267f9994737be5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a4eea4e2704d6b32e1e20eaadfdf32ee6877fe113138150bfb0f6681e3812c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance lattice : Lattice (Interval α) :=
  { Interval.semilatticeSup with
    inf := fun s t =>
      match s, t with
      | ⊥, _ => ⊥
      | _, ⊥ => ⊥
      | some s, some t =>
        if h : s.fst ≤ t.snd ∧ t.fst ≤ s.snd then
          WithBot.some
            ⟨⟨s.fst ⊔ t.fst, s.snd ⊓ t.snd⟩,
              sup_le (le_inf s.fst_le_snd h.1) <| le_inf h.2 t.fst_le_snd⟩
        else ⊥
    inf_le_left := fun s t =>
      match s, t with
      | ⊥, ⊥ => bot_le
      | ⊥, some _ => bot_le
      | some _, ⊥ => bot_le
      | some s, some t => by
        change dite _ _ _ ≤ _
        split_ifs
        · exact WithBot.coe_le_coe.2 ⟨le_sup_left, inf_le_left⟩
        · exact bot_le
    inf_le_right := fun s t =>
      match s, t with
      | ⊥, ⊥ => bot_le
      | ⊥, some _ => bot_le
      | some _, ⊥ => bot_le
      | some s, some t => by
        change dite _ _ _ ≤ _
        split_ifs
        · exact WithBot.coe_le_coe.2 ⟨le_sup_right, inf_le_right⟩
        · exact bot_le
    le_inf := fun s t c =>
      match s, t, c with
      | ⊥, _, _ => fun _ _ => bot_le
      | (s : NonemptyInterval α), t, c => fun hb hc => by
        lift t to NonemptyInterval α using ne_bot_of_le_ne_bot WithBot.coe_ne_bot hb
        lift c to NonemptyInterval α using ne_bot_of_le_ne_bot WithBot.coe_ne_bot hc
        change _ ≤ dite _ _ _
        simp only [WithBot.coe_le_coe] at hb hc ⊢
        rw [dif_pos, WithBot.coe_le_coe]
        · exact ⟨sup_le hb.1 hc.1, le_inf hb.2 hc.2⟩
        -- Porting note: had to add the next 6 lines including the changes because
        -- it seems that lean cannot automatically turn `NonemptyInterval.toDualProd s`
        -- into `s.toProd` anymore.
        rcases hb with ⟨hb₁, hb₂⟩
        rcases hc with ⟨hc₁, hc₂⟩
        change t.toProd.fst ≤ s.toProd.fst at hb₁
        change s.toProd.snd ≤ t.toProd.snd at hb₂
        change c.toProd.fst ≤ s.toProd.fst at hc₁
        change s.toProd.snd ≤ c.toProd.snd at hc₂
        -- Porting note: originally it just had `hb.1` etc. in this next line
        exact ⟨hb₁.trans <| s.fst_le_snd.trans hc₂, hc₁.trans <| s.fst_le_snd.trans hb₂⟩ }

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant61c895c0115946ee006ea8b2ca0cc09657da1a3ba86ec5bb68267f9994737be5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant61c895c0115946ee006ea8b2ca0cc09657da1a3ba86ec5bb68267f9994737be5.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dc72f82a17110686edf676a1ead810fffa5ac1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
