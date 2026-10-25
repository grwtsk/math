# testBit_bitwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5b6d83a0e10f066d90c44eccacaf0e6f97bf071",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 406,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/529687f061efb55560de711acb367184e86b2cc8c21a4894a6169460e337f430.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:634fab33-198d-e08e-796c-51f7c10a31f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1e2f120-9918-f315-7beb-84752f692ef0",
  "kind": "theorem",
  "lexical_name": "testBit_bitwise",
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
  "slug": "testbit-bitwise--1ef65ab279332bc6c2d1fa69",
  "source": {
    "blob": "f5b6d83a0e10f066d90c44eccacaf0e6f97bf071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 406,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant529687f061efb55560de711acb367184e86b2cc8c21a4894a6169460e337f430.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ef65ab279332bc6c2d1fa69b155ae575af97253f7c833ba8e49dce790a53d65",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant529687f061efb55560de711acb367184e86b2cc8c21a4894a6169460e337f430.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1e2f120-9918-f315-7beb-84752f692ef0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem testBit_bitwise (of_false_false : f false false = false) (x y i : Nat) :
    (bitwise f x y).testBit i = f (x.testBit i) (y.testBit i) := by
  induction i using Nat.strongRecOn generalizing x y with
  | ind i hyp =>
    unfold bitwise
    if x_zero : x = 0 then
      cases p : f false true <;>
        cases yi : testBit y i <;>
          simp [x_zero, p, yi, of_false_false]
    else if y_zero : y = 0 then
      simp [x_zero, y_zero]
      cases p : f true false <;> (try simp only [Bool.false_eq_true, ↓reduceIte]) <;>
        cases testBit x i <;>
          simp [p, of_false_false]
    else
      simp only [x_zero, y_zero, ←Nat.two_mul]
      cases i with
      | zero =>
        cases p : f (decide (x % 2 = 1)) (decide (y % 2 = 1)) <;>
          simp [p]
      | succ i =>
        have hyp_i := hyp i (Nat.le_refl (i+1))
        cases p : f (decide (x % 2 = 1)) (decide (y % 2 = 1)) <;>
          simp [hyp_i, Nat.mul_add_div]

/-! ### bitwise -/

@[local simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant529687f061efb55560de711acb367184e86b2cc8c21a4894a6169460e337f430.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant529687f061efb55560de711acb367184e86b2cc8c21a4894a6169460e337f430.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5b6d83a0e10f066d90c44eccacaf0e6f97bf071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
