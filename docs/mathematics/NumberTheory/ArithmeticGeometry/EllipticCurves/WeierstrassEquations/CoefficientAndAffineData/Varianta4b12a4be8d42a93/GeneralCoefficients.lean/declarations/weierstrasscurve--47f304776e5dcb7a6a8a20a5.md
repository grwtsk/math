# WeierstrassCurve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:feb64c3c9fabb7fcde10765c48be5b6e44e5667a3777e1b0df2bed169fb61172",
  "kind": "structure",
  "lexical_name": "WeierstrassCurve",
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
  "slug": "weierstrasscurve--47f304776e5dcb7a6a8a20a5",
  "source": {
    "blob": "ea712bd8fc03c557bea2d6833943663ab7aece59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 38,
    "path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/WeierstrassEquations/CoefficientAndAffineData/Varianta4b12a4be8d42a93/GeneralCoefficients.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47f304776e5dcb7a6a8a20a514f30a26668ea78d2a859ad53f4b5c75a9e4a088",
  "verification": {
    "reference": "docs/verification/NumberTheory/ArithmeticGeometry/EllipticCurves/WeierstrassEquations/CoefficientAndAffineData/Varianta4b12a4be8d42a93/GeneralCoefficients.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:feb64c3c9fabb7fcde10765c48be5b6e44e5667a3777e1b0df2bed169fb61172`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure WeierstrassCurve (K : Type _) [Field K] where
  a1 : K
  a2 : K
  a3 : K
  a4 : K
  a6 : K

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.WeierstrassEquations.CoefficientAndAffineData.Varianta4b12a4be8d42a93
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/NumberTheory/ArithmeticGeometry/EllipticCurves/WeierstrassEquations/CoefficientAndAffineData/Varianta4b12a4be8d42a93/GeneralCoefficients.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/WeierstrassEquations/CoefficientAndAffineData/Varianta4b12a4be8d42a93/GeneralCoefficients.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea712bd8fc03c557bea2d6833943663ab7aece59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
