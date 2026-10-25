# case_strong_induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b91f950c66540eb297c16e7f32c757d9685fb838",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 512,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8397784a-b7c8-4f77-3998-9fcd02fb0f65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1cdddaf-fcb5-becb-efce-f2a64525e818",
  "kind": "theorem",
  "lexical_name": "case_strong_induction_on",
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
  "slug": "case-strong-induction-on--e78e8deb625438fa309cf5fb",
  "source": {
    "blob": "b91f950c66540eb297c16e7f32c757d9685fb838",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 557,
    "line": 512,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e78e8deb625438fa309cf5fb076fe1f254a79cc86773a782a21f875eb41f39e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1cdddaf-fcb5-becb-efce-f2a64525e818`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–557.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem case_strong_induction_on {p : Nat → Prop} (a : Nat) (hz : p 0)
    (hi : ∀ n, (∀ m, m ≤ n → p m) → p (succ n)) : p a :=
  Nat.strong_induction_on a fun n =>
    match n with
    | 0 => fun _ => hz
    | n + 1 => fun h₁ => hi n fun _m h₂ => h₁ _ (lt_succ_of_le h₂)
#align nat.case_strong_induction_on Nat.case_strong_induction_on

/-! mod -/

#align nat.mod_def Nat.mod_eq

#align nat.mod_zero Nat.mod_zero

#align nat.mod_eq_of_lt Nat.mod_eq_of_lt

#align nat.zero_mod Nat.zero_mod

#align nat.mod_eq_sub_mod Nat.mod_eq_sub_mod

#align nat.mod_lt Nat.mod_lt

#align nat.mod_self Nat.mod_self

#align nat.mod_one Nat.mod_one

#align nat.mod_two_eq_zero_or_one Nat.mod_two_eq_zero_or_one

#align nat.mod_le Nat.mod_le

#align nat.add_mod_right Nat.add_mod_right

#align nat.add_mod_left Nat.add_mod_left

#align nat.add_mul_mod_self_left Nat.add_mul_mod_self_left

#align nat.add_mul_mod_self_right Nat.add_mul_mod_self_right

#align nat.mul_mod_right Nat.mul_mod_right

#align nat.mul_mod_left Nat.mul_mod_left

#align nat.mul_mod_mul_left Nat.mul_mod_mul_left

#align nat.mul_mod_mul_right Nat.mul_mod_mul_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant5a9f3356751baf86473c53b715172aa3b89d2edc8b44874e911f2bc36cc72703.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b91f950c66540eb297c16e7f32c757d9685fb838` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
