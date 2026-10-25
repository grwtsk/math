# formPerm_toList

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83454a1ca5c479792bda20778feec02764ac84f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 377,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/3135047e4904cb0b6c28340434a56a42bfe4aa216307c17240be810a95b307d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa1d2646-c359-067a-4d01-48a0f9d1c466",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:98d3e87c-bcd2-3dba-b97a-deaa9946b8fd",
  "kind": "theorem",
  "lexical_name": "formPerm_toList",
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
  "slug": "formperm-tolist--6c7709b57590789c1954efac",
  "source": {
    "blob": "83454a1ca5c479792bda20778feec02764ac84f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 377,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3135047e4904cb0b6c28340434a56a42bfe4aa216307c17240be810a95b307d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c7709b57590789c1954efac2f5bcf0368da470560d31def5c134c67f5bd5a7d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3135047e4904cb0b6c28340434a56a42bfe4aa216307c17240be810a95b307d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98d3e87c-bcd2-3dba-b97a-deaa9946b8fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem formPerm_toList (f : Perm α) (x : α) : formPerm (toList f x) = f.cycleOf x := by
  by_cases hx : f x = x
  · rw [(cycleOf_eq_one_iff f).mpr hx, toList_eq_nil_iff.mpr (not_mem_support.mpr hx),
      formPerm_nil]
  ext y
  by_cases hy : SameCycle f x y
  · obtain ⟨k, _, rfl⟩ := hy.exists_pow_eq_of_mem_support (mem_support.mpr hx)
    rw [cycleOf_apply_apply_pow_self, List.formPerm_apply_mem_eq_next (nodup_toList f x),
      next_toList_eq_apply, pow_succ, mul_apply]
    rw [mem_toList_iff]
    exact ⟨⟨k, rfl⟩, mem_support.mpr hx⟩
  · rw [cycleOf_apply_of_not_sameCycle hy, formPerm_apply_of_not_mem]
    simp [mem_toList_iff, hy]
#align equiv.perm.form_perm_to_list Equiv.Perm.formPerm_toList

/-- Given a cyclic `f : Perm α`, generate the `Cycle α` in the order
of application of `f`. Implemented by finding an element `x : α`
in the support of `f` in `Finset.univ`, and iterating on using
`Equiv.Perm.toList f x`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3135047e4904cb0b6c28340434a56a42bfe4aa216307c17240be810a95b307d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3135047e4904cb0b6c28340434a56a42bfe4aa216307c17240be810a95b307d0.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83454a1ca5c479792bda20778feec02764ac84f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
