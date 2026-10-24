# isCauSeq_of_decreasing_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67d71e496ea143cafd81c9aa2893b68b5ab902d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9657947c-609e-f34c-cbe5-7d72d38833ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76d0458b-f3e8-8669-bdfb-63625d6fb8f4",
  "kind": "theorem",
  "lexical_name": "isCauSeq_of_decreasing_bounded",
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
  "slug": "iscauseq-of-decreasing-bounded--b8c11a5e7a9af21b009e5926",
  "source": {
    "blob": "67d71e496ea143cafd81c9aa2893b68b5ab902d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8c11a5e7a9af21b009e5926c7be8778f3322f17729d1f846eb47e036c33bc76",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76d0458b-f3e8-8669-bdfb-63625d6fb8f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCauSeq_of_decreasing_bounded (f : ℕ → α) {a : α} {m : ℕ} (ham : ∀ n ≥ m, |f n| ≤ a)
    (hnm : ∀ n ≥ m, f n.succ ≤ f n) : IsCauSeq abs f := fun ε ε0 => by
  let ⟨k, hk⟩ := Archimedean.arch a ε0
  have h : ∃ l, ∀ n ≥ m, a - l • ε < f n :=
    ⟨k + k + 1, fun n hnm =>
      lt_of_lt_of_le
        (show a - (k + (k + 1)) • ε < -|f n| from
          lt_neg.1 <|
            lt_of_le_of_lt (ham n hnm)
              (by
                rw [neg_sub, lt_sub_iff_add_lt, add_nsmul, add_nsmul, one_nsmul]
                exact add_lt_add_of_le_of_lt hk (lt_of_le_of_lt hk (lt_add_of_pos_right _ ε0))))
        (neg_le.2 <| abs_neg (f n) ▸ le_abs_self _)⟩
  let l := Nat.find h
  have hl : ∀ n : ℕ, n ≥ m → f n > a - l • ε := Nat.find_spec h
  have hl0 : l ≠ 0 := fun hl0 =>
    not_lt_of_ge (ham m le_rfl)
      (lt_of_lt_of_le (by have := hl m (le_refl m); simpa [hl0] using this) (le_abs_self (f m)))
  cases' not_forall.1 (Nat.find_min h (Nat.pred_lt hl0)) with i hi
  rw [not_imp, not_lt] at hi
  exists i
  intro j hj
  have hfij : f j ≤ f i := (Nat.rel_of_forall_rel_succ_of_le_of_le (· ≥ ·) hnm hi.1 hj).le
  rw [abs_of_nonpos (sub_nonpos.2 hfij), neg_sub, sub_lt_iff_lt_add']
  calc
    f i ≤ a - Nat.pred l • ε := hi.2
    _ = a - l • ε + ε := by
      conv =>
        rhs
        rw [← Nat.succ_pred_eq_of_pos (Nat.pos_of_ne_zero hl0), succ_nsmul', sub_add,
          add_sub_cancel]
    _ < f j + ε := add_lt_add_right (hl j (le_trans hi.1 hj)) _
#align is_cau_of_decreasing_bounded isCauSeq_of_decreasing_bounded

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67d71e496ea143cafd81c9aa2893b68b5ab902d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
