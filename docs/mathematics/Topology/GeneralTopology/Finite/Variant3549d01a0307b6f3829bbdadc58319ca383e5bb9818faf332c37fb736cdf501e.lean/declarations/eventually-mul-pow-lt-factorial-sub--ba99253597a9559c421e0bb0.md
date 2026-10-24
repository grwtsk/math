# eventually_mul_pow_lt_factorial_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6500210-aae7-de6c-4e0c-826518933b17",
  "kind": "theorem",
  "lexical_name": "eventually_mul_pow_lt_factorial_sub",
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
  "slug": "eventually-mul-pow-lt-factorial-sub--ba99253597a9559c421e0bb0",
  "source": {
    "blob": "1dfc0d91aa1a100eeac67f804b0dda1e017e42e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 148,
    "path": "GRWTSK/Topology/GeneralTopology/Finite/Variant3549d01a0307b6f3829bbdadc58319ca383e5bb9818faf332c37fb736cdf501e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba99253597a9559c421e0bb074749f54c9135db212be596527524e7132e85bb5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finite/Variant3549d01a0307b6f3829bbdadc58319ca383e5bb9818faf332c37fb736cdf501e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6500210-aae7-de6c-4e0c-826518933b17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_mul_pow_lt_factorial_sub (a c d : ℕ) :
    ∀ᶠ n in atTop, a * c ^ n < (n - d)! := by
  filter_upwards [Nat.eventually_pow_lt_factorial_sub (a * c) d, Filter.eventually_gt_atTop 0]
    with n hn hn0
  rw [mul_pow] at hn
  exact (Nat.mul_le_mul_right _ (Nat.le_self_pow hn0.ne' _)).trans_lt hn

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finite/Variant3549d01a0307b6f3829bbdadc58319ca383e5bb9818faf332c37fb736cdf501e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finite/Variant3549d01a0307b6f3829bbdadc58319ca383e5bb9818faf332c37fb736cdf501e.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dfc0d91aa1a100eeac67f804b0dda1e017e42e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
