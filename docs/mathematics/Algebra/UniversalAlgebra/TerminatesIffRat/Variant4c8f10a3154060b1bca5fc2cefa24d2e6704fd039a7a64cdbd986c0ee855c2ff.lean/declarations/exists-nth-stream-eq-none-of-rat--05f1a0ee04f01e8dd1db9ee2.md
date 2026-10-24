# exists_nth_stream_eq_none_of_rat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8654e9b7dfe01833f290319d3a601d48653d9ec7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 316,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9040ea2b-9b2a-a046-1e5e-775964a7bd8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e132e27b-c87d-f539-d5a6-357cbc8856c1",
  "kind": "theorem",
  "lexical_name": "exists_nth_stream_eq_none_of_rat",
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
  "slug": "exists-nth-stream-eq-none-of-rat--05f1a0ee04f01e8dd1db9ee2",
  "source": {
    "blob": "8654e9b7dfe01833f290319d3a601d48653d9ec7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 316,
    "path": "GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05f1a0ee04f01e8dd1db9ee2a2b6d0038e10ef3c093249dc6bfc87ed332bb461",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e132e27b-c87d-f539-d5a6-357cbc8856c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nth_stream_eq_none_of_rat (q : ℚ) : ∃ n : ℕ, IntFractPair.stream q n = none := by
  let fract_q_num := (Int.fract q).num; let n := fract_q_num.natAbs + 1
  cases' stream_nth_eq : IntFractPair.stream q n with ifp
  · use n, stream_nth_eq
  · -- arrive at a contradiction since the numerator decreased num + 1 times but every fractional
    -- value is nonnegative.
    have ifp_fr_num_le_q_fr_num_sub_n : ifp.fr.num ≤ fract_q_num - n :=
      stream_nth_fr_num_le_fr_num_sub_n_rat stream_nth_eq
    have : fract_q_num - n = -1 := by
      have : 0 ≤ fract_q_num := Rat.num_nonneg_iff_zero_le.mpr (Int.fract_nonneg q)
      -- Porting note: was
      -- simp [Int.natAbs_of_nonneg this, sub_add_eq_sub_sub_swap, sub_right_comm]
      simp only [Nat.cast_add, Int.natAbs_of_nonneg this, Nat.cast_one, sub_add_eq_sub_sub_swap,
        sub_right_comm, sub_self, zero_sub]
    have : 0 ≤ ifp.fr := (nth_stream_fr_nonneg_lt_one stream_nth_eq).left
    have : 0 ≤ ifp.fr.num := Rat.num_nonneg_iff_zero_le.mpr this
    linarith
#align generalized_continued_fraction.int_fract_pair.exists_nth_stream_eq_none_of_rat GeneralizedContinuedFraction.IntFractPair.exists_nth_stream_eq_none_of_rat

end IntFractPair

/-- The continued fraction of a rational number terminates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/TerminatesIffRat/Variant4c8f10a3154060b1bca5fc2cefa24d2e6704fd039a7a64cdbd986c0ee855c2ff.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8654e9b7dfe01833f290319d3a601d48653d9ec7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
