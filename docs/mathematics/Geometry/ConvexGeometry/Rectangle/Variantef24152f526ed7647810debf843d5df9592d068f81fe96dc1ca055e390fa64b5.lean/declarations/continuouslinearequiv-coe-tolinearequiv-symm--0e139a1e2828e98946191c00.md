# ContinuousLinearEquiv.coe_toLinearEquiv_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d969c70d-7275-690e-5fbb-948b03bd0f4e",
  "kind": "theorem",
  "lexical_name": "ContinuousLinearEquiv.coe_toLinearEquiv_symm",
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
  "slug": "continuouslinearequiv-coe-tolinearequiv-symm--0e139a1e2828e98946191c00",
  "source": {
    "blob": "d971531011e9bebf102f5920b76d60d72bdd4f96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 61,
    "path": "GRWTSK/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e139a1e2828e98946191c0092f96892e098ddfce8f7845481064418324d3f4f",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d969c70d-7275-690e-5fbb-948b03bd0f4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousLinearEquiv.coe_toLinearEquiv_symm {R : Type*} {S : Type*} [Semiring R]
    [Semiring S] {σ : R →+* S} {σ' : S →+* R} [RingHomInvPair σ σ'] [RingHomInvPair σ' σ]
    (M : Type*) [TopologicalSpace M]
    [AddCommMonoid M] {M₂ : Type*} [TopologicalSpace M₂] [AddCommMonoid M₂] [Module R M]
    [Module S M₂] (e : M ≃SL[σ] M₂) :
    ⇑e.toLinearEquiv.symm = e.symm :=
  rfl

/-- The axis-parallel complex rectangle with opposite corners `z` and `w` is complex product of
  two intervals, which is also the convex hull of the four corners. Golfed from mathlib4\#9598. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d971531011e9bebf102f5920b76d60d72bdd4f96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
