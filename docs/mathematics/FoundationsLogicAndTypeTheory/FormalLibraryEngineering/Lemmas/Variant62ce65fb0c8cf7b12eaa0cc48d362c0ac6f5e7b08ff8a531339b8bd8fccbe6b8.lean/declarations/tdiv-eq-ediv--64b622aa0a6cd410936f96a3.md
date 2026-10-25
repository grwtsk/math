# tdiv_eq_ediv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:920ec916-6124-8b93-d7a7-077612f2e703",
  "kind": "theorem",
  "lexical_name": "tdiv_eq_ediv",
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
  "slug": "tdiv-eq-ediv--64b622aa0a6cd410936f96a3",
  "source": {
    "blob": "5bb2d722bba2a1af48bae7b7869bafe4599eeb43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 231,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64b622aa0a6cd410936f96a3b2182bc44375c93bec2909b234166696c46069f0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:920ec916-6124-8b93-d7a7-077612f2e703`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tdiv_eq_ediv {a b : Int} :
    a.tdiv b = a / b + if 0 ≤ a ∨ b ∣ a then 0 else sign b := by
  simp only [dvd_iff_emod_eq_zero]
  match a, b with
  | ofNat a, ofNat b => simp [tdiv_eq_ediv_of_nonneg]
  | ofNat a, -[b+1] => simp [tdiv_eq_ediv_of_nonneg]
  | -[a+1], 0 => simp
  | -[a+1], ofNat (succ b) =>
    simp only [tdiv, Nat.succ_eq_add_one, ofNat_eq_natCast, Int.natCast_add, cast_ofNat_Int,
      negSucc_not_nonneg, sign_natCast_add_one]
    simp only [negSucc_emod_ofNat_succ_eq_zero_iff]
    norm_cast
    simp only [Nat.succ_eq_add_one, false_or]
    split <;> rename_i h
    · rw [Int.add_zero, neg_ofNat_eq_negSucc_iff]
      exact Nat.succ_div_of_mod_eq_zero h
    · rw [neg_ofNat_eq_negSucc_add_one_iff]
      exact Nat.succ_div_of_mod_ne_zero h
  | -[a+1], -[b+1] =>
    simp only [tdiv, ofNat_eq_natCast, negSucc_not_nonneg, false_or, sign_negSucc]
    norm_cast
    simp only [negSucc_ediv_negSucc]
    rw [Int.natCast_add, Int.natCast_one]
    simp only [negSucc_emod_negSucc_eq_zero_iff]
    split <;> rename_i h
    · norm_cast
      exact Nat.succ_div_of_mod_eq_zero h
    · rw [Int.add_neg_eq_sub, Int.add_sub_cancel]
      norm_cast
      exact Nat.succ_div_of_mod_ne_zero h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bb2d722bba2a1af48bae7b7869bafe4599eeb43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
