# Group.IsNilpotent.exists_normal_index_eq_of_dvd_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1713324-2713-1681-b5c6-a31491ac2eb8",
  "kind": "theorem",
  "lexical_name": "Group.IsNilpotent.exists_normal_index_eq_of_dvd_card",
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
  "slug": "group-isnilpotent-exists-normal-index-eq-of-dvd-card--a835b5742a5c608e3946bc35",
  "source": {
    "blob": "30c59694ffb89b9851d8498640ef653bd9c59778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1334,
    "line": 1313,
    "path": "GRWTSK/Algebra/GroupTheory/Nilpotent/Variant63511213e5886a297f6bdf5b650cd2b5f3f63d4f244684a71c31455f21f3f4e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a835b5742a5c608e3946bc35377025f80a291b84c42cafac436d29901d45b85b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Nilpotent/Variant63511213e5886a297f6bdf5b650cd2b5f3f63d4f244684a71c31455f21f3f4e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1713324-2713-1681-b5c6-a31491ac2eb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1313–1334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Group.IsNilpotent.exists_normal_index_eq_of_dvd_card [IsNilpotent G] {k : ℕ}
    (hdvd : k ∣ Nat.card G) : ∃ H : Subgroup G, H.index = k ∧ H.Normal := by
  induction hm : Nat.card G using Nat.strong_induction_on generalizing k G with | h m ih =>
  have ⟨m', hmul⟩ := hdvd
  by_cases hm1 : m' = 1
  · refine ⟨⊥, by simp [hmul, hm1], normal_bot⟩
  · obtain ⟨p, hp, m'', rfl⟩ : ∃ p, p.Prime ∧ p ∣ m' := m'.ne_one_iff_exists_prime_dvd.mp hm1
    obtain ⟨N, hNcard, hN⟩ : ∃ N : Subgroup G, Nat.card N = p ∧ N.Normal := by
      suffices ∃ (H : Subgroup G), Nat.card H = p ^ 1 ∧ ⊥ ≤ H ∧ H ≤ center G by
        grind [normal_of_le_center]
      refine Sylow.exists_subgroup_card_pow_prime_le_le hp (by simp) ?_ bot_le
      exact prime_dvd_card_center (hp := ⟨by simpa⟩) ⟨k * m'', by grind⟩
    obtain ⟨K, hKcard, hK⟩ : ∃ K : Subgroup (G ⧸ N), K.index = k ∧ K.Normal := by
      refine ih (Nat.card (G ⧸ N)) ?_ ?_ rfl
      · rw [← hm, N.card_eq_card_quotient_mul_card_subgroup, hNcard]
        exact lt_mul_right Nat.card_pos hp.one_lt
      · refine ⟨m'', Nat.eq_of_mul_eq_mul_right hp.pos ?_⟩
        grind [N.card_eq_card_quotient_mul_card_subgroup]
    use K.comap (QuotientGroup.mk' N)
    simp [index_comap, normal_comap, hKcard]

/-- A finite nilpotent group has normal subgroups of every possible cardinality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Nilpotent/Variant63511213e5886a297f6bdf5b650cd2b5f3f63d4f244684a71c31455f21f3f4e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Nilpotent/Variant63511213e5886a297f6bdf5b650cd2b5f3f63d4f244684a71c31455f21f3f4e5.lean#L1313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30c59694ffb89b9851d8498640ef653bd9c59778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
