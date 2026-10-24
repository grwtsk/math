# two_mul_sq_add_one_le_two_pow_two_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09e31c397618e0a301215f08f4c6a49ace88a477",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfbc2776-f924-8e96-f1d9-debf68656b8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e84a738-6ba1-a0b0-8951-c38a93b06074",
  "kind": "lemma",
  "lexical_name": "two_mul_sq_add_one_le_two_pow_two_mul",
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
  "slug": "two-mul-sq-add-one-le-two-pow-two-mul--36fca85ceb91e0f45f0d45ac",
  "source": {
    "blob": "09e31c397618e0a301215f08f4c6a49ace88a477",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 119,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36fca85ceb91e0f45f0d45acffeb9a1d40e11a988fc7f00f5d2741678b169089",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e84a738-6ba1-a0b0-8951-c38a93b06074`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma two_mul_sq_add_one_le_two_pow_two_mul (k : ℕ) : 2 * k ^ 2 + 1 ≤ 2 ^ (2 * k) := by
  induction k with
  | zero => simp
  | succ k hk =>
    rw [add_pow_two, one_pow, mul_one, add_assoc, mul_add, add_right_comm]
    refine (add_le_add_right hk _).trans ?_
    rw [mul_add 2 k, pow_add, mul_one, pow_two, ← mul_assoc, mul_two, mul_two, add_assoc]
    gcongr
    rw [← two_mul, ← pow_succ']
    exact le_add_of_le_right (mul_le_pow (by simp) _)

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09e31c397618e0a301215f08f4c6a49ace88a477` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
