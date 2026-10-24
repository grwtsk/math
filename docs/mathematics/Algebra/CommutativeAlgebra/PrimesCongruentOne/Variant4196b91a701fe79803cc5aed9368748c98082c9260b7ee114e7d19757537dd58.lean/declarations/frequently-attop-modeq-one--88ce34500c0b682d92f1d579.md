# frequently_atTop_modEq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fb0af5b-de41-c9fc-73e2-2cf492260611",
  "kind": "theorem",
  "lexical_name": "frequently_atTop_modEq_one",
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
  "slug": "frequently-attop-modeq-one--88ce34500c0b682d92f1d579",
  "source": {
    "blob": "4af6071f139f0757f13a8d8387854c3e4b0663ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 65,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PrimesCongruentOne/Variant4196b91a701fe79803cc5aed9368748c98082c9260b7ee114e7d19757537dd58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88ce34500c0b682d92f1d57986ab5ae0b2caf46ceecefd0fbe3e3d43f6209a73",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PrimesCongruentOne/Variant4196b91a701fe79803cc5aed9368748c98082c9260b7ee114e7d19757537dd58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fb0af5b-de41-c9fc-73e2-2cf492260611`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frequently_atTop_modEq_one {k : ℕ} (hk0 : k ≠ 0) :
    ∃ᶠ p in atTop, Nat.Prime p ∧ p ≡ 1 [MOD k] := by
  refine frequently_atTop.2 fun n => ?_
  obtain ⟨p, hp⟩ := exists_prime_gt_modEq_one n hk0
  exact ⟨p, ⟨hp.2.1.le, hp.1, hp.2.2⟩⟩

/-- For any positive `k : ℕ` there are infinitely many primes `p` such that `p ≡ 1 [MOD k]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PrimesCongruentOne/Variant4196b91a701fe79803cc5aed9368748c98082c9260b7ee114e7d19757537dd58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PrimesCongruentOne/Variant4196b91a701fe79803cc5aed9368748c98082c9260b7ee114e7d19757537dd58.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4af6071f139f0757f13a8d8387854c3e4b0663ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
