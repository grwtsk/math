# vecAlt1_vecAppend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7aedbdea64e7cdf5493b612f1c735ea62cea293",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 352,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d12f628-a3d9-ee21-564c-3e4299d1357e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8bfaddc1-a2ab-dcb0-0f86-99053f50a317",
  "kind": "theorem",
  "lexical_name": "vecAlt1_vecAppend",
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
  "slug": "vecalt1-vecappend--f12d066ef8347d2c94ce0058",
  "source": {
    "blob": "d7aedbdea64e7cdf5493b612f1c735ea62cea293",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 352,
    "path": "GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f12d066ef8347d2c94ce0058f17323c875f204b98405b540da2b395fa83e0fcd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bfaddc1-a2ab-dcb0-0f86-99053f50a317`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vecAlt1_vecAppend (v : Fin (n + 1) → α) :
    vecAlt1 rfl (vecAppend rfl v v) = v ∘ (fun n ↦ (n + n) + 1) := by
  ext i
  simp_rw [Function.comp, vecAlt1, vecAppend_eq_ite]
  cases n with
  | zero =>
    obtain ⟨i, hi⟩ := i
    simp only [Nat.zero_add, Nat.lt_one_iff] at hi; subst i; rfl
  | succ n =>
    split_ifs with h <;> congr
    · simp [Nat.mod_eq_of_lt, h]
    · rw [Fin.val_mk, not_lt] at h
      simp only [Fin.ext_iff, Fin.val_add, Fin.val_mk, Nat.mod_add_mod, Fin.val_one,
        Nat.mod_eq_sub_mod h, show 1 % (n + 2) = 1 from Nat.mod_eq_of_lt (by omega)]
      refine (Nat.mod_eq_of_lt ?_).symm
      omega

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7aedbdea64e7cdf5493b612f1c735ea62cea293` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
