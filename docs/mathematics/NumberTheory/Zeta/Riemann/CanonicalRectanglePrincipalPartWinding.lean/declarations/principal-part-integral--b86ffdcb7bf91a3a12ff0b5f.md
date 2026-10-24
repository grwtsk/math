# principal_part_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27261acf-b66f-4e44-67ab-33e5bef5145c",
  "kind": "theorem",
  "lexical_name": "principal_part_integral",
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
  "slug": "principal-part-integral--b86ffdcb7bf91a3a12ff0b5f",
  "source": {
    "blob": "807b9cc5c0a74f22c51232ac068d7a354cacc0b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 346,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectanglePrincipalPartWinding.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b86ffdcb7bf91a3a12ff0b5f3d7b9aaf99723131e573f428478e3944d0edca3e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalRectanglePrincipalPartWinding.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27261acf-b66f-4e44-67ab-33e5bef5145c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem principal_part_integral {N : ℕ}
    (certificate : RectangleUnitPoleWindingCertificate N) :
    rectangleBoundaryIntegral N (rectanglePrincipalPart N) =
      (2 * (Real.pi : ℂ) * Complex.I) * rectangleResidueMass N := by
  have hnontrivial := certificate.nontrivial_boundaryIntegrable
  have htrivial := certificate.trivial_boundaryIntegrable
  have hpole := certificate.pole_boundaryIntegrable
  calc
    rectangleBoundaryIntegral N (rectanglePrincipalPart N) =
        rectangleBoundaryIntegral N
          (fun s => nontrivialPrincipalPart N s + trivialPrincipalPart N s +
            polePrincipalPart s) := by rfl
    _ = rectangleBoundaryIntegral N
          (fun s => nontrivialPrincipalPart N s + trivialPrincipalPart N s) +
        rectangleBoundaryIntegral N polePrincipalPart := by
          exact rectangleBoundaryIntegral_add (hnontrivial.add htrivial) hpole
    _ = (rectangleBoundaryIntegral N (nontrivialPrincipalPart N) +
          rectangleBoundaryIntegral N (trivialPrincipalPart N)) +
        rectangleBoundaryIntegral N polePrincipalPart := by
          rw [rectangleBoundaryIntegral_add hnontrivial htrivial]
    _ = (2 * (Real.pi : ℂ) * Complex.I) * rectangleResidueMass N := by
          rw [certificate.nontrivial_principalPart_integral,
            certificate.trivial_principalPart_integral,
            certificate.pole_principalPart_integral]
          unfold rectangleResidueMass
          ring

/-- Construct the prior winding certificate from the single universal interior
pole theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectanglePrincipalPartWinding.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectanglePrincipalPartWinding.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `807b9cc5c0a74f22c51232ac068d7a354cacc0b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
