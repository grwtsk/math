# eq_zero_of_mul_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6bcf5b3-5236-2955-9c54-a59a10fb401d",
  "kind": "theorem",
  "lexical_name": "eq_zero_of_mul_eq_zero",
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
  "slug": "eq-zero-of-mul-eq-zero--5f75ef054cce926c4dd2aad8",
  "source": {
    "blob": "b6fde284bbafe7fc0bd0913c608209fa2812188a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f75ef054cce926c4dd2aad8224fc66bf5728276802a54da3c01991021b88027",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6bcf5b3-5236-2955-9c54-a59a10fb401d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_of_mul_eq_zero : ∀ {n m : ℕ}, n * m = 0 → n = 0 ∨ m = 0
  | 0, m => fun _ => Or.inl rfl
  | succ n, m => by
    rw [succ_mul]; intro h
    exact Or.inr (Nat.eq_zero_of_add_eq_zero_left h)
#align nat.eq_zero_of_mul_eq_zero Nat.eq_zero_of_mul_eq_zero

/-! properties of inequality -/

#align nat.le_of_eq Nat.le_of_eq

#align nat.le_succ_of_le Nat.le_succ_of_le

#align nat.le_of_succ_le Nat.le_of_succ_le

#align nat.le_of_lt Nat.le_of_lt

#align nat.lt.step Nat.lt.step

#align nat.eq_zero_or_pos Nat.eq_zero_or_pos

#align nat.pos_of_ne_zero Nat.pos_of_ne_zero

#align nat.lt_trans Nat.lt_trans

#align nat.lt_of_le_of_lt Nat.lt_of_le_of_lt

#align nat.lt.base Nat.lt.base

#align nat.lt_succ_self Nat.lt_succ_self

#align nat.le_antisymm Nat.le_antisymm

#align nat.lt_or_ge Nat.lt_or_ge

#align nat.le_total Nat.le_total

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6fde284bbafe7fc0bd0913c608209fa2812188a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
