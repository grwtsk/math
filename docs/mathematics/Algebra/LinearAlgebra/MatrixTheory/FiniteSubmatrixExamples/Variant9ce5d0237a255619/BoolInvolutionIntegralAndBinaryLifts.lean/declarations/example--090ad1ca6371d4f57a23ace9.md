# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:abd757ce141e8173a8da74e4467d7996290c5f32e5d32ae05509d7765dd2db1a",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--090ad1ca6371d4f57a23ace9",
  "source": {
    "blob": "c251ccaa84a58d9cf17b55d9c6a9baad81afadf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 62,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/FiniteSubmatrixExamples/Variant9ce5d0237a255619/BoolInvolutionIntegralAndBinaryLifts.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:090ad1ca6371d4f57a23ace98483eeced362595b7fffa6dc94f8e988e1c973e4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/FiniteSubmatrixExamples/Variant9ce5d0237a255619/BoolInvolutionIntegralAndBinaryLifts.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:abd757ce141e8173a8da74e4467d7996290c5f32e5d32ae05509d7765dd2db1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : boolProjection.f2Matrix * boolProjection.f2Matrix = 1 :=
  boolProjection.f2Matrix_mul_self

end BitMatrix.Tests.SubmatrixSurgery

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteSubmatrixExamples.Variant9ce5d0237a255619
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/FiniteSubmatrixExamples/Variant9ce5d0237a255619/BoolInvolutionIntegralAndBinaryLifts.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixTheory/FiniteSubmatrixExamples/Variant9ce5d0237a255619/BoolInvolutionIntegralAndBinaryLifts.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c251ccaa84a58d9cf17b55d9c6a9baad81afadf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
