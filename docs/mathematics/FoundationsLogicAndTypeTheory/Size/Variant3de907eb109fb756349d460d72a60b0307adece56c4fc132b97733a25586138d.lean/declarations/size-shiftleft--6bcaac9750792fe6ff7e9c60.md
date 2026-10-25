# size_shiftLeft'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93c8a60ad350592f99db3fd497301db1548b550a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a00eea49-d122-dd37-bc6e-2b0da345d7e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69552f9d-2b5f-cb56-65dc-6ca9d925f83e",
  "kind": "theorem",
  "lexical_name": "size_shiftLeft'",
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
  "slug": "size-shiftleft--6bcaac9750792fe6ff7e9c60",
  "source": {
    "blob": "93c8a60ad350592f99db3fd497301db1548b550a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 93,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bcaac9750792fe6ff7e9c60427ab859dc21b2309d6224078aa1108829468851",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69552f9d-2b5f-cb56-65dc-6ca9d925f83e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem size_shiftLeft' {b m n} (h : shiftLeft' b m n ≠ 0) :
    size (shiftLeft' b m n) = size m + n := by
  induction' n with n IH <;> simp [shiftLeft'] at h ⊢
  rw [size_bit h, Nat.add_succ]
  by_cases s0 : shiftLeft' b m n = 0 <;> [skip; rw [IH s0]]
  rw [s0] at h ⊢
  cases b; · exact absurd rfl h
  have : shiftLeft' true m n + 1 = 1 := congr_arg (· + 1) s0
  rw [shiftLeft'_tt_eq_mul_pow] at this
  obtain rfl := succ.inj (eq_one_of_dvd_one ⟨_, this.symm⟩)
  simp only [zero_add, one_mul] at this
  obtain rfl : n = 0 :=
    Nat.eq_zero_of_le_zero
      (le_of_not_gt fun hn => ne_of_gt (pow_lt_pow_of_lt_right (by decide) hn) this)
  rfl
#align nat.size_shiftl' Nat.size_shiftLeft'

-- TODO: decide whether `Nat.shiftLeft_eq` (which rewrites the LHS into a power) should be a simp
-- lemma; it was not in mathlib3. Until then, tell the simpNF linter to ignore the issue.
@[simp, nolint simpNF]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Size/Variant3de907eb109fb756349d460d72a60b0307adece56c4fc132b97733a25586138d.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93c8a60ad350592f99db3fd497301db1548b550a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
