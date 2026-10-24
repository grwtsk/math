# one_sub_X_sq_mul_iterate_derivative_U_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7617d14b-92cc-0413-7b4b-a6d1cc81797f",
  "kind": "theorem",
  "lexical_name": "one_sub_X_sq_mul_iterate_derivative_U_eval",
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
  "slug": "one-sub-x-sq-mul-iterate-derivative-u-eval--bb3face6a416dcf6109e176b",
  "source": {
    "blob": "8a0acd79b116bc87d4c406b179366b4c4413ac11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 994,
    "line": 985,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Chebyshev/Variant357dec84249e33c94221f9bfc6cedd8744c6af542fa5522c5f8bf7612db847f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb3face6a416dcf6109e176b8b1cbd289fa36e345cb413ecd151eb7309a1a870",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Chebyshev/Variant357dec84249e33c94221f9bfc6cedd8744c6af542fa5522c5f8bf7612db847f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7617d14b-92cc-0413-7b4b-a6d1cc81797f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 985–994.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_sub_X_sq_mul_iterate_derivative_U_eval (n : ℤ) (k : ℕ) (x : R) :
    (1 - x ^ 2) * (derivative^[k + 2] (U R n)).eval x =
      (2 * k + 3) * x * (derivative^[k + 1] (U R n)).eval x -
      ((n + 1) ^ 2 - (k + 1) ^ 2) * (derivative^[k] (U R n)).eval x := by
  have h := congr_arg (fun (p : R[X]) => p.eval x) <|
    one_sub_X_sq_mul_iterate_derivative_U_eq_poly_in_U n k
  simp only [eval_mul, eval_sub, eval_one, eval_pow,
    eval_X, eval_add, eval_ofNat, eval_natCast, eval_intCast] at h
  linear_combination (norm := (push_cast; ring_nf)) h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Chebyshev/Variant357dec84249e33c94221f9bfc6cedd8744c6af542fa5522c5f8bf7612db847f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Chebyshev/Variant357dec84249e33c94221f9bfc6cedd8744c6af542fa5522c5f8bf7612db847f1.lean#L985).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a0acd79b116bc87d4c406b179366b4c4413ac11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
