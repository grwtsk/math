# IsCyclic.card_pow_eq_one_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d04a936e-e026-e614-3704-ed7c841c7941",
  "kind": "theorem",
  "lexical_name": "IsCyclic.card_pow_eq_one_le",
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
  "slug": "iscyclic-card-pow-eq-one-le--b32003b0edf090bcc5bee6a7",
  "source": {
    "blob": "072c0cbea625bb5e215ed251590b6cd50413aadd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 321,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b32003b0edf090bcc5bee6a790fc6ce1cc4cb96e6fe758f468123e3104b0a39c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d04a936e-e026-e614-3704-ed7c841c7941`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCyclic.card_pow_eq_one_le [DecidableEq α] [Fintype α] [IsCyclic α] {n : ℕ} (hn0 : 0 < n) :
    #{a : α | a ^ n = 1} ≤ n :=
  let ⟨g, hg⟩ := IsCyclic.exists_generator (α := α)
  calc
    #{a : α | a ^ n = 1} ≤
        #(zpowers (g ^ (Fintype.card α / Nat.gcd n (Fintype.card α))) : Set α).toFinset := by
      gcongr
      intro x hx
      let ⟨m, hm⟩ := show x ∈ Submonoid.powers g from mem_powers_iff_mem_zpowers.2 <| hg x
      refine Set.mem_toFinset.2 ⟨(m / (Fintype.card α / Nat.gcd n (Fintype.card α)) : ℕ), ?_⟩
      dsimp only at ⊢ hm
      rw [zpow_natCast, ← pow_mul, Nat.mul_div_cancel_left', hm]
      refine Nat.dvd_of_mul_dvd_mul_right (gcd_pos_of_pos_left (Fintype.card α) hn0) ?_
      conv_lhs =>
        rw [Nat.div_mul_cancel (Nat.gcd_dvd_right _ _), ← Nat.card_eq_fintype_card,
          ← orderOf_eq_card_of_forall_mem_zpowers hg]
      exact orderOf_dvd_of_pow_eq_one <| by simpa [pow_mul, hm] using (mem_filter.1 hx).2
    _ ≤ n := by
      let ⟨m, hm⟩ := Nat.gcd_dvd_right n (Fintype.card α)
      have hm0 : 0 < m :=
        Nat.pos_of_ne_zero fun hm0 => by
          rw [hm0, mul_zero, Fintype.card_eq_zero_iff] at hm
          exact hm.elim' 1
      simp only [Set.toFinset_card, SetLike.coe_sort_coe]
      rw [Fintype.card_zpowers, orderOf_pow g, orderOf_eq_card_of_forall_mem_zpowers hg,
        Nat.card_eq_fintype_card]
      nth_rw 2 [hm]; nth_rw 3 [hm]
      rw [Nat.mul_div_cancel_left _ (gcd_pos_of_pos_left _ hn0), gcd_mul_left_left, hm,
        Nat.mul_div_cancel _ hm0]
      exact le_of_dvd hn0 (Nat.gcd_dvd_left _ _)

end Classical

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantfe0d0a939fdfa012291754504ed133d24739dfffdafb1ba564881a9117f95fd4.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `072c0cbea625bb5e215ed251590b6cd50413aadd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
