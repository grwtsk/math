# ScalarKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:895973b4aa66bc3cc82c86c5bb72db2ae73c459e82c8db2ba53ec04e62e79eea",
  "kind": "structure",
  "lexical_name": "ScalarKernel",
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
  "slug": "scalarkernel--be01223e6c705e0009defda1",
  "source": {
    "blob": "638393b6f3e4546caf8b420b8b2dd373c4256d87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be01223e6c705e0009defda187054c2621f05b68ee21c888b10805e8687d3661",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:895973b4aa66bc3cc82c86c5bb72db2ae73c459e82c8db2ba53ec04e62e79eea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ScalarKernel where
  /-- Analytic scalar carrier. -/
  Scalar : Type
  /-- Additive identity. -/
  zero : Scalar
  /-- Addition. -/
  add : Scalar → Scalar → Scalar
  /-- Subtraction. -/
  sub : Scalar → Scalar → Scalar
  /-- Multiplication. -/
  mul : Scalar → Scalar → Scalar
  /-- Analytic order. -/
  le : Scalar → Scalar → Prop
  /-- Archimedean term `A(t)`. -/
  archimedean : Scalar → Scalar
  /-- Stationary-point map `tau(U)`. -/
  stationary : Scalar → Scalar
  /-- Convex conjugate `Lambda(U)`. -/
  legendre : Scalar → Scalar
  /-- Clamp to a closed chamber. -/
  clamp : Scalar → Scalar → Scalar → Scalar
  /-- Convexity predicate over a closed chamber. -/
  isConvexOn : (Scalar → Scalar) → Scalar → Scalar → Prop
  /-- Exact Legendre impulse integral. -/
  impulseIntegral : Scalar → Scalar → Scalar → Scalar
  /-- Host-independent sublinearity predicate. -/
  isSublinear : (Nat → Scalar) → (Nat → Scalar) → Prop
  /-- Host-independent summability predicate. -/
  isSummable : (Nat → Scalar) → Prop

/-- Zero-event state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chamber/Variant64105c131a248d9104a3b8e81c68c0557ffca8e010e208e151ae7d37c7510fcd.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `638393b6f3e4546caf8b420b8b2dd373c4256d87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
