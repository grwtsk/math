# le_sub_iff_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6b47dba-f5fb-0861-9440-5cf7e204c6b8",
  "kind": "theorem",
  "lexical_name": "le_sub_iff_right",
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
  "slug": "le-sub-iff-right--f2b9ca39f0428204df2589ae",
  "source": {
    "blob": "b6fde284bbafe7fc0bd0913c608209fa2812188a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 424,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2b9ca39f0428204df2589ae6c9b71229baaea7ef55c41297350737d2ae65c7e",
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

Occurrence: `result:d6b47dba-f5fb-0861-9440-5cf7e204c6b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem le_sub_iff_right {x y k : ℕ} (h : k ≤ y) : x ≤ y - k ↔ x + k ≤ y := by
  rw [← Nat.add_sub_cancel x k, Nat.sub_le_sub_iff_right h, Nat.add_sub_cancel]
#align nat.le_sub_iff_right Nat.le_sub_iff_right

#align nat.sub_lt_of_pos_le Nat.sub_lt_of_pos_le

#align nat.sub_one Nat.sub_one

#align nat.succ_sub_one Nat.succ_sub_one

#align nat.succ_pred_eq_of_pos Nat.succ_pred_eq_of_pos

#align nat.sub_eq_zero_of_le Nat.sub_eq_zero_of_le

#align nat.le_of_sub_eq_zero Nat.le_of_sub_eq_zero

#align nat.sub_eq_zero_iff_le Nat.sub_eq_zero_iff_le

#align nat.add_sub_of_le Nat.add_sub_of_le

#align nat.sub_add_cancel Nat.sub_add_cancel

#align nat.add_sub_assoc Nat.add_sub_assoc

#align nat.sub_eq_iff_eq_add Nat.sub_eq_iff_eq_add

#align nat.lt_of_sub_eq_succ Nat.lt_of_sub_eq_succ

#align nat.sub_le_sub_left Nat.sub_le_sub_left

#align nat.succ_sub_sub_succ Nat.succ_sub_sub_succ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6fde284bbafe7fc0bd0913c608209fa2812188a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
