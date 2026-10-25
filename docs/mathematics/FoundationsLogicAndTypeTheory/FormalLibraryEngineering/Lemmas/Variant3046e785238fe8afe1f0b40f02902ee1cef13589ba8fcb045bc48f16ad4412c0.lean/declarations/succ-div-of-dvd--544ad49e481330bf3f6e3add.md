# succ_div_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "269cc7b25097f324e8df8dc4a857420041397d57",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f24e1095-a7ee-8a8d-aa62-ef01d9634d2c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e35acf31-1cf4-ecfb-e606-53d5315ac4e3",
  "kind": "theorem",
  "lexical_name": "succ_div_of_dvd",
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
  "slug": "succ-div-of-dvd--544ad49e481330bf3f6e3add",
  "source": {
    "blob": "269cc7b25097f324e8df8dc4a857420041397d57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:544ad49e481330bf3f6e3add48696080d7628794b3ccee1b7d31d942026d6a19",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e35acf31-1cf4-ecfb-e606-53d5315ac4e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem succ_div_of_dvd {a b : Nat} (h : b ∣ a + 1) :
    (a + 1) / b = a / b + 1 := by
  replace h := mod_eq_zero_of_dvd h
  cases b with
  | zero => simp at h
  | succ b =>
    by_cases h' : b ≤ a
    · rw [Nat.div_eq]
      simp only [zero_lt_succ, Nat.add_le_add_iff_right, h', and_self, ↓reduceIte,
        Nat.reduceSubDiff, Nat.add_right_cancel_iff]
      obtain ⟨_|k, h⟩ := Nat.dvd_of_mod_eq_zero h
      · simp at h
      · simp only [Nat.mul_add, Nat.add_mul, Nat.one_mul, Nat.mul_one, ← Nat.add_assoc,
          Nat.add_right_cancel_iff] at h
        subst h
        rw [Nat.add_sub_cancel, ← Nat.add_one_mul, mul_div_right _ (zero_lt_succ _), Nat.add_comm,
          Nat.add_mul_div_left _ _ (zero_lt_succ _), Nat.right_eq_add, div_eq_of_lt le.refl]
    · simp only [Nat.not_le] at h'
      replace h' : a + 1 < b + 1 := Nat.add_lt_add_right h' 1
      rw [Nat.mod_eq_of_lt h'] at h
      simp at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3046e785238fe8afe1f0b40f02902ee1cef13589ba8fcb045bc48f16ad4412c0.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `269cc7b25097f324e8df8dc4a857420041397d57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
