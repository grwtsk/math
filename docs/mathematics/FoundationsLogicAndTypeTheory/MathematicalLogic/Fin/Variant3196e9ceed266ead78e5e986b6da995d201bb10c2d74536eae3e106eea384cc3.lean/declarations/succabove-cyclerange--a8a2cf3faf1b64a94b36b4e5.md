# succAbove_cycleRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a73e7bfe41bea232ad239b18d49a74f4206129e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/3196e9ceed266ead78e5e986b6da995d201bb10c2d74536eae3e106eea384cc3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:660cbced-bb80-362e-4764-d719bfce2c89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:632c53a1-63c5-89cf-b9f8-5ef8fca1c8f3",
  "kind": "theorem",
  "lexical_name": "succAbove_cycleRange",
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
  "slug": "succabove-cyclerange--a8a2cf3faf1b64a94b36b4e5",
  "source": {
    "blob": "7a73e7bfe41bea232ad239b18d49a74f4206129e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 251,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant3196e9ceed266ead78e5e986b6da995d201bb10c2d74536eae3e106eea384cc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8a2cf3faf1b64a94b36b4e5e17686dde3aa4b0410a261af2983090f95a59edb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant3196e9ceed266ead78e5e986b6da995d201bb10c2d74536eae3e106eea384cc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:632c53a1-63c5-89cf-b9f8-5ef8fca1c8f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem succAbove_cycleRange {n : ℕ} (i j : Fin n) :
    i.succ.succAbove (i.cycleRange j) = swap 0 i.succ j.succ := by
  cases n
  · rcases j with ⟨_, ⟨⟩⟩
  rcases lt_trichotomy j i with (hlt | heq | hgt)
  · have : castSucc (j + 1) = j.succ := by
      ext
      rw [coe_castSucc, val_succ, Fin.val_add_one_of_lt (lt_of_lt_of_le hlt i.le_last)]
    rw [Fin.cycleRange_of_lt hlt, Fin.succAbove_below, this, swap_apply_of_ne_of_ne]
    · apply Fin.succ_ne_zero
    · exact (Fin.succ_injective _).ne hlt.ne
    · rw [Fin.lt_iff_val_lt_val]
      simpa [this] using hlt
  · rw [heq, Fin.cycleRange_self, Fin.succAbove_below, swap_apply_right, Fin.castSucc_zero]
    · rw [Fin.castSucc_zero]
      apply Fin.succ_pos
  · rw [Fin.cycleRange_of_gt hgt, Fin.succAbove_above, swap_apply_of_ne_of_ne]
    · apply Fin.succ_ne_zero
    · apply (Fin.succ_injective _).ne hgt.ne.symm
    · simpa [Fin.le_iff_val_le_val] using hgt
#align fin.succ_above_cycle_range Fin.succAbove_cycleRange

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant3196e9ceed266ead78e5e986b6da995d201bb10c2d74536eae3e106eea384cc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant3196e9ceed266ead78e5e986b6da995d201bb10c2d74536eae3e106eea384cc3.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a73e7bfe41bea232ad239b18d49a74f4206129e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
