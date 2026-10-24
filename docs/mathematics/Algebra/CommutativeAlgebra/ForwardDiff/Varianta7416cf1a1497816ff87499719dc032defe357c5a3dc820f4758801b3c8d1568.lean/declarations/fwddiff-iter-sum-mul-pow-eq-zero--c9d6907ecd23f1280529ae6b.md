# fwdDiff_iter_sum_mul_pow_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b11233b2-1cc2-e8d4-3343-3f373d497de2",
  "kind": "theorem",
  "lexical_name": "fwdDiff_iter_sum_mul_pow_eq_zero",
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
  "slug": "fwddiff-iter-sum-mul-pow-eq-zero--c9d6907ecd23f1280529ae6b",
  "source": {
    "blob": "5e02e861f3b5ba46027afae778c0478d23201254",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 302,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9d6907ecd23f1280529ae6b6b3ab5033e89d2b575df6851691d4bb75c1a83ae",
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

Occurrence: `result:b11233b2-1cc2-e8d4-3343-3f373d497de2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fwdDiff_iter_sum_mul_pow_eq_zero {n : ℕ} (P : ℕ → R) :
    Δ_[1]^[n] (fun r : R ↦ ∑ k ∈ range n, P k * r ^ k) = 0 := by
  simp_rw [← sum_apply _ _ (fun i x ↦ P i * x ^ i), fwdDiff_iter_finsetSum, sum_fn, ← smul_eq_mul,
    ← Pi.smul_def, fwdDiff_iter_const_smul, ← sum_fn]
  exact sum_eq_zero fun i hi ↦ smul_eq_zero_of_right _ <| fwdDiff_iter_pow_eq_zero_of_lt
    <| mem_range.mp hi

/--
A summation formula expressing `∑ k < n, f (y + k • h)` in terms of iterated forward differences.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e02e861f3b5ba46027afae778c0478d23201254` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
