# coneToFilled_has_distinct_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af9dd38f-0629-bf7f-054f-e963859fa6e5",
  "kind": "theorem",
  "lexical_name": "coneToFilled_has_distinct_fiber",
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
  "slug": "conetofilled-has-distinct-fiber--93fdc211e23f3bbe2de0d87e",
  "source": {
    "blob": "b548dd5cae2f00d05d37c018f735bdc0e39d232f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 144,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93fdc211e23f3bbe2de0d87eedafda6251019d1fda391f7c02835290ffc9d706",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af9dd38f-0629-bf7f-054f-e963859fa6e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coneToFilled_has_distinct_fiber (k : ℕ) :
    ∃ x y : PerimeterCone k,
      x ≠ y ∧ coneToFilled k x = coneToFilled k y := by
  classical
  by_contra h
  apply coneToFilled_not_injective k
  intro x y hxy
  by_contra hne
  exact h ⟨x, y, hne, hxy⟩

/-- Genus-two concrete fixture: eight original directed boundary
intervals induce the same genuine cone quotient theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonConeFilledQuotient.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b548dd5cae2f00d05d37c018f735bdc0e39d232f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
