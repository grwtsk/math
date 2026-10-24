# ResidualLinkingFormSemantics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69a41ac5f7f6edbdc2d94a75d584872ee390d6e40a614a701ebcef821a8475aa",
  "kind": "structure",
  "lexical_name": "ResidualLinkingFormSemantics",
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
  "slug": "residuallinkingformsemantics--a8decd2b5cb8d32888618c7e",
  "source": {
    "blob": "254e789d0e653b48641b04e939635223a7a6abe9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 144,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Homology/Variant0d54a0060edb9860e6bbc1914bb2b38dae2973f474b4d65d90ccf2b7f4916b7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8decd2b5cb8d32888618c7e94f15b0b48c8603a9919105e14db7248afa735b6",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Homology/Variant0d54a0060edb9860e6bbc1914bb2b38dae2973f474b4d65d90ccf2b7f4916b7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69a41ac5f7f6edbdc2d94a75d584872ee390d6e40a614a701ebcef821a8475aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ResidualLinkingFormSemantics
    (T : OrientedKnotFillingTheory.{u})
    (K : T.Knot) where
  LinkingCode : Type v
  code : T.ClosedManifold → LinkingCode
  plusTwo_eq_minusTwo :
    code (T.Filling K (T.plusTwo K)) = code (T.Filling K (T.minusTwo K))

namespace ResidualLinkingFormSemantics

variable {T : OrientedKnotFillingTheory.{u}} {K : T.Knot}

/-- The supplied torsion linking-form code also fails to distinguish `+2` and `-2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Homology/Variant0d54a0060edb9860e6bbc1914bb2b38dae2973f474b4d65d90ccf2b7f4916b7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Homology/Variant0d54a0060edb9860e6bbc1914bb2b38dae2973f474b4d65d90ccf2b7f4916b7d.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `254e789d0e653b48641b04e939635223a7a6abe9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
