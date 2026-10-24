# CanonicalTensorActualH1Comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f4e677d659b1b5ed13c595f44d14c74effec6478cf5e4e96b33eb746d9df158",
  "kind": "structure",
  "lexical_name": "CanonicalTensorActualH1Comparison",
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
  "slug": "canonicaltensoractualh1comparison--499c5ff8587268bb9a8b4498",
  "source": {
    "blob": "e632f5554fdc09dafe2880ed91b404169b0b3d99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 401,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:499c5ff8587268bb9a8b4498011a305d4b81a461977fdd814eec707ede474589",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f4e677d659b1b5ed13c595f44d14c74effec6478cf5e4e96b33eb746d9df158`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CanonicalTensorActualH1Comparison
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X) where
  toActual : E ⊗[ℚ] E → R.H1C
  coordinate_compatibility :
    ∀ t σ,
      R.h1ComplexCoordinates (toActual t) σ =
        canonicalTensorComplexCoordinate E t σ


/-- Q-linearity plus the pure-tensor coordinate formula imply full canonical
tensor coordinate compatibility. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e632f5554fdc09dafe2880ed91b404169b0b3d99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
