# nodup_toList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c8ff7449f44f3ff88d2883b521aa1915b4edf12a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95eb9d0d-6c3c-a29d-820f-33aeba170839",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef45abea-4cbc-5e15-2188-84f088f0da5e",
  "kind": "theorem",
  "lexical_name": "nodup_toList",
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
  "slug": "nodup-tolist--ab0a66b80ec28b2b5f5e938a",
  "source": {
    "blob": "c8ff7449f44f3ff88d2883b521aa1915b4edf12a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 245,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab0a66b80ec28b2b5f5e938a550af0128d7cca9cb083a01d671f30ce8a0a2b0a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef45abea-4cbc-5e15-2188-84f088f0da5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nodup_toList (p : Perm α) (x : α) : Nodup (toList p x) := by
  by_cases hx : p x = x
  · rw [← notMem_support, ← toList_eq_nil_iff] at hx
    simp [hx]
  have hc : IsCycle (cycleOf p x) := isCycle_cycleOf p hx
  rw [nodup_iff_injective_getElem]
  intro ⟨n, hn⟩ ⟨m, hm⟩
  rw [length_toList, ← hc.orderOf] at hm hn
  rw [← cycleOf_apply_self, ← Ne, ← mem_support] at hx
  simp only [Fin.mk.injEq]
  rw [getElem_toList, getElem_toList, ← cycleOf_pow_apply_self p x n, ←
    cycleOf_pow_apply_self p x m]
  rcases n with - | n <;> rcases m with - | m
  · simp
  · rw [← hc.support_pow_of_pos_of_lt_orderOf m.zero_lt_succ hm, mem_support,
      cycleOf_pow_apply_self] at hx
    simp [hx.symm]
  · rw [← hc.support_pow_of_pos_of_lt_orderOf n.zero_lt_succ hn, mem_support,
      cycleOf_pow_apply_self] at hx
    simp [hx]
  intro h
  have hn' : ¬orderOf (p.cycleOf x) ∣ n.succ := Nat.not_dvd_of_pos_of_lt n.zero_lt_succ hn
  have hm' : ¬orderOf (p.cycleOf x) ∣ m.succ := Nat.not_dvd_of_pos_of_lt m.zero_lt_succ hm
  rw [← hc.support_pow_eq_iff] at hn' hm'
  rw [← Nat.mod_eq_of_lt hn, ← Nat.mod_eq_of_lt hm, ← pow_inj_mod]
  refine support_congr ?_ ?_
  · rw [hm', hn']
  · rw [hm']
    intro y hy
    obtain ⟨k, rfl⟩ := hc.exists_pow_eq (mem_support.mp hx) (mem_support.mp hy)
    rw [← mul_apply, (Commute.pow_pow_self _ _ _).eq, mul_apply, h, ← mul_apply, ← mul_apply,
      (Commute.pow_pow_self _ _ _).eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8ff7449f44f3ff88d2883b521aa1915b4edf12a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
