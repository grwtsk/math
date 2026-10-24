# formPerm_ext_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5c108fe-7284-8258-bcc2-056f9fc4a8a0",
  "kind": "theorem",
  "lexical_name": "formPerm_ext_iff",
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
  "slug": "formperm-ext-iff--8095566938710273fc2eff9c",
  "source": {
    "blob": "83f82e014795bcbde1a02aa9d74b959e3bb52ad8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 350,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7cfcf19eb46f84f7f84e0b09a97c8ef34778351c34d54363855b7e7174bcb546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8095566938710273fc2eff9cec247c087214c3d8b5270cb7e1ac7c96bd6a473f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7cfcf19eb46f84f7f84e0b09a97c8ef34778351c34d54363855b7e7174bcb546.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5c108fe-7284-8258-bcc2-056f9fc4a8a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem formPerm_ext_iff {x y x' y' : α} {l l' : List α} (hd : Nodup (x :: y :: l))
    (hd' : Nodup (x' :: y' :: l')) :
    formPerm (x :: y :: l) = formPerm (x' :: y' :: l') ↔ (x :: y :: l) ~r (x' :: y' :: l') := by
  refine' ⟨fun h => _, fun hr => formPerm_eq_of_isRotated hd hr⟩
  rw [Equiv.Perm.ext_iff] at h
  have hx : x' ∈ x :: y :: l := by
    have : x' ∈ { z | formPerm (x :: y :: l) z ≠ z } := by
      rw [Set.mem_setOf_eq, h x', formPerm_apply_head _ _ _ hd']
      simp only [mem_cons, nodup_cons] at hd'
      push_neg at hd'
      exact hd'.left.left.symm
    simpa using support_formPerm_le' _ this
  obtain ⟨n, hn, hx'⟩ := nthLe_of_mem hx
  have hl : (x :: y :: l).length = (x' :: y' :: l').length := by
    rw [← dedup_eq_self.mpr hd, ← dedup_eq_self.mpr hd', ← card_toFinset, ← card_toFinset]
    refine' congr_arg Finset.card _
    rw [← Finset.coe_inj, ← support_formPerm_of_nodup' _ hd (by simp), ←
      support_formPerm_of_nodup' _ hd' (by simp)]
    simp only [h]
  use n
  apply List.ext_nthLe
  · rw [length_rotate, hl]
  · intro k hk hk'
    rw [nthLe_rotate]
    induction' k with k IH
    · refine' Eq.trans _ hx'
      congr
      simpa using hn
    · have : k.succ = (k + 1) % (x' :: y' :: l').length := by
        rw [← Nat.succ_eq_add_one, Nat.mod_eq_of_lt hk']
      simp_rw [this]
      rw [← formPerm_apply_nthLe _ hd' k (k.lt_succ_self.trans hk'), ←
        IH (k.lt_succ_self.trans hk), ← h, formPerm_apply_nthLe _ hd]
      congr 1
      have h1 : 1 = 1 % (x' :: y' :: l').length := by simp
      rw [hl, Nat.mod_eq_of_lt hk', h1, ← Nat.add_mod, Nat.succ_add, Nat.succ_eq_add_one]
#align list.form_perm_ext_iff List.formPerm_ext_iff

set_option linter.deprecated false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7cfcf19eb46f84f7f84e0b09a97c8ef34778351c34d54363855b7e7174bcb546.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7cfcf19eb46f84f7f84e0b09a97c8ef34778351c34d54363855b7e7174bcb546.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83f82e014795bcbde1a02aa9d74b959e3bb52ad8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
