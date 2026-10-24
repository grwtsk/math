# hasProd_inverse_local_factors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36d123e5-cdbd-492d-6df5-8a4f87aae11a",
  "kind": "theorem",
  "lexical_name": "hasProd_inverse_local_factors",
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
  "slug": "hasprod-inverse-local-factors--e50d97e44b3d5960564f89e9",
  "source": {
    "blob": "acb378a8503fdc98b60105c247e8f6d252e69c54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 11,
    "path": "GRWTSK/LinearAlgebra/Matrix/ConvergentLocalProduct.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e50d97e44b3d5960564f89e97b92299d920d75f59d728ebcab94df79048ef546",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/ConvergentLocalProduct.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36d123e5-cdbd-492d-6df5-8a4f87aae11a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasProd_inverse_local_factors {K n v : Type*} [Field K] [TopologicalSpace K]
    [Fintype n] [DecidableEq n]
    (A B U V : v → Matrix n n K) (t : v → K) (L : K)
    (uv : ∀ p, U p * V p = 1) (vu : ∀ p, V p * U p = 1)
    (intertwines : ∀ p, A p * U p = U p * B p)
    (hprod : HasProd (fun p => (Matrix.det (1 - t p • A p))⁻¹) L) :
    HasProd (fun p => (Matrix.det (1 - t p • B p))⁻¹) L := by
  have heq : (fun p => (Matrix.det (1 - t p • A p))⁻¹) =
      (fun p => (Matrix.det (1 - t p • B p))⁻¹) := by
    funext p
    rw [det_pencil_eq (A p) (B p) (U p) (V p) (uv p) (vu p) (intertwines p)]
  rw [← heq]
  exact hprod

/-- If two supplied products converge in a Hausdorff field, their values agree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/ConvergentLocalProduct.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/Matrix/ConvergentLocalProduct.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acb378a8503fdc98b60105c247e8f6d252e69c54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
