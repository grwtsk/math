# isClosed_boundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bf9d6e8-65ad-77b9-b0da-625523f33bd5",
  "kind": "lemma",
  "lexical_name": "isClosed_boundary",
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
  "slug": "isclosed-boundary--99623d7cdbf7400f409f9097",
  "source": {
    "blob": "e1f61359042c76f263993d92092e202eafef5e23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 339,
    "path": "GRWTSK/Geometry/InteriorBoundary/Variant47d7a0df6f679e57413a264d281ce1af0b646442ed9bc3f11c56191ab25255f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99623d7cdbf7400f409f9097b584bbf04b47555b49ebcbf506a6d5e185bf99e6",
  "verification": {
    "reference": "docs/verification/Geometry/InteriorBoundary/Variant47d7a0df6f679e57413a264d281ce1af0b646442ed9bc3f11c56191ab25255f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bf9d6e8-65ad-77b9-b0da-625523f33bd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma isClosed_boundary (hn : n ≠ 0) : IsClosed (I.boundary M) := by
  rw [← I.compl_interior, isClosed_compl_iff]
  exact I.isOpen_interior hn

end ChartIndependence

end ModelWithCorners

/-! Interior and boundary are preserved under (local) diffeomorphisms. -/
section Diffeomorph

open ModelWithCorners

variable
  {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
  {H' : Type*} [TopologicalSpace H'] {I' : ModelWithCorners 𝕜 E' H'}
  {N : Type*} [TopologicalSpace N] [ChartedSpace H' N]
  {n : WithTop ℕ∞}

/-- If a function `f` is differentiable at `x` with surjective `mfderiv I I' f x` and `x` is an
interior point with respect to `I`, `f x` must be an interior point with respect to `I'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/InteriorBoundary/Variant47d7a0df6f679e57413a264d281ce1af0b646442ed9bc3f11c56191ab25255f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/InteriorBoundary/Variant47d7a0df6f679e57413a264d281ce1af0b646442ed9bc3f11c56191ab25255f2.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1f61359042c76f263993d92092e202eafef5e23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
