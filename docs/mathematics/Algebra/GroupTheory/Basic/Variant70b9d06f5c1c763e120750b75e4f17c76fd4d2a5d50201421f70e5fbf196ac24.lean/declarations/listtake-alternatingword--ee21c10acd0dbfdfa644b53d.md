# listTake_alternatingWord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd9559b2-e3bf-f4b7-1ea1-ce35a27fb537",
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
  "slug": "listtake-alternatingword--ee21c10acd0dbfdfa644b53d",
  "source": {
    "blob": "324a8712bed86b424eabc117aeb37e9fea1e1887",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 464,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee21c10acd0dbfdfa644b53d24f45001808e84ab000622ae7d15d34d87542add",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd9559b2-e3bf-f4b7-1ea1-ce35a27fb537`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–486.

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

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant70b9d06f5c1c763e120750b75e4f17c76fd4d2a5d50201421f70e5fbf196ac24.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `324a8712bed86b424eabc117aeb37e9fea1e1887` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
