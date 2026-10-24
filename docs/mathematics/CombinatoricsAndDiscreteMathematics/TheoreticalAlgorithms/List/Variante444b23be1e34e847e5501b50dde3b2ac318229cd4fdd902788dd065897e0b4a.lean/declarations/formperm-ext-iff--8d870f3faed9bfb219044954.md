# formPerm_ext_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "08f69ba1f5c6710f2d2d4b766b8c2cb8e14ef8e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f09f330-bd24-8512-95e5-735374f569e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ffb7482-c70c-3677-9956-06f807d23a5f",
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
  "slug": "formperm-ext-iff--8d870f3faed9bfb219044954",
  "source": {
    "blob": "08f69ba1f5c6710f2d2d4b766b8c2cb8e14ef8e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 265,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d870f3faed9bfb2190449546f2bdf92fd29277eedde6af2c0ffc1b386ca6fe5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ffb7482-c70c-3677-9956-06f807d23a5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem formPerm_ext_iff {x y x' y' : α} {l l' : List α} (hd : Nodup (x :: y :: l))
    (hd' : Nodup (x' :: y' :: l')) :
    formPerm (x :: y :: l) = formPerm (x' :: y' :: l') ↔ (x :: y :: l) ~r (x' :: y' :: l') := by
  refine ⟨fun h => ?_, fun hr => formPerm_eq_of_isRotated hd hr⟩
  rw [Equiv.Perm.ext_iff] at h
  have hx : x' ∈ x :: y :: l := by
    have : x' ∈ { z | formPerm (x :: y :: l) z ≠ z } := by
      rw [Set.mem_setOf_eq, h x', formPerm_apply_head _ _ _ hd']
      simp only [mem_cons, nodup_cons] at hd'
      push_neg at hd'
      exact hd'.left.left.symm
    simpa using support_formPerm_le' _ this
  obtain ⟨⟨n, hn⟩, hx'⟩ := get_of_mem hx
  have hl : (x :: y :: l).length = (x' :: y' :: l').length := by
    rw [← dedup_eq_self.mpr hd, ← dedup_eq_self.mpr hd', ← card_toFinset, ← card_toFinset]
    refine congr_arg Finset.card ?_
    rw [← Finset.coe_inj, ← support_formPerm_of_nodup' _ hd (by simp), ←
      support_formPerm_of_nodup' _ hd' (by simp)]
    simp only [h]
  use n
  apply List.ext_getElem
  · rw [length_rotate, hl]
  · intro k hk hk'
    rw [getElem_rotate]
    induction' k with k IH
    · refine Eq.trans ?_ hx'
      congr
      simpa using hn
    · conv => congr <;> · arg 2; (rw [← Nat.mod_eq_of_lt hk'])
      rw [← formPerm_apply_getElem _ hd' k (k.lt_succ_self.trans hk'),
        ← IH (k.lt_succ_self.trans hk), ← h, formPerm_apply_getElem _ hd]
      congr 1
      rw [hl, Nat.mod_eq_of_lt hk', add_right_comm]
      apply Nat.add_mod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variante444b23be1e34e847e5501b50dde3b2ac318229cd4fdd902788dd065897e0b4a.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08f69ba1f5c6710f2d2d4b766b8c2cb8e14ef8e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
