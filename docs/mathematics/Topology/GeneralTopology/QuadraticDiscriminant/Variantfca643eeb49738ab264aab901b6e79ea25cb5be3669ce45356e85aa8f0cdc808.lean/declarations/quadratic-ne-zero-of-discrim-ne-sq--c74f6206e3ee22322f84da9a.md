# quadratic_ne_zero_of_discrim_ne_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:462e3c6b-c0fe-aa0a-2ea9-683d5e4e4f79",
  "kind": "theorem",
  "lexical_name": "quadratic_ne_zero_of_discrim_ne_sq",
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
  "slug": "quadratic-ne-zero-of-discrim-ne-sq--c74f6206e3ee22322f84da9a",
  "source": {
    "blob": "7cd02876f0e90969d445cf2261c6db59dfcaa61d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 77,
    "path": "GRWTSK/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c74f6206e3ee22322f84da9a15a7b8e027ff0d2865a8728658777ff77c18bb17",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:462e3c6b-c0fe-aa0a-2ea9-683d5e4e4f79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratic_ne_zero_of_discrim_ne_sq (h : ∀ s : R, discrim a b c ≠ s^2) (x : R) :
    a * (x * x) + b * x + c ≠ 0 :=
  mt discrim_eq_sq_of_quadratic_eq_zero (h _)

end Ring

section Field

variable {K : Type*} [Field K] [NeZero (2 : K)] {a b c : K}

/-- Roots of a quadratic equation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cd02876f0e90969d445cf2261c6db59dfcaa61d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
