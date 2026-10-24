# SpecialValueClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0da14102f0d7251fe17a597270786ecb031a5bc81f00f0cea07fd8049fa3e1e",
  "kind": "structure",
  "lexical_name": "SpecialValueClaim",
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
  "slug": "specialvalueclaim--b7b7dc273f9dcea7ae2903ac",
  "source": {
    "blob": "c2b33017d92044f9fabf80e27e691c7424a8b9cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 38,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpecialValueClaim/Varianta30f56af0e269b9ede2d641530b09f30a1a52ea78f363abbbaa7778565c6fb61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7b7dc273f9dcea7ae2903ac57d355a91d5589f02f2bf6ce87b9d2e354650ba9",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SpecialValueClaim/Varianta30f56af0e269b9ede2d641530b09f30a1a52ea78f363abbbaa7778565c6fb61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0da14102f0d7251fe17a597270786ecb031a5bc81f00f0cea07fd8049fa3e1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SpecialValueClaim
    {M : PerfectComplex.Model.{uObj, uHom, uIso}}
    {R : Comparison.CoefficientContext.{uCoeff}}
    (D : Determinant.Theory.{uObj, uHom, uIso, uCoeff, uLine} M R)
    (C : M.Object) where
  ScalarTarget : Type uScalar
  distinguishedElement : D.Line C → ScalarTarget
  statement : Prop

namespace SpecialValueClaim

variable
    {M : PerfectComplex.Model.{uObj, uHom, uIso}}
    {R : Comparison.CoefficientContext.{uCoeff}}
    {D : Determinant.Theory.{uObj, uHom, uIso, uCoeff, uLine} M R}
    {C : M.Object}

/-- The distinguished-element map, without any claim about its properties. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpecialValueClaim/Varianta30f56af0e269b9ede2d641530b09f30a1a52ea78f363abbbaa7778565c6fb61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpecialValueClaim/Varianta30f56af0e269b9ede2d641530b09f30a1a52ea78f363abbbaa7778565c6fb61.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2b33017d92044f9fabf80e27e691c7424a8b9cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
