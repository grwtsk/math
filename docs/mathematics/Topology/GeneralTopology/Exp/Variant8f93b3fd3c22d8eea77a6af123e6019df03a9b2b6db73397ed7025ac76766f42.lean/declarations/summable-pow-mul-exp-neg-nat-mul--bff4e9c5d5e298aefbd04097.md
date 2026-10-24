# summable_pow_mul_exp_neg_nat_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57f4eb97-0dfc-0540-3b76-37e61f6cb15d",
  "kind": "lemma",
  "lexical_name": "summable_pow_mul_exp_neg_nat_mul",
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
  "slug": "summable-pow-mul-exp-neg-nat-mul--bff4e9c5d5e298aefbd04097",
  "source": {
    "blob": "fcf5045518281c2442878536854649c2c9065275",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 483,
    "path": "GRWTSK/Topology/GeneralTopology/Exp/Variant8f93b3fd3c22d8eea77a6af123e6019df03a9b2b6db73397ed7025ac76766f42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bff4e9c5d5e298aefbd04097c5a2061a31f3416e362f505f91868b8374cab203",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Exp/Variant8f93b3fd3c22d8eea77a6af123e6019df03a9b2b6db73397ed7025ac76766f42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57f4eb97-0dfc-0540-3b76-37e61f6cb15d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summable_pow_mul_exp_neg_nat_mul (k : ℕ) {r : ℝ} (hr : 0 < r) :
    Summable fun n : ℕ ↦ n ^ k * exp (-r * n) := by
  simp_rw [mul_comm (-r), exp_nat_mul]
  apply summable_pow_mul_geometric_of_norm_lt_one
  rwa [norm_of_nonneg (exp_nonneg _), exp_lt_one_iff, neg_lt_zero]

end Real

open Real in
/-- If `f` has sum `a`, then `exp ∘ f` has product `exp a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Exp/Variant8f93b3fd3c22d8eea77a6af123e6019df03a9b2b6db73397ed7025ac76766f42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Exp/Variant8f93b3fd3c22d8eea77a6af123e6019df03a9b2b6db73397ed7025ac76766f42.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcf5045518281c2442878536854649c2c9065275` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
