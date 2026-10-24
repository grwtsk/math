# formPerm_reverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d52f2ec62e73f9fd9ec902f4c062f96249fd61a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 298,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e7cbaca-90cf-538f-1281-f73b6aff4bf7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c56936b0-49f5-38f4-7611-13e691efed44",
  "kind": "theorem",
  "lexical_name": "formPerm_reverse",
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
  "slug": "formperm-reverse--c561920936af06b1a694a5dd",
  "source": {
    "blob": "4d52f2ec62e73f9fd9ec902f4c062f96249fd61a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 298,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c561920936af06b1a694a5ddba78ddcf3cdb1a0f5c74c1e623547b714526b704",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c56936b0-49f5-38f4-7611-13e691efed44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem formPerm_reverse (l : List α) (h : Nodup l) : formPerm l.reverse = (formPerm l)⁻¹ := by
  -- Let's show `formPerm l` is an inverse to `formPerm l.reverse`.
  rw [eq_comm, inv_eq_iff_mul_eq_one]
  ext x
  -- We only have to check for `x ∈ l` that `formPerm l (formPerm l.reverse x)`
  rw [mul_apply, one_apply]
  cases' Classical.em (x ∈ l) with hx hx
  · obtain ⟨k, hk, rfl⟩ := nthLe_of_mem (mem_reverse.mpr hx)
    have h1 : l.length - 1 - k < l.length := by
      rw [Nat.sub_sub, add_comm]
      exact Nat.sub_lt_self (Nat.succ_pos _) (Nat.succ_le_of_lt (by simpa using hk))
    have h2 : length l - 1 - (k + 1) % length (reverse l) < length l := by
      rw [Nat.sub_sub, length_reverse];
      exact Nat.sub_lt_self (by rw [add_comm]; exact Nat.succ_pos _)
        (by rw [add_comm]; exact Nat.succ_le_of_lt (Nat.mod_lt _ (length_pos_of_mem hx)))
    rw [formPerm_apply_nthLe l.reverse (nodup_reverse.mpr h), nthLe_reverse' _ _ _ h1,
      nthLe_reverse' _ _ _ h2, formPerm_apply_nthLe _ h]
    congr
    rw [length_reverse] at *
    cases' lt_or_eq_of_le (Nat.succ_le_of_lt hk) with h h
    · rw [Nat.mod_eq_of_lt h, ← Nat.sub_add_comm, Nat.succ_sub_succ_eq_sub,
        Nat.mod_eq_of_lt h1]
      exact (Nat.le_sub_iff_add_le (length_pos_of_mem hx)).2 (Nat.succ_le_of_lt h)
    · rw [← h]; simp
  · rw [formPerm_apply_of_not_mem x l.reverse, formPerm_apply_of_not_mem _ _ hx]
    simpa using hx
#align list.form_perm_reverse List.formPerm_reverse

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant244b8c0e1dd919b997f05c9397daad3c796d6f9eec08c1acd75da3378b076701.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d52f2ec62e73f9fd9ec902f4c062f96249fd61a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
