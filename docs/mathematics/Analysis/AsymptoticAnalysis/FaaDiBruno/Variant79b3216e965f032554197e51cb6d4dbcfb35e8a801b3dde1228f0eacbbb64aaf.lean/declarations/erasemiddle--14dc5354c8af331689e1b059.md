# eraseMiddle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8ff5dbec156a1f786f4519b091b9654d1c7f09722f42a153d3c08a8266c0c7b",
  "kind": "def",
  "lexical_name": "eraseMiddle",
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
  "slug": "erasemiddle--14dc5354c8af331689e1b059",
  "source": {
    "blob": "633c4dec60f69dbd0b32039b833bf205dd58a07f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 633,
    "line": 521,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant79b3216e965f032554197e51cb6d4dbcfb35e8a801b3dde1228f0eacbbb64aaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14dc5354c8af331689e1b059ac4f7fd4327717fed83eaf2db935f2cd979acc25",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant79b3216e965f032554197e51cb6d4dbcfb35e8a801b3dde1228f0eacbbb64aaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8ff5dbec156a1f786f4519b091b9654d1c7f09722f42a153d3c08a8266c0c7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–633.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def eraseMiddle (c : OrderedFinpartition (n + 1)) (hc : range (c.emb 0) ≠ {0}) :
    OrderedFinpartition n where
  length := c.length
  partSize := update c.partSize (c.index 0) (c.partSize (c.index 0) - 1)
  partSize_pos i := by
    rcases eq_or_ne i (c.index 0) with rfl | hi
    · simpa using c.one_lt_partSize_index_zero hc
    · simp only [ne_eq, hi, not_false_eq_true, update_of_ne]
      exact c.partSize_pos i
  emb i j := by
    by_cases h : i = c.index 0
    · refine Fin.pred (c.emb i (Fin.cast ?_ (succ j))) ?_
      · rw [h]
        simpa using Nat.sub_add_cancel (c.partSize_pos (c.index 0))
      · have : 0 ≤ c.emb i 0 := Fin.zero_le _
        exact (this.trans_lt (c.emb_strictMono _ (succ_pos _))).ne'
    · refine Fin.pred (c.emb i (Fin.cast ?_ j)) ?_
      · simp [h]
      · conv_rhs => rw [← c.emb_invEmbedding 0]
        exact c.emb_ne_emb_of_ne h
  emb_strictMono i a b hab := by
    rcases eq_or_ne i (c.index 0) with rfl | hi
    · simp only [↓reduceDIte, Nat.succ_eq_add_one, pred_lt_pred_iff]
      exact (c.emb_strictMono _).comp (cast_strictMono _) (by simpa using hab)
    · simp only [hi, ↓reduceDIte, pred_lt_pred_iff, Nat.succ_eq_add_one]
      exact (c.emb_strictMono _).comp (cast_strictMono _) hab
  parts_strictMono i j hij := by
    simp only [Fin.lt_def]
    rw [← Nat.add_lt_add_iff_right (k := 1)]
    convert! Fin.lt_def.1 (c.parts_strictMono hij)
    · rcases eq_or_ne i (c.index 0) with rfl | hi
      -- We do not yet replace `omega` with `lia` here, as it is measurably slower.
      · simp only [↓reduceDIte, update_self, succ_mk, cast_mk, val_pred]
        have A := c.one_lt_partSize_index_zero hc
        rw [Nat.sub_add_cancel]
        · congr; omega
        · rw [Order.one_le_iff_pos]
          conv_lhs => rw [show (0 : ℕ) = c.emb (c.index 0) 0 by simp [emb_zero]]
          rw [← lt_def]
          apply c.emb_strictMono
          simp [lt_def]
      · simp only [hi, ↓reduceDIte, ne_eq, not_false_eq_true, update_of_ne, cast_mk, val_pred]
        apply Nat.sub_add_cancel
        have : c.emb i ⟨c.partSize i - 1, Nat.sub_one_lt_of_lt (c.partSize_pos i)⟩
            ≠ c.emb (c.index 0) 0 := c.emb_ne_emb_of_ne hi
        simp only [c.emb_zero, ne_eq, ← val_eq_val, val_zero] at this
        omega
    · rcases eq_or_ne j (c.index 0) with rfl | hj
      · simp only [↓reduceDIte, update_self, succ_mk, cast_mk, val_pred]
        have A := c.one_lt_partSize_index_zero hc
        rw [Nat.sub_add_cancel]
        · congr; lia
        · rw [Order.one_le_iff_pos]
          conv_lhs => rw [show (0 : ℕ) = c.emb (c.index 0) 0 by simp [emb_zero]]
          rw [← lt_def]
          apply c.emb_strictMono
          simp [lt_def]
      · simp only [hj, ↓reduceDIte, ne_eq, not_false_eq_true, update_of_ne, cast_mk, val_pred]
        apply Nat.sub_add_cancel
        have : c.emb j ⟨c.partSize j - 1, Nat.sub_one_lt_of_lt (c.partSize_pos j)⟩
            ≠ c.emb (c.index 0) 0 := c.emb_ne_emb_of_ne hj
        simp only [c.emb_zero, ne_eq, ← val_eq_val, val_zero] at this
        lia
  disjoint i _ j _ hij := by
    wlog h : i ≠ c.index 0 generalizing i j
    · apply Disjoint.symm
        (this j (mem_univ j) i (mem_univ i) hij.symm ?_)
      simp only [ne_eq, Decidable.not_not] at h
      simpa [h] using hij.symm
    rcases eq_or_ne j (c.index 0) with rfl | hj
    · simp only [onFun, hij, ↓reduceDIte]
      apply Set.disjoint_iff_forall_ne.2
      simp only [mem_range, ne_eq, forall_exists_index, forall_apply_eq_imp_iff, pred_inj]
      intro a b
      exact c.emb_ne_emb_of_ne hij
    · simp only [onFun, h, ↓reduceDIte, hj]
      apply Set.disjoint_iff_forall_ne.2
      simp only [mem_range, ne_eq, forall_exists_index, forall_apply_eq_imp_iff, pred_inj]
      intro a b
      exact c.emb_ne_emb_of_ne hij
  cover x := by
    simp only [mem_range]
    obtain ⟨i, j, hij⟩ : ∃ (i : Fin c.length), ∃ (j : Fin (c.partSize i)), c.emb i j = succ x :=
      ⟨c.index (succ x), c.invEmbedding (succ x), by simp⟩
    rcases eq_or_ne i (c.index 0) with rfl | hi
    · refine ⟨c.index 0, ?_⟩
      have j_ne : j ≠ 0 := by
        rintro rfl
        simp only [c.emb_zero] at hij
        exact (Fin.succ_ne_zero _).symm hij
      have je_ne' : (j : ℕ) ≠ 0 := by simpa
      simp only [↓reduceDIte]
      have A : c.partSize (c.index 0) - 1 + 1 = c.partSize (c.index 0) :=
        Nat.sub_add_cancel (c.partSize_pos _)
      have B : update c.partSize (c.index 0) (c.partSize (c.index 0) - 1) (c.index 0) =
        c.partSize (c.index 0) - 1 := by simp
      refine ⟨Fin.cast B.symm (pred (Fin.cast A.symm j) ?_), ?_⟩
      · simpa using j_ne
      · have : x = pred (succ x) (succ_ne_zero x) := rfl
        rw [this]
        simp only [pred_inj, ← hij]
        congr 1
        rw [← val_eq_val]
        simp only [val_cast, val_succ, val_pred]
        omega
    · have A : update c.partSize (c.index 0) (c.partSize (c.index 0) - 1) i = c.partSize i := by
        simp [hi]
      exact ⟨i, Fin.cast A.symm j, by simp [hi, hij]⟩

set_option backward.isDefEq.respectTransparency false in
/-- Extending the ordered partitions of `Fin n` bijects with the ordered partitions
of `Fin (n+1)`. -/
@[simps apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant79b3216e965f032554197e51cb6d4dbcfb35e8a801b3dde1228f0eacbbb64aaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FaaDiBruno/Variant79b3216e965f032554197e51cb6d4dbcfb35e8a801b3dde1228f0eacbbb64aaf.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `633c4dec60f69dbd0b32039b833bf205dd58a07f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
