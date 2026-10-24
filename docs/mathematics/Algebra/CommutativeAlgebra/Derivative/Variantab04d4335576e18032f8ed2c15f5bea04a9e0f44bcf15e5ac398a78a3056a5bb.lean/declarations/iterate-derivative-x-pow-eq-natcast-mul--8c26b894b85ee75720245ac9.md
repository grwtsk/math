# iterate_derivative_X_pow_eq_natCast_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c04bb40f40baafb24f12dae71deb15348241b4d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 509,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab04d4335576e18032f8ed2c15f5bea04a9e0f44bcf15e5ac398a78a3056a5bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6657cc18-4ac3-cb5a-3024-3bc73e07acb7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:98d0646f-9512-0e63-9313-1cc59cb8f581",
  "kind": "theorem",
  "lexical_name": "iterate_derivative_X_pow_eq_natCast_mul",
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
  "slug": "iterate-derivative-x-pow-eq-natcast-mul--8c26b894b85ee75720245ac9",
  "source": {
    "blob": "c04bb40f40baafb24f12dae71deb15348241b4d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 518,
    "line": 509,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variantab04d4335576e18032f8ed2c15f5bea04a9e0f44bcf15e5ac398a78a3056a5bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c26b894b85ee75720245ac91eb7e3f81f2fba9a579c197920cabde4a5bb78ae",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Derivative/Variantab04d4335576e18032f8ed2c15f5bea04a9e0f44bcf15e5ac398a78a3056a5bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98d0646f-9512-0e63-9313-1cc59cb8f581`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterate_derivative_X_pow_eq_natCast_mul (n k : ℕ) :
    derivative^[k] (X ^ n : R[X]) = ↑(Nat.descFactorial n k : R[X]) * X ^ (n - k) := by
  induction k with
  | zero =>
    rw [Function.iterate_zero_apply, tsub_zero, Nat.descFactorial_zero, Nat.cast_one, one_mul]
  | succ k ih =>
    rw [Function.iterate_succ_apply', ih, derivative_natCast_mul, derivative_X_pow, C_eq_natCast,
      Nat.descFactorial_succ, Nat.sub_sub, Nat.cast_mul]
    simp [mul_assoc, mul_left_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Derivative/Variantab04d4335576e18032f8ed2c15f5bea04a9e0f44bcf15e5ac398a78a3056a5bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variantab04d4335576e18032f8ed2c15f5bea04a9e0f44bcf15e5ac398a78a3056a5bb.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c04bb40f40baafb24f12dae71deb15348241b4d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
