# insertNth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aaf4f58e645cd4a7c49a16ea9e040d4850ec2ecfdd42f59b93e5b5d64273ce59",
  "kind": "def",
  "lexical_name": "insertNth",
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
  "slug": "insertnth--51e1f244ca627074315edeb0",
  "source": {
    "blob": "8896971211c230ef2e4e80551ee4ee3f216674b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 393,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variant8270fa3d998124996535384c2c45952ee8005b0ba89d1f5a903697ecafc28f07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51e1f244ca627074315edeb07a078b575c4b6b4ab150d094f805a147392b189e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variant8270fa3d998124996535384c2c45952ee8005b0ba89d1f5a903697ecafc28f07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aaf4f58e645cd4a7c49a16ea9e040d4850ec2ecfdd42f59b93e5b5d64273ce59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def insertNth (p : RelSeries r) (i : Fin p.length) (a : α)
    (prev_connect : r (p (Fin.castSucc i)) a) (connect_next : r a (p i.succ)) : RelSeries r where
  length := p.length + 1
  toFun := (Fin.castSucc i.succ).insertNth a p
  step m := by
    set x := _; set y := _; change r x y
    obtain hm | hm | hm := lt_trichotomy m.1 i.1
    · convert p.step ⟨m, hm.trans i.2⟩
      · show Fin.insertNth _ _ _ _ = _
        rw [Fin.insertNth_apply_below]
        pick_goal 2
        · exact hm.trans (lt_add_one _)
        simp
      · show Fin.insertNth _ _ _ _ = _
        rw [Fin.insertNth_apply_below]
        pick_goal 2
        · change m.1 + 1 < i.1 + 1; rwa [add_lt_add_iff_right]
        simp; rfl
    · rw [show x = p m from show Fin.insertNth _ _ _ _ = _ by
        rw [Fin.insertNth_apply_below]
        pick_goal 2
        · show m.1 < i.1 + 1; exact hm ▸ lt_add_one _
        simp]
      convert prev_connect
      · ext; exact hm
      · change Fin.insertNth _ _ _ _ = _
        rw [show m.succ = i.succ.castSucc by ext; change _ + 1 = _ + 1; rw [hm],
          Fin.insertNth_apply_same]
    · rw [Nat.lt_iff_add_one_le, le_iff_lt_or_eq] at hm
      obtain hm | hm := hm
      · convert p.step ⟨m.1 - 1, Nat.sub_lt_right_of_lt_add (by omega) m.2⟩
        · change Fin.insertNth _ _ _ _ = _
          rw [Fin.insertNth_apply_above (h := hm)]
          aesop
        · change Fin.insertNth _ _ _ _ = _
          rw [Fin.insertNth_apply_above]
          swap
          · exact hm.trans (lt_add_one _)
          simp only [Fin.val_succ, Fin.pred_succ, eq_rec_constant, Fin.succ_mk]
          congr
          exact Fin.ext <| Eq.symm <| Nat.succ_pred_eq_of_pos (lt_trans (Nat.zero_lt_succ _) hm)
      · convert connect_next
        · change Fin.insertNth _ _ _ _ = _
          rw [show m.castSucc = i.succ.castSucc from Fin.ext hm.symm, Fin.insertNth_apply_same]
        · change Fin.insertNth _ _ _ _ = _
          rw [Fin.insertNth_apply_above]
          swap
          · change i.1 + 1 < m.1 + 1; omega
          simp only [Fin.pred_succ, eq_rec_constant]
          congr; ext; exact hm.symm

/--
A relation series `a₀ -r→ a₁ -r→ ... -r→ aₙ` of `r` gives a relation series of the reverse of `r`
by reversing the series `aₙ ←r- aₙ₋₁ ←r- ... ←r- a₁ ←r- a₀`.
-/
@[simps length]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variant8270fa3d998124996535384c2c45952ee8005b0ba89d1f5a903697ecafc28f07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variant8270fa3d998124996535384c2c45952ee8005b0ba89d1f5a903697ecafc28f07.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8896971211c230ef2e4e80551ee4ee3f216674b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
