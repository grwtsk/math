# EffectiveResourceModel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72f488c0bab91185b73fab06d2de7f2a2bd06923891441b0f074001a833d6fde",
  "kind": "structure",
  "lexical_name": "EffectiveResourceModel",
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
  "slug": "effectiveresourcemodel--6be4389c068783e886bbdffd",
  "source": {
    "blob": "a7f9eb67358ca74165f09deb63799b4ff6396522",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant0cd82bfa3fc3cd95f3ff5399e0d841c41734f56e2f771c29527f8165458c6cbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6be4389c068783e886bbdffd1de0b4d5b33f6c628f99600916558a7663f889b2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant0cd82bfa3fc3cd95f3ff5399e0d841c41734f56e2f771c29527f8165458c6cbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72f488c0bab91185b73fab06d2de7f2a2bd06923891441b0f074001a833d6fde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EffectiveResourceModel where
  timeBudget : Nat → Nat
  queryBudget : Nat → Nat
  spaceBudget : Nat → Nat
  approximationBudget : Nat → ℝ≥0
  advantageLossBudget : Nat → ℝ≥0
  uniformity : UniformityModel

/--
`(X, ζ, Ω, Enc_X, Q_X, R_X)` with all presentation data in the source object.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant0cd82bfa3fc3cd95f3ff5399e0d841c41734f56e2f771c29527f8165458c6cbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/EffectiveArithmeticSource/Variant0cd82bfa3fc3cd95f3ff5399e0d841c41734f56e2f771c29527f8165458c6cbf.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7f9eb67358ca74165f09deb63799b4ff6396522` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
