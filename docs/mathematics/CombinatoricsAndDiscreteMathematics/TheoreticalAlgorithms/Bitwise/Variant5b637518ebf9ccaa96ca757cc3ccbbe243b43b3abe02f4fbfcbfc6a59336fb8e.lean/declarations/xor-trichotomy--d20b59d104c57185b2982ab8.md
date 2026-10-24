# xor_trichotomy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65b4ff0e-ce2e-dfeb-3fff-3a6f6ba6303f",
  "kind": "theorem",
  "lexical_name": "xor_trichotomy",
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
  "slug": "xor-trichotomy--d20b59d104c57185b2982ab8",
  "source": {
    "blob": "dd2140cf16ce85118caf649b62271796e3e974b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 274,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant5b637518ebf9ccaa96ca757cc3ccbbe243b43b3abe02f4fbfcbfc6a59336fb8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d20b59d104c57185b2982ab8d7c00654bb5965cd5f7344812c0cec3404085550",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant5b637518ebf9ccaa96ca757cc3ccbbe243b43b3abe02f4fbfcbfc6a59336fb8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65b4ff0e-ce2e-dfeb-3fff-3a6f6ba6303f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xor_trichotomy {a b c : ℕ} (h : a ^^^ b ^^^ c ≠ 0) :
    b ^^^ c < a ∨ c ^^^ a < b ∨ a ^^^ b < c := by
  set v := a ^^^ b ^^^ c with hv
  -- The xor of any two of `a`, `b`, `c` is the xor of `v` and the third.
  have hab : a ^^^ b = c ^^^ v := by
    rw [Nat.xor_comm c, Nat.xor_xor_cancel_right]
  have hbc : b ^^^ c = a ^^^ v := by
    rw [← Nat.xor_assoc, Nat.xor_xor_cancel_left]
  have hca : c ^^^ a = b ^^^ v := by
    rw [hv, Nat.xor_assoc, Nat.xor_comm a, ← Nat.xor_assoc, Nat.xor_xor_cancel_left]
  -- If `i` is the position of the most significant bit of `v`, then at least one of `a`, `b`, `c`
  -- has a one bit at position `i`.
  obtain ⟨i, ⟨hi, hi'⟩⟩ := exists_most_significant_bit h
  have : testBit a i ∨ testBit b i ∨ testBit c i := by
    contrapose! hi
    simp_rw [Bool.eq_false_eq_not_eq_true] at hi ⊢
    rw [testBit_xor, testBit_xor, hi.1, hi.2.1, hi.2.2]
    rfl
  -- If, say, `a` has a one bit at position `i`, then `a xor v` has a zero bit at position `i`, but
  -- the same bits as `a` in positions greater than `j`, so `a xor v < a`.
  obtain h | h | h := this
  on_goal 1 => left; rw [hbc]
  on_goal 2 => right; left; rw [hca]
  on_goal 3 => right; right; rw [hab]
  all_goals
    refine lt_of_testBit i ?_ h fun j hj => ?_
    · rw [testBit_xor, h, hi]
      rfl
    · simp only [testBit_xor, hi' _ hj, Bool.bne_false]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant5b637518ebf9ccaa96ca757cc3ccbbe243b43b3abe02f4fbfcbfc6a59336fb8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variant5b637518ebf9ccaa96ca757cc3ccbbe243b43b3abe02f4fbfcbfc6a59336fb8e.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd2140cf16ce85118caf649b62271796e3e974b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
