# rhThrough_of_three_point_count_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ea90e66-4519-aab6-6db8-9f8a8402ee3f",
  "kind": "theorem",
  "lexical_name": "rhThrough_of_three_point_count_margin",
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
  "slug": "rhthrough-of-three-point-count-margin--3a5c079a9bb07206fcc1199a",
  "source": {
    "blob": "41daf554711152e78a3bbc996699d18e0513aa99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 224,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a5c079a9bb07206fcc1199a6d645d0ec85a847222a01b5600fd2e0e0f1eff5f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ea90e66-4519-aab6-6db8-9f8a8402ee3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rhThrough_of_three_point_count_margin (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (data : SampledRectangleEdges N)
    (count : ℕ)
    (accepted :
      data.toHalfUnitRectangleEdgeBounds.toRealRectangleEdgeEnclosure.accepts count = true)
    (strict : count < family.certifiedCount + 2) : RHThrough N :=
  CanonicalRectangleEdgeWitness.rhThrough (data.toEdgeWitness count accepted)
    alignment strict

end SampledRectangleEdges

/-- Hostile finite fixture: exact agreement at 0, 1/2 and 1 does not
control an interior value without a modulus of continuity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleThreePointLipschitz.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41daf554711152e78a3bbc996699d18e0513aa99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
