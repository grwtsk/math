# PicardLindelof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:986e1473508ce092c1d1a0fbd6fa79d47b2bdf6640ad02c0a4b7304e12100892",
  "kind": "structure",
  "lexical_name": "PicardLindelof",
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
  "slug": "picardlindelof--2b9798f000fca2c22132d167",
  "source": {
    "blob": "2b39c3387fa33a660bf7b54c9db2cbbc032069a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b9798f000fca2c22132d1673ce0575c00cb11b51b7efa8c8c44b15e0a4de337",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:986e1473508ce092c1d1a0fbd6fa79d47b2bdf6640ad02c0a4b7304e12100892`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PicardLindelof (E : Type*) [NormedAddCommGroup E] [NormedSpace ℝ E] where
  /-- Function of the initial value problem -/
  toFun : ℝ → E → E
  /-- Lower limit of `t` -/
  tMin : ℝ
  /-- Upper limit of `t` -/
  tMax : ℝ
  /-- Initial value of `t` -/
  t₀ : Icc tMin tMax
  /-- Initial value of `x` -/
  x₀ : E
  /-- Bound of the function over the region of interest -/
  C : ℝ≥0
  /-- Radius of closed ball in `x` over which the bound `C` holds -/
  R : ℝ≥0
  /-- Lipschitz constant of the function -/
  L : ℝ≥0
  isPicardLindelof : IsPicardLindelof toFun tMin t₀ tMax x₀ L R C

namespace PicardLindelof

variable (v : PicardLindelof E)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b39c3387fa33a660bf7b54c9db2cbbc032069a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
