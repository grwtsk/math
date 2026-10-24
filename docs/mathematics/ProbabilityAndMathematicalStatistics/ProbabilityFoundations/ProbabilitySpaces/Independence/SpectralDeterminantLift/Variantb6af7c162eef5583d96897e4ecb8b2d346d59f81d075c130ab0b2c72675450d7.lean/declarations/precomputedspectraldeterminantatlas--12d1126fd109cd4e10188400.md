# PrecomputedSpectralDeterminantAtlas

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8111af7fb662c56fa89a9340aceb6fc2eaf5bdf6425db91d1f126834ea97ff91",
  "kind": "structure",
  "lexical_name": "PrecomputedSpectralDeterminantAtlas",
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
  "slug": "precomputedspectraldeterminantatlas--12d1126fd109cd4e10188400",
  "source": {
    "blob": "74903929d657028fdcab994703762bb9cdf84fb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 56,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12d1126fd109cd4e1018840046fa516a14e561060b70d3cdad65bbb2dd2bdc00",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8111af7fb662c56fa89a9340aceb6fc2eaf5bdf6425db91d1f126834ea97ff91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrecomputedSpectralDeterminantAtlas where
  Pivot : Type
  toDetPivot : Pivot → DeterminantPivot
  transition : Pivot → Pivot → Option DeterminantTransition
  coversFrames : Prop
  coversFrames_certified : coversFrames
  cocycleCompatible : Prop
  cocycleCompatible_certified : cocycleCompatible
  pathIndependent : Prop
  pathIndependent_certified : pathIndependent
  regularizationCompatible : Prop
  regularizationCompatible_certified : regularizationCompatible
  pivotTransitionLogLabel : String
  sourceLabel : String

/--
Determinant-preserving quasi-isomorphism.

This is the categorical / derived / global representation. It is a contract
that determinant lines and spectral determinants are preserved.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SpectralDeterminantLift/Variantb6af7c162eef5583d96897e4ecb8b2d346d59f81d075c130ab0b2c72675450d7.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74903929d657028fdcab994703762bb9cdf84fb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
