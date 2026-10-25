# cycle_zpow_mem_support_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:733e4bde-89bb-6631-7018-c7b6b6d26061",
  "kind": "theorem",
  "lexical_name": "cycle_zpow_mem_support_iff",
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
  "slug": "cycle-zpow-mem-support-iff--1b73b428d8992915e0ad5293",
  "source": {
    "blob": "33a0a177dacc514f42e4d5742e070ec7c0806fd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1096,
    "line": 1065,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b73b428d8992915e0ad52935251976c240bc08ca0eb6820fb86fb44168a003d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:733e4bde-89bb-6631-7018-c7b6b6d26061`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1065–1096.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cycle_zpow_mem_support_iff {g : Perm α}
    (hg : g.IsCycle) {n : ℤ} {x : α} (hx : g x ≠ x) :
    (g ^ n) x = x ↔ n % #g.support = 0 := by
  set q := n / #g.support
  set r := n % #g.support
  have div_euc : r + #g.support * q = n ∧ 0 ≤ r ∧ r < #g.support := by
    rw [← Int.ediv_emod_unique _]
    · exact ⟨rfl, rfl⟩
    simp only [Int.natCast_pos]
    apply lt_of_lt_of_le _ (IsCycle.two_le_card_support hg); simp
  simp only [← hg.orderOf] at div_euc
  obtain ⟨m, hm⟩ := Int.eq_ofNat_of_zero_le div_euc.2.1
  simp only [hm, Nat.cast_nonneg, Nat.cast_lt, true_and] at div_euc
  rw [← div_euc.1, zpow_add g]
  simp only [hm, Nat.cast_eq_zero, zpow_natCast, coe_mul, comp_apply, zpow_mul,
    pow_orderOf_eq_one, one_zpow, coe_one, id_eq]
  have : (g ^ m) x = x ↔ g ^ m = 1 := by
    constructor
    · intro hgm
      simp only [IsCycle.pow_eq_one_iff hg]
      use x
    · intro hgm
      simp only [hgm, coe_one, id_eq]
  rw [this]
  by_cases hm0 : m = 0
  · simp only [hm0, pow_zero]
  · simp only [hm0, iff_false]
    exact pow_ne_one_of_lt_orderOf hm0 div_euc.2

end Perm

end Equiv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant76a8453fa674c0db36fb0694ed4dfa516db2f5681b211d1cf80f4b81cd675f88.lean#L1065).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33a0a177dacc514f42e4d5742e070ec7c0806fd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
