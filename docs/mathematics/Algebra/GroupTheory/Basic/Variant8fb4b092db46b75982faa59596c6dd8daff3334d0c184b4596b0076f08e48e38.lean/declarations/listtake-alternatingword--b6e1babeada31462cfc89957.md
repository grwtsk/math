# listTake_alternatingWord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "235e643ecdd0817ebd5e4e90dfd2ec7618a83fa8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 456,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9795cac-47e0-6a7a-c687-71cbed4ab4c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6798ed1e-5184-1c73-8523-0e66b19289cb",
  "kind": "lemma",
  "lexical_name": "listTake_alternatingWord",
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
  "slug": "listtake-alternatingword--b6e1babeada31462cfc89957",
  "source": {
    "blob": "235e643ecdd0817ebd5e4e90dfd2ec7618a83fa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 456,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6e1babeada31462cfc8995751aab114406768d060944ea93f15ca415b9bd7cb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6798ed1e-5184-1c73-8523-0e66b19289cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma listTake_alternatingWord (i j : B) (p k : ℕ) (h : k < 2 * p) :
    List.take k (alternatingWord i j (2 * p)) =
    if Even k then alternatingWord i j k else alternatingWord j i k := by
  induction k with
    | zero =>
      simp only [take_zero, Even.zero, ↓reduceIte, alternatingWord]
    | succ k h' =>
      have hk : k < 2 * p := by omega
      apply h' at hk
      by_cases h_even : Even k
      · simp only [h_even, ↓reduceIte] at hk
        simp only [Nat.not_even_iff_odd.mpr (Even.add_one h_even), ↓reduceIte]
        rw [← List.take_concat_get (by simp [h]; omega), alternatingWord_succ, ← hk]
        apply congr_arg
        rw [getElem_alternatingWord i j (2*p) k (by omega)]
        simp [(by apply Nat.even_add.mpr; simp [h_even] : Even (2 * p + k))]
      · simp only [h_even, ↓reduceIte] at hk
        simp only [(by simp at h_even; exact Odd.add_one h_even : Even (k + 1)), ↓reduceIte]
        rw [← List.take_concat_get (by simp [h]; omega), alternatingWord_succ, hk]
        apply congr_arg
        rw [getElem_alternatingWord i j (2*p) k (by omega)]
        simp [(by apply Nat.odd_add.mpr; simp [h_even] : Odd (2 * p + k))]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `235e643ecdd0817ebd5e4e90dfd2ec7618a83fa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
