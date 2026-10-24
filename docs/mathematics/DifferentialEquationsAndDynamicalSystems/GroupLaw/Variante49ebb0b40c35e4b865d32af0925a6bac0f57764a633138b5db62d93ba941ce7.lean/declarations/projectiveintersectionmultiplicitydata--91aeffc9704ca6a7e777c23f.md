# ProjectiveIntersectionMultiplicityData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61e51a13936f890772919b09ba52deb30ef200cf63f259f3a18e85a8a5e170d6",
  "kind": "structure",
  "lexical_name": "ProjectiveIntersectionMultiplicityData",
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
  "slug": "projectiveintersectionmultiplicitydata--91aeffc9704ca6a7e777c23f",
  "source": {
    "blob": "54b92f8d00b3e14abcb71f17b945439a113d6c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 255,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Variante49ebb0b40c35e4b865d32af0925a6bac0f57764a633138b5db62d93ba941ce7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91aeffc9704ca6a7e777c23f51265d7e2b78a262149e8b708073bec3ceba9d42",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/GroupLaw/Variante49ebb0b40c35e4b865d32af0925a6bac0f57764a633138b5db62d93ba941ce7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61e51a13936f890772919b09ba52deb30ef200cf63f259f3a18e85a8a5e170d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProjectiveIntersectionMultiplicityData
    (C : LawfulShortWeierstrass.{u})
    (P : ProjectiveWeierstrassClosureCertificate C)
    (D : ProjectiveLineCubicIntersectionData C P) where
  multiplicity :
    D.IntersectionPoint → Nat
  tangentMultiplicity :
    Point C.E → D.Line → Nat
  intersectionsOnLine :
    D.Line → List D.IntersectionPoint
  listedIntersections_on_line :
    ∀ (L : D.Line) (X : D.IntersectionPoint),
      X ∈ intersectionsOnLine L →
        D.lineContains L (D.toProjectivePoint X)
  listedIntersections_on_cubic :
    ∀ (L : D.Line) (X : D.IntersectionPoint),
      X ∈ intersectionsOnLine L →
        P.projectiveModel.projectiveEquation (D.toProjectivePoint X)
  lineIntersectionCount_eq_three :
    ∀ L : D.Line,
      (intersectionsOnLine L).length = 3
  multiplicityPositive :
    ∀ X : D.IntersectionPoint,
      0 < multiplicity X
  tangentMultiplicityPositive :
    ∀ (Q : Point C.E) (L : D.Line),
      D.tangentAt Q L →
        0 < tangentMultiplicity Q L
  boundary : List String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/GroupLaw/Variante49ebb0b40c35e4b865d32af0925a6bac0f57764a633138b5db62d93ba941ce7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Variante49ebb0b40c35e4b865d32af0925a6bac0f57764a633138b5db62d93ba941ce7.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54b92f8d00b3e14abcb71f17b945439a113d6c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
