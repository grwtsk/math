# aeval_iterate_derivative_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b10926ef147184105b435a55d4444f343c388ab8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/374a33473eb3325efec6c49849e1c05355965cc25daa1f634336d27fc9ff24cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96a8c5d5-8629-b1c5-4c48-7af101806ccf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5be94d1a-c78e-82c3-3a67-1649c9e82ee9",
  "kind": "theorem",
  "lexical_name": "aeval_iterate_derivative_of_lt",
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
  "slug": "aeval-iterate-derivative-of-lt--b688bd790deac69d7656de06",
  "source": {
    "blob": "b10926ef147184105b435a55d4444f343c388ab8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 123,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant374a33473eb3325efec6c49849e1c05355965cc25daa1f634336d27fc9ff24cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b688bd790deac69d7656de06f3edb48d5d80d6c330611078fbc4697dafb340cc",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant374a33473eb3325efec6c49849e1c05355965cc25daa1f634336d27fc9ff24cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5be94d1a-c78e-82c3-3a67-1649c9e82ee9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeval_iterate_derivative_of_lt (p : R[X]) (q : ℕ) (r : A) {p' : A[X]}
    (hp : p.map (algebraMap R A) = (X - C r) ^ q * p') {k : ℕ} (hk : k < q) :
    aeval r (derivative^[k] p) = 0 := by
  have h (x) : (X - C r) ^ (q - (k - x)) = (X - C r) ^ 1 * (X - C r) ^ (q - (k - x) - 1) := by
    rw [← pow_add, add_tsub_cancel_of_le]
    rw [Nat.lt_iff_add_one_le] at hk
    exact (le_tsub_of_add_le_left hk).trans (tsub_le_tsub_left (tsub_le_self : _ ≤ k) _)
  rw [aeval_def, eval₂_eq_eval_map, ← iterate_derivative_map]
  simp_rw [hp, iterate_derivative_mul, iterate_derivative_X_sub_pow, ← smul_mul_assoc, smul_smul,
    h, ← mul_smul_comm, mul_assoc, ← mul_sum, eval_mul, pow_one, eval_sub, eval_X, eval_C, sub_self,
    zero_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant374a33473eb3325efec6c49849e1c05355965cc25daa1f634336d27fc9ff24cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant374a33473eb3325efec6c49849e1c05355965cc25daa1f634336d27fc9ff24cc.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b10926ef147184105b435a55d4444f343c388ab8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
