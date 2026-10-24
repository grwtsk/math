# round_eq_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f99d719b2fcf024d27d95a351185eb4b2930e644",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7c9ce5f69d25e776d856cc5f5ed13f7b753d2d97c25ba8c0a22ecdf1f0f3aa6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aab10b7b-15d7-2021-5f4b-70643a25763b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72755ea5-6a65-2487-7fa8-392d9064a17c",
  "kind": "theorem",
  "lexical_name": "round_eq_div",
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
  "slug": "round-eq-div--7329e9df325cc40256c2c2f3",
  "source": {
    "blob": "f99d719b2fcf024d27d95a351185eb4b2930e644",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 54,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Round/Variantf7c9ce5f69d25e776d856cc5f5ed13f7b753d2d97c25ba8c0a22ecdf1f0f3aa6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7329e9df325cc40256c2c2f3066c96b8c3944ae57fe65e28634bbe581a21f246",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Round/Variantf7c9ce5f69d25e776d856cc5f5ed13f7b753d2d97c25ba8c0a22ecdf1f0f3aa6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72755ea5-6a65-2487-7fa8-392d9064a17c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem round_eq_div (x : α) : round x = (⌊2 * x⌋ + 1) / 2 := by
  rw [← floor_add_fract x, round, fract_intCast_add, fract_fract, floor_intCast_add, mul_add,
    ← Int.cast_ofNat, ← Int.cast_mul, floor_intCast_add, ceil_intCast_add, add_assoc,
    Int.mul_add_ediv_left _ _ two_ne_zero, Int.cast_ofNat]
  split_ifs with h <;> congr 1
  · rw [Int.floor_eq_zero_iff.mpr, Int.floor_eq_zero_iff.mpr]
    · simp
    · simp [h]
    · suffices fract x < 1 by simpa
      refine lt_of_le_of_lt ?_ h
      apply le_mul_of_one_le_left <;> simp
  · have H : ⌊2 * fract x⌋ = 1 := by simpa [floor_eq_iff, ← two_mul, fract_lt_one] using h
    suffices 0 < fract x by simp [this, H, ceil_eq_iff, (fract_lt_one _).le]
    contrapose! h
    grw [h]
    simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Round/Variantf7c9ce5f69d25e776d856cc5f5ed13f7b753d2d97c25ba8c0a22ecdf1f0f3aa6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Round/Variantf7c9ce5f69d25e776d856cc5f5ed13f7b753d2d97c25ba8c0a22ecdf1f0f3aa6.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f99d719b2fcf024d27d95a351185eb4b2930e644` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
