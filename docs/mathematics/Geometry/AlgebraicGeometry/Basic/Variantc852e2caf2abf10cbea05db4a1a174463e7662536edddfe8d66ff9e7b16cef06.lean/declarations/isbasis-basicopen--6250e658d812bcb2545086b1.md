# isBasis_basicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74c5120d-1ed7-7078-6b4f-59e48a84a8b0",
  "kind": "theorem",
  "lexical_name": "isBasis_basicOpen",
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
  "slug": "isbasis-basicopen--6250e658d812bcb2545086b1",
  "source": {
    "blob": "c41860c281085da54a5202a6691d8eca3c4f9775",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 87,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantc852e2caf2abf10cbea05db4a1a174463e7662536edddfe8d66ff9e7b16cef06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6250e658d812bcb2545086b10d9db65a173a8e0984cdcbef55b63dc1a6607c86",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variantc852e2caf2abf10cbea05db4a1a174463e7662536edddfe8d66ff9e7b16cef06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74c5120d-1ed7-7078-6b4f-59e48a84a8b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBasis_basicOpen :
    TopologicalSpace.Opens.IsBasis (Set.range (basicOpen 𝒜)) := by
  delta TopologicalSpace.Opens.IsBasis
  convert! ProjectiveSpectrum.isTopologicalBasis_basic_opens 𝒜
  exact (Set.range_comp _ _).symm

/-- If `{ xᵢ }` spans the irrelevant ideal of `A`, then `D₊(xᵢ)` covers `Proj A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variantc852e2caf2abf10cbea05db4a1a174463e7662536edddfe8d66ff9e7b16cef06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantc852e2caf2abf10cbea05db4a1a174463e7662536edddfe8d66ff9e7b16cef06.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c41860c281085da54a5202a6691d8eca3c4f9775` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
