# natCast_mem_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "efaa0302a65ed9b4db4ac8ff491078f7db7b6f83",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c491661d80be6d708f13a07c064c555e98147b9ffe596e8d6dd5491a109dd130.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34b9c4e5-c7b2-62e2-2668-f77226e32412",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8abec74d-a365-6adc-0e0e-7622a49b55b7",
  "kind": "theorem",
  "lexical_name": "natCast_mem_center",
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
  "slug": "natcast-mem-center--9f50945204e75932d7e0fef0",
  "source": {
    "blob": "efaa0302a65ed9b4db4ac8ff491078f7db7b6f83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 23,
    "path": "GRWTSK/Algebra/GroupTheory/Center/Variantc491661d80be6d708f13a07c064c555e98147b9ffe596e8d6dd5491a109dd130.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f50945204e75932d7e0fef024b69db77373bf85a93dfa37a8df0d8216cfd9ae",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Center/Variantc491661d80be6d708f13a07c064c555e98147b9ffe596e8d6dd5491a109dd130.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8abec74d-a365-6adc-0e0e-7622a49b55b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natCast_mem_center [NonAssocSemiring M] (n : ℕ) : (n : M) ∈ Set.center M where
  comm _ := by rw [Nat.commute_cast]
  left_assoc _ _ := by
    induction n with
    | zero => rw [Nat.cast_zero, zero_mul, zero_mul, zero_mul]
    | succ n ihn => rw [Nat.cast_succ, add_mul, one_mul, ihn, add_mul, add_mul, one_mul]
  mid_assoc _ _ := by
    induction n with
    | zero => rw [Nat.cast_zero, zero_mul, mul_zero, zero_mul]
    | succ n ihn => rw [Nat.cast_succ, add_mul, mul_add, add_mul, ihn, mul_add, one_mul, mul_one]
  right_assoc _ _ := by
    induction n with
    | zero => rw [Nat.cast_zero, mul_zero, mul_zero, mul_zero]
    | succ n ihn => rw [Nat.cast_succ, mul_add, ihn, mul_add, mul_add, mul_one, mul_one]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Center/Variantc491661d80be6d708f13a07c064c555e98147b9ffe596e8d6dd5491a109dd130.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Center/Variantc491661d80be6d708f13a07c064c555e98147b9ffe596e8d6dd5491a109dd130.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efaa0302a65ed9b4db4ac8ff491078f7db7b6f83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
