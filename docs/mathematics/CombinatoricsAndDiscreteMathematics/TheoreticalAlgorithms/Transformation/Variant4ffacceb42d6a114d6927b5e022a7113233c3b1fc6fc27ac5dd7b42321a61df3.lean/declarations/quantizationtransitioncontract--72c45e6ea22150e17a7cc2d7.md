# QuantizationTransitionContract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8acdcd0bc88ddb361c501333f605061b6374d00449fe4138ad3e9dccb40d50f6",
  "kind": "structure",
  "lexical_name": "QuantizationTransitionContract",
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
  "slug": "quantizationtransitioncontract--72c45e6ea22150e17a7cc2d7",
  "source": {
    "blob": "f7218c2b5e93836d0c9b248bf00f45ad11e496f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 109,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformation/Variant4ffacceb42d6a114d6927b5e022a7113233c3b1fc6fc27ac5dd7b42321a61df3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72c45e6ea22150e17a7cc2d733ae672f3cb61f5c4d55ffe8a13d12fb6aad9220",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformation/Variant4ffacceb42d6a114d6927b5e022a7113233c3b1fc6fc27ac5dd7b42321a61df3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8acdcd0bc88ddb361c501333f605061b6374d00449fe4138ad3e9dccb40d50f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure QuantizationTransitionContract where
  identifier : String
  sourceResolution : ResolutionBits
  targetResolution : ResolutionBits
  transition : QuantizationTransition
  sourceEvidence : List ArtifactIdentity
  targetEvidence : ArtifactIdentity
  transformation : TransformationContract
  sourceDecomposition : Option ArtifactIdentity
  targetDecomposition : Option ArtifactIdentity
  knownLosses : List String
  affectedClaims : List ArtifactIdentity
  recoveryEvidence : List ArtifactIdentity
  transitionSound :
    match transition with
    | .preserve => sourceResolution.value = targetResolution.value
    | .refine => sourceResolution.value ≤ targetResolution.value
    | .coarsen => targetResolution.value ≤ sourceResolution.value
    | .saturateAtCompilerMaximum =>
        targetResolution.value ≤ sourceResolution.value
    | .independentlyRecompute | .decompose | .assemble => True
  lossyHasRecovery :
    transition.IsLossy →
      knownLosses ≠ [] ∧ recoveryEvidence ≠ []

namespace QuantizationTransitionContract

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformation/Variant4ffacceb42d6a114d6927b5e022a7113233c3b1fc6fc27ac5dd7b42321a61df3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformation/Variant4ffacceb42d6a114d6927b5e022a7113233c3b1fc6fc27ac5dd7b42321a61df3.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7218c2b5e93836d0c9b248bf00f45ad11e496f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
