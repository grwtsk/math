# cond_decide_mod_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a94f3290-df70-387c-9b86-d7ed11d6c0c0",
  "kind": "theorem",
  "lexical_name": "cond_decide_mod_two",
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
  "slug": "cond-decide-mod-two--ce856691ec6f415b530e6fa8",
  "source": {
    "blob": "b6fde284bbafe7fc0bd0913c608209fa2812188a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 630,
    "line": 566,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce856691ec6f415b530e6fa8f31c03b1c65c87f83d1af9c5aa02e29eda2e7c21",
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

Occurrence: `result:a94f3290-df70-387c-9b86-d7ed11d6c0c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–630.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cond_decide_mod_two (x : ℕ) [d : Decidable (x % 2 = 1)] :
    cond (@decide (x % 2 = 1) d) 1 0 = x % 2 := by
  by_cases h : x % 2 = 1
  · simp! [*]
  · cases mod_two_eq_zero_or_one x <;> simp! [*, Nat.zero_ne_one]
#align nat.cond_to_bool_mod_two Nat.cond_decide_mod_two

#align nat.sub_mul_mod Nat.sub_mul_mod

/-! div -/

#align nat.div_def Nat.div_eq

#align nat.mod_add_div Nat.mod_add_div

#align nat.div_one Nat.div_one

#align nat.div_zero Nat.div_zero

#align nat.zero_div Nat.zero_div

#align nat.div_le_of_le_mul Nat.div_le_of_le_mul

#align nat.div_le_self Nat.div_le_self

#align nat.div_eq_sub_div Nat.div_eq_sub_divₓ

#align nat.div_eq_of_lt Nat.div_eq_of_lt

#align nat.le_div_iff_mul_le Nat.le_div_iff_mul_le

#align nat.div_lt_iff_lt_mul Nat.div_lt_iff_lt_mul

#align nat.sub_mul_div Nat.sub_mul_div

#align nat.div_mul_le_self Nat.div_mul_le_self

#align nat.add_div_right Nat.add_div_right

#align nat.add_div_left Nat.add_div_left

#align nat.mul_div_right Nat.mul_div_right

#align nat.mul_div_left Nat.mul_div_left

#align nat.div_self Nat.div_self

#align nat.add_mul_div_left Nat.add_mul_div_left

#align nat.add_mul_div_right Nat.add_mul_div_right

#align nat.mul_div_cancel Nat.mul_div_cancel

#align nat.mul_div_cancel_left Nat.mul_div_cancel_left

#align nat.div_eq_of_eq_mul_left Nat.div_eq_of_eq_mul_leftₓ

#align nat.div_eq_of_eq_mul_right Nat.div_eq_of_eq_mul_rightₓ

#align nat.div_eq_of_lt_le Nat.div_eq_of_lt_leₓ

#align nat.mul_sub_div Nat.mul_sub_div

#align nat.div_div_eq_div_mul Nat.div_div_eq_div_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6fde284bbafe7fc0bd0913c608209fa2812188a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
