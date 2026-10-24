# splits_C_mul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0e18e88-d93d-c6ae-63af-eddf6991e3d5",
  "kind": "theorem",
  "lexical_name": "splits_C_mul_iff",
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
  "slug": "splits-c-mul-iff--fe8a40114eee1d64ae85f2dd",
  "source": {
    "blob": "6e49c3699cdd3abaaf11337514b080c92bc7e38f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 77,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe8a40114eee1d64ae85f2dd2f1350e849494965573c065bc89c4dee18bff5ba",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0e18e88-d93d-c6ae-63af-eddf6991e3d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splits_C_mul_iff (c : F) (hc : c ≠ 0) (f : F[X]) :
    (C c * f).Splits ↔ f.Splits := by
  constructor
  · intro h
    have hi : C c⁻¹ * (C c * f) = f := by
      rw [← mul_assoc, ← C_mul, inv_mul_cancel₀ hc, C_1, one_mul]
    rw [← hi]
    exact h.C_mul c⁻¹
  · exact fun h => h.C_mul c

/-- Existence of a square root is derived from polynomial splitting and conversely. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e49c3699cdd3abaaf11337514b080c92bc7e38f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
