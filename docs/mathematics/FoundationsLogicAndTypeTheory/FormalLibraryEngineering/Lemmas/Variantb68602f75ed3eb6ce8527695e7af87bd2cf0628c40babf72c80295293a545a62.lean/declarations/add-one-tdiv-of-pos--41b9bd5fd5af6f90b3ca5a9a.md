# add_one_tdiv_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16ebb630e4fed7809bcfdbf55fb7e74173327aa2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1884,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52f95411-5b47-ccc7-4d67-1471eee0eb19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8581bcfb-5e9c-819c-b9ed-dce80e7ce6b4",
  "kind": "theorem",
  "lexical_name": "add_one_tdiv_of_pos",
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
  "slug": "add-one-tdiv-of-pos--41b9bd5fd5af6f90b3ca5a9a",
  "source": {
    "blob": "16ebb630e4fed7809bcfdbf55fb7e74173327aa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1920,
    "line": 1884,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41b9bd5fd5af6f90b3ca5a9a01637cb8c326ec45a64cef949b0475d0502469e3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8581bcfb-5e9c-819c-b9ed-dce80e7ce6b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1884–1920.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_one_tdiv_of_pos {a b : Int} (h : 0 < b) :
    (a + 1).tdiv b = a.tdiv b + if (0 < a + 1 ∧ b ∣ a + 1) ∨ (a < 0 ∧ b ∣ a) then 1 else 0 := by
  match b, h with
  | .ofNat 1, h => simp; omega
  | .ofNat (b + 2), h =>
    simp only [ofNat_eq_natCast]
    rw [tdiv_eq_ediv, add_ediv (by omega), tdiv_eq_ediv]
    simp only [Int.natCast_add, cast_ofNat_Int]
    have : 1 / (b + 2 : Int) = 0 := by rw [one_ediv]; omega
    rw [this]
    have one_mod : 1 % (b + 2 : Int) = 1 := emod_eq_of_lt (by omega) (by omega)
    rw [one_mod]
    have : ↑(b + 2 : Int).natAbs = (b + 2 : Int) := by omega
    rw [this]
    have : (b + 2 : Int).sign = 1 := sign_eq_one_of_pos (by omega)
    rw [this]
    have : (b + 2) ≤ a % (b + 2 : Int) + 1 ↔ (b + 2 : Int) ∣ a + 1 := le_emod_self_add_one_iff (by omega)
    simp only [this]
    simp only [Int.add_zero]
    split <;> rename_i h
    · simp only [h, or_true, ↓reduceIte, and_true]
      omega
    · simp only [h, or_false, and_false]
      by_cases h₂ : 0 ≤ a
      · simp only [Int.add_zero, h₂, true_or, ↓reduceIte, false_or]
        have : 0 ≤ a + 1 := by omega
        have : 0 < a + 1 := by omega
        have : ¬ a < 0 := by omega
        simp [*]
      · simp only [Int.add_zero, h₂, false_or]
        split
        · have : a = -1 := by omega
          simp_all
        · have : a < 0 := by omega
          simp only [true_and, this]
          split <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantb68602f75ed3eb6ce8527695e7af87bd2cf0628c40babf72c80295293a545a62.lean#L1884).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16ebb630e4fed7809bcfdbf55fb7e74173327aa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
