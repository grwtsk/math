# SameCycle.exists_pow_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6cdd23a-bf1c-53fc-bae1-2e214f6021a8",
  "kind": "theorem",
  "lexical_name": "SameCycle.exists_pow_eq",
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
  "slug": "samecycle-exists-pow-eq--7553baba6e1256a643c2f940",
  "source": {
    "blob": "2b37542d32b13f4895cc697a6c13254f7038e3ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1237,
    "line": 1208,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7553baba6e1256a643c2f940026ab62480d6e163496c53fa3a1ab280c63c2f36",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6cdd23a-bf1c-53fc-bae1-2e214f6021a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1208–1237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SameCycle.exists_pow_eq (f : Perm α) (h : SameCycle f x y) :
    ∃ (i : ℕ) (_ : 0 < i) (_ : i ≤ (f.cycleOf x).support.card + 1), (f ^ i) x = y := by
  by_cases hx : x ∈ f.support
  · obtain ⟨k, hk, hk'⟩ := h.exists_pow_eq_of_mem_support hx
    cases' k with k
    · refine' ⟨(f.cycleOf x).support.card, _, self_le_add_right _ _, _⟩
      · refine' zero_lt_one.trans (one_lt_card_support_of_ne_one _)
        simpa using hx
      · simp only [Nat.zero_eq, pow_zero, coe_one, id_eq] at hk'
        subst hk'
        rw [← (isCycle_cycleOf _ <| mem_support.1 hx).orderOf, ← cycleOf_pow_apply_self,
          pow_orderOf_eq_one, one_apply]
    · exact ⟨k + 1, by simp, Nat.le_succ_of_le hk.le, hk'⟩
  · refine' ⟨1, zero_lt_one, by simp, _⟩
    obtain ⟨k, rfl⟩ := h
    rw [not_mem_support] at hx
    rw [pow_apply_eq_self_of_apply_eq_self hx, zpow_apply_eq_self_of_apply_eq_self hx]
#align equiv.perm.same_cycle.exists_pow_eq Equiv.Perm.SameCycle.exists_pow_eq

end CycleOf

/-!
### `cycleFactors`
-/


variable [DecidableEq α]

/-- Given a list `l : List α` and a permutation `f : perm α` whose nonfixed points are all in `l`,
  recursively factors `f` into cycles. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant2777fa0b2ffdf82bd25cc2206fa40150120b7be296bcc88f479326ac5bfbf6f1.lean#L1208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b37542d32b13f4895cc697a6c13254f7038e3ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
