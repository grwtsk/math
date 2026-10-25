# mul_div_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3030c67-5ce3-ed94-1536-1b9b82c5ad14",
  "kind": "theorem",
  "lexical_name": "mul_div_mul",
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
  "slug": "mul-div-mul--dbfa68403f613def974309be",
  "source": {
    "blob": "b6fde284bbafe7fc0bd0913c608209fa2812188a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 669,
    "line": 631,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbfa68403f613def974309bee341f67c230dae68387eac4435e0f5d49bdb9e1e",
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

Occurrence: `result:f3030c67-5ce3-ed94-1536-1b9b82c5ad14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 631–669.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem mul_div_mul {m : ℕ} (n k : ℕ) (H : 0 < m) : m * n / (m * k) = n / k := by
  rw [← Nat.div_div_eq_div_mul, Nat.mul_div_cancel_left _ H]
#align nat.mul_div_mul Nat.mul_div_mul

#align nat.div_lt_self Nat.div_lt_self

/-! dvd -/


#align nat.dvd_mul_right Nat.dvd_mul_right

#align nat.dvd_trans Nat.dvd_trans

#align nat.eq_zero_of_zero_dvd Nat.eq_zero_of_zero_dvd

#align nat.dvd_add Nat.dvd_add

#align nat.dvd_add_iff_right Nat.dvd_add_iff_right

#align nat.dvd_add_iff_left Nat.dvd_add_iff_left

#align nat.dvd_sub Nat.dvd_sub

#align nat.dvd_mod_iff Nat.dvd_mod_iff

#align nat.le_of_dvd Nat.le_of_dvd

#align nat.dvd_antisymm Nat.dvd_antisymm

#align nat.pos_of_dvd_of_pos Nat.pos_of_dvd_of_pos

#align nat.eq_one_of_dvd_one Nat.eq_one_of_dvd_one

#align nat.dvd_of_mod_eq_zero Nat.dvd_of_mod_eq_zero

#align nat.mod_eq_zero_of_dvd Nat.mod_eq_zero_of_dvd

#align nat.dvd_iff_mod_eq_zero Nat.dvd_iff_mod_eq_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean#L631).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6fde284bbafe7fc0bd0913c608209fa2812188a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
