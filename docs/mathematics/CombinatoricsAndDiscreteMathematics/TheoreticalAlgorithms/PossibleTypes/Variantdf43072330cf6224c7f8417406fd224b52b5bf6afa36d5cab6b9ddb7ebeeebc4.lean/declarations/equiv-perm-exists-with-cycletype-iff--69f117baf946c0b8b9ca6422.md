# Equiv.Perm.exists_with_cycleType_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc4122dd-d586-46cc-62a3-070cd05428ff",
  "kind": "theorem",
  "lexical_name": "Equiv.Perm.exists_with_cycleType_iff",
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
  "slug": "equiv-perm-exists-with-cycletype-iff--69f117baf946c0b8b9ca6422",
  "source": {
    "blob": "a10f4a7876360528b169dd4f9e9745d8fc506016",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 82,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PossibleTypes/Variantdf43072330cf6224c7f8417406fd224b52b5bf6afa36d5cab6b9ddb7ebeeebc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69f117baf946c0b8b9ca6422896980462bec332f2e1de52f7c0513f05ce8f5e0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PossibleTypes/Variantdf43072330cf6224c7f8417406fd224b52b5bf6afa36d5cab6b9ddb7ebeeebc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc4122dd-d586-46cc-62a3-070cd05428ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Equiv.Perm.exists_with_cycleType_iff {m : Multiset ℕ} :
    (∃ g : Equiv.Perm α, g.cycleType = m) ↔
      (m.sum ≤ Fintype.card α ∧ ∀ a ∈ m, 2 ≤ a) := by
  constructor
  · -- empty case
    intro h
    obtain ⟨g, hg⟩ := h
    constructor
    · rw [← hg, Equiv.Perm.sum_cycleType]
      exact (Equiv.Perm.support g).card_le_univ
    · intro a
      rw [← hg]
      exact Equiv.Perm.two_le_of_mem_cycleType
  · rintro ⟨hc, h2c⟩
    have hc' : m.toList.sum ≤ Fintype.card α := by
      simp only [Multiset.sum_toList]
      exact hc
    obtain ⟨p, hp_length, hp_nodup, hp_disj⟩ := List.exists_pw_disjoint_with_card hc'
    use List.prod (List.map (fun l => List.formPerm l) p)
    have hp2 : ∀ x ∈ p, 2 ≤ x.length := by
      intro x hx
      apply h2c x.length
      rw [← Multiset.mem_toList, ← hp_length, List.mem_map]
      exact ⟨x, hx, rfl⟩
    rw [Equiv.Perm.cycleType_eq _ rfl]
    · -- lengths
      rw [← Multiset.coe_toList m]
      apply congr_arg
      rw [List.map_map]; rw [← hp_length]
      apply List.map_congr_left
      intro x hx; simp only [Function.comp_apply]
      rw [List.support_formPerm_of_nodup x (hp_nodup x hx)]
      ·-- length
        rw [List.toFinset_card_of_nodup (hp_nodup x hx)]
      · -- length >= 1
        intro a h
        apply Nat.not_succ_le_self 1
        conv_rhs => rw [← List.length_singleton (a := a)]; rw [← h]
        exact hp2 x hx
    · -- cycles
      intro g
      rw [List.mem_map]
      rintro ⟨x, hx, rfl⟩
      have hx_nodup : x.Nodup := hp_nodup x hx
      rw [← Cycle.formPerm_coe x hx_nodup]
      apply Cycle.isCycle_formPerm
      rw [Cycle.nontrivial_coe_nodup_iff hx_nodup]
      exact hp2 x hx
    · -- disjoint
      rw [List.pairwise_map]
      apply List.Pairwise.imp_of_mem _ hp_disj
      intro a b ha hb hab
      rw [List.formPerm_disjoint_iff (hp_nodup a ha) (hp_nodup b hb) (hp2 a ha) (hp2 b hb)]
      exact hab
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PossibleTypes/Variantdf43072330cf6224c7f8417406fd224b52b5bf6afa36d5cab6b9ddb7ebeeebc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PossibleTypes/Variantdf43072330cf6224c7f8417406fd224b52b5bf6afa36d5cab6b9ddb7ebeeebc4.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a10f4a7876360528b169dd4f9e9745d8fc506016` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
