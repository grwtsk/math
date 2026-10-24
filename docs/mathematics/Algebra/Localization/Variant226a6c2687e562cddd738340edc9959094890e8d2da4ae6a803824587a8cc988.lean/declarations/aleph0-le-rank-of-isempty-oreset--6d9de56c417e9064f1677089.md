# aleph0_le_rank_of_isEmpty_oreSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa0ea85fb29c44bcfbec96df2549c6fcb712d338",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9dba626-9ecb-6d4c-7443-43fb6f408d33",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d749b57a-346f-e79e-e297-1ba9c3ded909",
  "kind": "lemma",
  "lexical_name": "aleph0_le_rank_of_isEmpty_oreSet",
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
  "slug": "aleph0-le-rank-of-isempty-oreset--6d9de56c417e9064f1677089",
  "source": {
    "blob": "fa0ea85fb29c44bcfbec96df2549c6fcb712d338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 192,
    "path": "GRWTSK/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d9de56c417e9064f1677089eacbf769d454872a28c08eccd2e0629fc61b0548",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d749b57a-346f-e79e-e297-1ba9c3ded909`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma aleph0_le_rank_of_isEmpty_oreSet (hS : IsEmpty (OreLocalization.OreSet R⁰)) :
    ℵ₀ ≤ Module.rank R R := by
  classical
  rw [← not_nonempty_iff, OreLocalization.nonempty_oreSet_iff_of_noZeroDivisors] at hS
  push_neg at hS
  obtain ⟨r, s, h⟩ := hS
  refine Cardinal.aleph0_le.mpr fun n ↦ ?_
  suffices LinearIndependent R (fun (i : Fin n) ↦ r * s ^ (i : ℕ)) by
    simpa using this.cardinal_lift_le_rank
  suffices ∀ (g : ℕ → R) (x), (∑ i ∈ Finset.range n, g i • (r * s ^ (i + x))) = 0 →
      ∀ i < n, g i = 0 by
    refine Fintype.linearIndependent_iff.mpr fun g hg i ↦ ?_
    simpa only [dif_pos i.prop] using this (fun i ↦ if h : i < n then g ⟨i, h⟩ else 0) 0
      (by simp [← Fin.sum_univ_eq_sum_range, ← hg]) i i.prop
  intro g x hg i hin
  induction n generalizing g x i with
  | zero => exact (hin.not_le (zero_le i)).elim
  | succ n IH =>
    rw [Finset.sum_range_succ'] at hg
    by_cases hg0 : g 0 = 0
    · simp only [hg0, zero_smul, add_zero, add_assoc] at hg
      cases i; exacts [hg0, IH _ _ hg _ (Nat.succ_lt_succ_iff.mp hin)]
    simp only [MulOpposite.smul_eq_mul_unop, zero_add, ← add_comm _ x, pow_add _ _ x,
      ← mul_assoc, pow_succ, ← Finset.sum_mul, pow_zero, one_mul, smul_eq_mul] at hg
    rw [← neg_eq_iff_add_eq_zero, ← neg_mul, ← neg_mul] at hg
    have := mul_right_cancel₀ (mem_nonZeroDivisors_iff_ne_zero.mp (s ^ x).prop) hg
    exact (h _ ⟨(g 0), mem_nonZeroDivisors_iff_ne_zero.mpr (by simpa)⟩ this.symm).elim

-- TODO: Upgrade this to an iff. See [lam_1999] Exercise 10.21
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa0ea85fb29c44bcfbec96df2549c6fcb712d338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
