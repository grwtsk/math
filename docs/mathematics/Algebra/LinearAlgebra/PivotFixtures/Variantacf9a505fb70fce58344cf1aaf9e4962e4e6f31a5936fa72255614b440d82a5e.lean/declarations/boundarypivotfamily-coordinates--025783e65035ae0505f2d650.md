# boundaryPivotFamily_coordinates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1005444a-cf40-724c-c4b2-c9bd07223675",
  "kind": "theorem",
  "lexical_name": "boundaryPivotFamily_coordinates",
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
  "slug": "boundarypivotfamily-coordinates--025783e65035ae0505f2d650",
  "source": {
    "blob": "e0017abf6ab8f869a94f88536adaa70553428dcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 72,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:025783e65035ae0505f2d65059b2097da106cec87e694443b70a9c5c6f5b94d0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1005444a-cf40-724c-c4b2-c9bd07223675`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryPivotFamily_coordinates (eps : ℝ) :
    PluckerCoordinates24.ofMatrix (boundaryPivotFamily eps) = ⟨eps, 1, 1, eps, eps, 0⟩ := by
  apply PluckerCoordinates24.ext <;>
    norm_num [PluckerCoordinates24.ofMatrix, minor₂, boundaryPivotFamily,
      Matrix.cons_val_zero, Matrix.cons_val_succ]

/-- The first pivot is precisely the parameter and therefore vanishes at zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0017abf6ab8f869a94f88536adaa70553428dcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
