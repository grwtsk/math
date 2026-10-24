# vecAlt1_vecAppend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26a08ffd-2ef2-9c4e-e153-889873c8970b",
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
  "slug": "vecalt1-vecappend--bf3f4f299b6297096a368133",
  "source": {
    "blob": "235ee4351dd3b285928c42c2ac75a6317901333f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 345,
    "path": "GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant33bc1e7bc568ee1789fa9782316ff5b01d33bb488e764c86e16be714c7c5d979.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf3f4f299b6297096a3681334b829342c25ab0e0c55c2221ec4416466bf1044c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/VecNotation/Variant33bc1e7bc568ee1789fa9782316ff5b01d33bb488e764c86e16be714c7c5d979.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26a08ffd-2ef2-9c4e-e153-889873c8970b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vecAlt1_vecAppend (v : Fin (n + 1) → α) : vecAlt1 rfl (vecAppend rfl v v) = v ∘ bit1 := by
  ext i
  simp_rw [Function.comp, vecAlt1, vecAppend_eq_ite]
  cases n with
  | zero =>
    cases' i with i hi
    simp only [Nat.zero_eq, zero_add, Nat.lt_one_iff] at hi; subst i; rfl
  | succ n =>
    split_ifs with h <;> simp_rw [bit1, bit0] <;> congr
    · rw [Fin.val_mk] at h
      rw [Nat.mod_eq_of_lt (Nat.lt_of_succ_lt h)]
      erw [Nat.mod_eq_of_lt h]
    · rw [Fin.val_mk, not_lt] at h
      simp only [Fin.ext_iff, Fin.val_add, Fin.val_mk, Nat.mod_add_mod, Fin.val_one,
        Nat.mod_eq_sub_mod h, show 1 % (n + 2) = 1 from Nat.mod_eq_of_lt (by simp)]
      refine (Nat.mod_eq_of_lt ?_).symm
      rw [tsub_lt_iff_left h]
      exact Nat.add_succ_lt_add i.2 i.2
#align matrix.vec_alt1_vec_append Matrix.vecAlt1_vecAppend

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/VecNotation/Variant33bc1e7bc568ee1789fa9782316ff5b01d33bb488e764c86e16be714c7c5d979.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant33bc1e7bc568ee1789fa9782316ff5b01d33bb488e764c86e16be714c7c5d979.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `235ee4351dd3b285928c42c2ac75a6317901333f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
