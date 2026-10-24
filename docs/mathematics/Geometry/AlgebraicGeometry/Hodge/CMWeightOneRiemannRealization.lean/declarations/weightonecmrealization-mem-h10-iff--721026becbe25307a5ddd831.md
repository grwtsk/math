# WeightOneCMRealization.mem_H10_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c3de88b-8528-3740-d2d7-34bf5434b9db",
  "kind": "theorem",
  "lexical_name": "WeightOneCMRealization.mem_H10_iff",
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
  "slug": "weightonecmrealization-mem-h10-iff--721026becbe25307a5ddd831",
  "source": {
    "blob": "e632f5554fdc09dafe2880ed91b404169b0b3d99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 134,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:721026becbe25307a5ddd8314882fad4d8b68587429aa8414e5de147e85a91e7",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c3de88b-8528-3740-d2d7-34bf5434b9db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem WeightOneCMRealization.mem_H10_iff
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X)
    (z : R.H1C) :
    z ∈ R.H10 ↔
      R.h1ComplexCoordinates z ∈ CMCoordinateHodge.holomorphicPart v :=
  Iff.rfl

/-- Membership in actual H^(0,1) is exactly coordinate antiholomorphic membership. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e632f5554fdc09dafe2880ed91b404169b0b3d99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
