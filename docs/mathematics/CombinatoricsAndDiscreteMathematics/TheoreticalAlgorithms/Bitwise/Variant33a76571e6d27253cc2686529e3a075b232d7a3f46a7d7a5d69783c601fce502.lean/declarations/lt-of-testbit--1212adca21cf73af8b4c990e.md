# lt_of_testBit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36a2d426-563a-068e-8ec6-ff9b36034aaa",
  "kind": "theorem",
  "lexical_name": "lt_of_testBit",
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
  "slug": "lt-of-testbit--1212adca21cf73af8b4c990e",
  "source": {
    "blob": "359898662d3ebafdec8f09ee63df82deb67804a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 211,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant33a76571e6d27253cc2686529e3a075b232d7a3f46a7d7a5d69783c601fce502.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1212adca21cf73af8b4c990efc43da724822c7ead13dd5590f3d8808b4ebaac5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant33a76571e6d27253cc2686529e3a075b232d7a3f46a7d7a5d69783c601fce502.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36a2d426-563a-068e-8ec6-ff9b36034aaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_of_testBit {n m : ℕ} (i : ℕ) (hn : testBit n i = false) (hm : testBit m i = true)
    (hnm : ∀ j, i < j → testBit n j = testBit m j) : n < m := by
  induction n using Nat.binaryRec generalizing i m with
  | z =>
    rw [Nat.pos_iff_ne_zero]
    rintro rfl
    simp at hm
  | f b n hn' =>
    induction m using Nat.binaryRec generalizing i with
    | z => exact False.elim (Bool.false_ne_true ((zero_testBit i).symm.trans hm))
    | f b' m hm' =>
      by_cases hi : i = 0
      · subst hi
        simp only [testBit_bit_zero] at hn hm
        have : n = m :=
          eq_of_testBit_eq fun i => by convert hnm (i + 1) (Nat.zero_lt_succ _) using 1
          <;> rw [testBit_bit_succ]
        rw [hn, hm, this, bit_false, bit_true]
        exact Nat.lt_succ_self _
      · obtain ⟨i', rfl⟩ := exists_eq_succ_of_ne_zero hi
        simp only [testBit_bit_succ] at hn hm
        have := hn' _ hn hm fun j hj => by
          convert hnm j.succ (succ_lt_succ hj) using 1 <;> rw [testBit_bit_succ]
        have this' : 2 * n < 2 * m := Nat.mul_lt_mul_of_le_of_lt (le_refl _) this Nat.two_pos
        cases b <;> cases b'
        <;> simp only [bit_false, bit_true]
        · exact this'
        · exact Nat.lt_add_right 1 this'
        · calc
            2 * n + 1 < 2 * n + 2 := lt.base _
            _ ≤ 2 * m := mul_le_mul_left 2 this
        · exact Nat.succ_lt_succ this'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant33a76571e6d27253cc2686529e3a075b232d7a3f46a7d7a5d69783c601fce502.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant33a76571e6d27253cc2686529e3a075b232d7a3f46a7d7a5d69783c601fce502.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `359898662d3ebafdec8f09ee63df82deb67804a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
