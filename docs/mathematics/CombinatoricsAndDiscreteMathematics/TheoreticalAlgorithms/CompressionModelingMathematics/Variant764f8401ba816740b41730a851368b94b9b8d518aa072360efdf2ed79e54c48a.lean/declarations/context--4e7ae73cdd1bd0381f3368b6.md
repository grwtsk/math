# Context

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb4437baeba39f3aa724ebd8c11feb356e341d62aa837dd6c8c3c215e89158e1",
  "kind": "structure",
  "lexical_name": "Context",
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
  "slug": "context--4e7ae73cdd1bd0381f3368b6",
  "source": {
    "blob": "68638df2171a3b2d24acb016e3abb51804e396e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 18,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompressionModelingMathematics/Variant764f8401ba816740b41730a851368b94b9b8d518aa072360efdf2ed79e54c48a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e7ae73cdd1bd0381f3368b62acff8ccdac0488404385934c95762e19f2abd5c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompressionModelingMathematics/Variant764f8401ba816740b41730a851368b94b9b8d518aa072360efdf2ed79e54c48a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb4437baeba39f3aa724ebd8c11feb356e341d62aa837dd6c8c3c215e89158e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Context where
  FormalDeduction : Type
  HumanMathArtifact : Type
  Macro : Type
  MathlibElement : Type
  IsPrimitiveString : FormalDeduction -> Prop
  MacroCompresses : Macro -> FormalDeduction -> Prop
  InHumanMathematics : HumanMathArtifact -> Prop
  HumanArtifactEncodedBy : HumanMathArtifact -> FormalDeduction -> Prop
  WrappedLength : MathlibElement -> Nat
  UnwrappedLength : MathlibElement -> Nat
  Depth : MathlibElement -> Nat
  MacroSetLogSparse : Prop
  MacroSetPolynomiallyDense : Prop
  AbelianExponentialExpansion : Prop
  NonabelianSuperlinearRequiresNearMaximalDensity : Prop
  MathlibProxyValid : Prop
  HumanMathPolynomialSubsetOfFormalMath : Prop
  CompressionGuidesAutomatedReasoning : Prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompressionModelingMathematics/Variant764f8401ba816740b41730a851368b94b9b8d518aa072360efdf2ed79e54c48a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompressionModelingMathematics/Variant764f8401ba816740b41730a851368b94b9b8d518aa072360efdf2ed79e54c48a.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68638df2171a3b2d24acb016e3abb51804e396e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
