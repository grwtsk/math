# oneBoundary_le_oneCycle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52e3c3de-b2b9-7367-fff7-4e9dd3a53377",
  "kind": "theorem",
  "lexical_name": "oneBoundary_le_oneCycle",
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
  "slug": "oneboundary-le-onecycle--e7703a511424cd55031d4346",
  "source": {
    "blob": "e3e3eaf5f425a58c1c686aa08df3706aa1812012",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 72,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCandidateH1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7703a511424cd55031d434627e5bb36a6ae69c575d9c16779c1a00376462c49",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonCandidateH1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52e3c3de-b2b9-7367-fff7-4e9dd3a53377`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oneBoundary_le_oneCycle (k : ℕ) :
    OneBoundarySubmodule k ≤ OneCycleSubmodule k := by
  intro v hv
  rcases hv with ⟨n, rfl⟩
  change differentialOne k (differentialTwo k n) = 0
  have hc :=
    congrArg (fun f : ℤ →ₗ[ℤ] ℤ => f n)
      (differentials_comp_eq_zero k)
  simpa only [LinearMap.comp_apply, LinearMap.zero_apply] using hc

/-- As a submodule INSIDE cycles, the one-boundaries are the pullback
of the true range along the canonical inclusion of cycles into C₁.
Using comap avoids pretending a general chain complex's range lives
in the domain ker without a proof of the chain condition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonCandidateH1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCandidateH1.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3e3eaf5f425a58c1c686aa08df3706aa1812012` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
