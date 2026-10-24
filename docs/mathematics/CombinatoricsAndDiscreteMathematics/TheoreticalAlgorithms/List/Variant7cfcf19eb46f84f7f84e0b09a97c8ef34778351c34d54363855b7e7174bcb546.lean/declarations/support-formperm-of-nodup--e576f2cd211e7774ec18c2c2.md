# support_formPerm_of_nodup'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc792711-8d71-6a7d-f0a1-2614df04246d",
  "kind": "theorem",
  "lexical_name": "support_formPerm_of_nodup'",
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
  "slug": "support-formperm-of-nodup--e576f2cd211e7774ec18c2c2",
  "source": {
    "blob": "83f82e014795bcbde1a02aa9d74b959e3bb52ad8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 252,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7cfcf19eb46f84f7f84e0b09a97c8ef34778351c34d54363855b7e7174bcb546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e576f2cd211e7774ec18c2c20eb2a5fdc0fb24dde9a037fb21ab5f53b69ce433",
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

Occurrence: `result:cc792711-8d71-6a7d-f0a1-2614df04246d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem support_formPerm_of_nodup' (l : List α) (h : Nodup l) (h' : ∀ x : α, l ≠ [x]) :
    { x | formPerm l x ≠ x } = l.toFinset := by
  apply _root_.le_antisymm
  · exact support_formPerm_le' l
  · intro x hx
    simp only [Finset.mem_coe, mem_toFinset] at hx
    obtain ⟨n, hn, rfl⟩ := nthLe_of_mem hx
    rw [Set.mem_setOf_eq, formPerm_apply_nthLe _ h]
    intro H
    rw [nodup_iff_nthLe_inj] at h
    specialize h _ _ _ _ H
    cases' (Nat.succ_le_of_lt hn).eq_or_lt with hn' hn'
    · simp only [← hn', Nat.mod_self] at h
      refine' not_exists.mpr h' _
      rw [← length_eq_one]
      simpa [← h, eq_comm] using hn'
    · simp [Nat.mod_eq_of_lt hn'] at h
#align list.support_form_perm_of_nodup' List.support_formPerm_of_nodup'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7cfcf19eb46f84f7f84e0b09a97c8ef34778351c34d54363855b7e7174bcb546.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant7cfcf19eb46f84f7f84e0b09a97c8ef34778351c34d54363855b7e7174bcb546.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83f82e014795bcbde1a02aa9d74b959e3bb52ad8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
