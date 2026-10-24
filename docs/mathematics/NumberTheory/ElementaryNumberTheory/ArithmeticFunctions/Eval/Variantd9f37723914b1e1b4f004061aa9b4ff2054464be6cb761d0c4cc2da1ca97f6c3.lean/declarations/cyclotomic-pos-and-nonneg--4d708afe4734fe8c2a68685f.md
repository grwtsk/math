# cyclotomic_pos_and_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ebaaa56386a64dcdf8255008e78bf6978350e94",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16e8aad3-bd85-1d52-190c-7676873db103",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9e606e0-42d2-df78-d137-a75487f2996b",
  "kind": "theorem",
  "lexical_name": "cyclotomic_pos_and_nonneg",
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
  "slug": "cyclotomic-pos-and-nonneg--4d708afe4734fe8c2a68685f",
  "source": {
    "blob": "3ebaaa56386a64dcdf8255008e78bf6978350e94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 107,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d708afe4734fe8c2a68685f321530954a6cd741f85c399dabd62a2216b1b75b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9e606e0-42d2-df78-d137-a75487f2996b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic_pos_and_nonneg (n : ℕ) {R}
    [CommRing R] [LinearOrder R] [IsStrictOrderedRing R] (x : R) :
    (1 < x → 0 < eval x (cyclotomic n R)) ∧ (1 ≤ x → 0 ≤ eval x (cyclotomic n R)) := by
  rcases n with (_ | _ | _ | n)
  · simp only [cyclotomic_zero, eval_one, zero_lt_one, implies_true, zero_le_one, and_self]
  · simp only [zero_add, cyclotomic_one, eval_sub, eval_X, eval_one, sub_pos, imp_self, sub_nonneg,
      and_self]
  · simp only [zero_add, reduceAdd, cyclotomic_two, eval_add, eval_X, eval_one]
    constructor <;> intro <;> linarith
  · constructor <;> intro <;> [skip; apply le_of_lt] <;> apply cyclotomic_pos (by omega)

/-- Cyclotomic polynomials are always positive on inputs larger than one.
Similar to `cyclotomic_pos` but with the condition on the input rather than index of the
cyclotomic polynomial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variantd9f37723914b1e1b4f004061aa9b4ff2054464be6cb761d0c4cc2da1ca97f6c3.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ebaaa56386a64dcdf8255008e78bf6978350e94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
