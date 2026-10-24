# W_eq_factorial_ratio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:665802bd-5c89-4a84-d690-c755a84beff0",
  "kind": "theorem",
  "lexical_name": "W_eq_factorial_ratio",
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
  "slug": "w-eq-factorial-ratio--8c961af171237fe7a3f975a8",
  "source": {
    "blob": "a78bf30ff2d7ea5662c39f11895108e7e9bb49bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 72,
    "path": "GRWTSK/Topology/GeneralTopology/Wallis/Variant9a07aa8ed9ea8afd28fddbf3741ca422da3452f791c5fa055825f2b226ff157c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c961af171237fe7a3f975a814b507fb8fe15e0eb76712a7d21a6720ff9d9634",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Wallis/Variant9a07aa8ed9ea8afd28fddbf3741ca422da3452f791c5fa055825f2b226ff157c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:665802bd-5c89-4a84-d690-c755a84beff0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem W_eq_factorial_ratio (n : ℕ) :
    W n = 2 ^ (4 * n) * n ! ^ 4 / ((2 * n)! ^ 2 * (2 * n + 1)) := by
  induction' n with n IH
  · simp only [W, prod_range_zero, Nat.factorial_zero, mul_zero, pow_zero,
      algebraMap.coe_one, one_pow, mul_one, algebraMap.coe_zero, zero_add, div_self, Ne.def,
      one_ne_zero, not_false_iff]
    norm_num
  · unfold W at IH ⊢
    rw [prod_range_succ, IH, _root_.div_mul_div_comm, _root_.div_mul_div_comm]
    refine' (div_eq_div_iff _ _).mpr _
    any_goals exact ne_of_gt (by positivity)
    simp_rw [Nat.mul_succ, Nat.factorial_succ, pow_succ]
    push_cast
    ring_nf
#align real.wallis.W_eq_factorial_ratio Real.Wallis.W_eq_factorial_ratio

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Wallis/Variant9a07aa8ed9ea8afd28fddbf3741ca422da3452f791c5fa055825f2b226ff157c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Wallis/Variant9a07aa8ed9ea8afd28fddbf3741ca422da3452f791c5fa055825f2b226ff157c.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a78bf30ff2d7ea5662c39f11895108e7e9bb49bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
