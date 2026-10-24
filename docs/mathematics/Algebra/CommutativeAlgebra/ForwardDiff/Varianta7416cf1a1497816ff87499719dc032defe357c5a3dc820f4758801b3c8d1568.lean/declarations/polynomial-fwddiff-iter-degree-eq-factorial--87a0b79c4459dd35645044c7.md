# Polynomial.fwdDiff_iter_degree_eq_factorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ad7165b-62ff-d758-962d-56687a3265e8",
  "kind": "theorem",
  "lexical_name": "Polynomial.fwdDiff_iter_degree_eq_factorial",
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
  "slug": "polynomial-fwddiff-iter-degree-eq-factorial--87a0b79c4459dd35645044c7",
  "source": {
    "blob": "5e02e861f3b5ba46027afae778c0478d23201254",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 278,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87a0b79c4459dd35645044c7bb417d4c2ac759ed9e1b3fddd8c50e9fcd02550f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ad7165b-62ff-d758-962d-56687a3265e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Polynomial.fwdDiff_iter_degree_eq_factorial (P : R[X]) :
    Δ_[1]^[P.natDegree] P.eval = P.leadingCoeff • P.natDegree ! := funext fun x ↦ by
  simp_rw [P.eval_eq_sum_range, ← sum_apply _ _ (fun i x ↦ P.coeff i * x ^ i),
    fwdDiff_iter_finsetSum, ← smul_eq_mul, ← Pi.smul_def, fwdDiff_iter_const_smul, Pi.smul_apply]
  rw [sum_apply, sum_range_succ, sum_eq_zero (fun i hi ↦ ?_), zero_add,
    fwdDiff_iter_eq_factorial, leadingCoeff, Pi.smul_apply]
  rw [fwdDiff_iter_pow_eq_zero_of_lt (mem_range.mp hi), smul_zero, Pi.zero_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e02e861f3b5ba46027afae778c0478d23201254` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
