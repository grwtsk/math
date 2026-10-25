# to_digits_core_length

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc635e46-37de-f1bc-8129-463bcd2f5f04",
  "kind": "lemma",
  "lexical_name": "to_digits_core_length",
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
  "slug": "to-digits-core-length--aafddd0668dba16970024814",
  "source": {
    "blob": "b6fde284bbafe7fc0bd0913c608209fa2812188a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 822,
    "line": 795,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aafddd0668dba169700248146eba3f299b0f69385dd615fe6f704e0daabe99ce",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc635e46-37de-f1bc-8129-463bcd2f5f04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 795–822.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma to_digits_core_length (b : Nat) (h : 2 <= b) (f n e : Nat)
    (hlt : n < b ^ e) (h_e_pos: 0 < e) : (Nat.toDigitsCore b f n []).length <= e := by
  induction f generalizing n e hlt h_e_pos with
    simp only [Nat.toDigitsCore, List.length, Nat.zero_le]
  | succ f ih =>
    cases e with
    | zero => exact False.elim (Nat.lt_irrefl 0 h_e_pos)
    | succ e =>
      by_cases h_pred_pos : 0 < e
      case pos =>
        have _ : 0 < b := Nat.lt_trans (by decide) h
        specialize ih (n / b) e (nat_repr_len_aux n b e ‹0 < b› hlt) h_pred_pos
        by_cases hdiv_ten : n / b = 0
        case pos => simp only [hdiv_ten]; exact Nat.le.step h_pred_pos
        case neg =>
          simp only [hdiv_ten,
            to_digits_core_lens_eq b f (n / b) (Nat.digitChar $ n % b), if_false]
          exact Nat.succ_le_succ ih
      case neg =>
        have _ : e = 0 := Nat.eq_zero_of_nonpos e h_pred_pos
        rw [‹e = 0›]
        have _ : b ^ 1 = b := by simp only [pow_succ, pow_zero, Nat.one_mul]
        have _ : n < b := ‹b ^ 1 = b› ▸ (‹e = 0› ▸ hlt : n < b ^ Nat.succ 0)
        simp only [(@Nat.div_eq_of_lt n b ‹n < b› : n / b = 0), if_true, List.length]

/-- The core implementation of `Nat.repr` returns a String with length less than or equal to the
number of digits in the decimal number (represented by `e`). For example, the decimal string
representation of any number less than 1000 (10 ^ 3) has a length less than or equal to 3. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantdfc9bc3c6150c6fd2a9aa0bafa4dc618180d95583f8127ba41532d08c26bc6c7.lean#L795).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6fde284bbafe7fc0bd0913c608209fa2812188a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
