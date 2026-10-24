# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Preservation.Variantad69230cb65d917865fbb0083ec53b239b61553a7a9398409dfe588ba5205884

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "824c84c64ac8aea2b94687ccb9ece066c83bb7f7",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantad69230cb65d917865fbb0083ec53b239b61553a7a9398409dfe588ba5205884.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantad69230cb65d917865fbb0083ec53b239b61553a7a9398409dfe588ba5205884.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantad69230cb65d917865fbb0083ec53b239b61553a7a9398409dfe588ba5205884.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `824c84c64ac8aea2b94687ccb9ece066c83bb7f7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantad69230cb65d917865fbb0083ec53b239b61553a7a9398409dfe588ba5205884.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantad69230cb65d917865fbb0083ec53b239b61553a7a9398409dfe588ba5205884.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Incremental.SiteArtifacts` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DeclarationPreservation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantad69230cb65d917865fbb0083ec53b239b61553a7a9398409dfe588ba5205884.lean/declarations/declarationpreservation--514073a2ad0d2210b5c8b6e8.md) | 16 | `declaration-track:514073a2ad0d2210b5c8b6e8ee8eeb1015e1c2fbe980db693e1df6965b7feeb2` |
| 2 | `inductive` | [PreservationFailureKind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantad69230cb65d917865fbb0083ec53b239b61553a7a9398409dfe588ba5205884.lean/declarations/preservationfailurekind--135a4ace52bef9090d9a7d00.md) | 42 | `declaration-track:135a4ace52bef9090d9a7d00c8d16ce4aa75de4bd3976590d5c94b478516b2a6` |
| 3 | `structure` | [PreservationFailure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantad69230cb65d917865fbb0083ec53b239b61553a7a9398409dfe588ba5205884.lean/declarations/preservationfailure--3e6c7f5a4c4dd419aecd8d9e.md) | 53 | `declaration-track:3e6c7f5a4c4dd419aecd8d9e07823ef692d00088154f914a627d42d0249cb183` |
| 4 | `structure` | [PreservationAudit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantad69230cb65d917865fbb0083ec53b239b61553a7a9398409dfe588ba5205884.lean/declarations/preservationaudit--4b9548090850e1badd67c12f.md) | 63 | `declaration-track:4b9548090850e1badd67c12f7f2428347663ba08caf0a95dccfc3a020c01bf0a` |
| 5 | `theorem` | [regeneratedDeclaration_preserves_proofStatus_or_reports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantad69230cb65d917865fbb0083ec53b239b61553a7a9398409dfe588ba5205884.lean/declarations/regenerateddeclaration-preserves-proofstatus-or-reports--a502a3b1394beae570bed91d.md) | 74 | `result-track:a502a3b1394beae570bed91dc36b059689bac4b6811986bcd70330c56ea6ae54` |
| 6 | `theorem` | [declarationPreservation_keeps_proofStatus_or_reports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantad69230cb65d917865fbb0083ec53b239b61553a7a9398409dfe588ba5205884.lean/declarations/declarationpreservation-keeps-proofstatus-or-reports--4a677424ce0e6569ae598da6.md) | 82 | `result-track:4a677424ce0e6569ae598da66b56c001b03abc9501f3fe3dcc5f34add99353f2` |
| 7 | `theorem` | [regeneratedDeclaration_preserves_claimBoundary_or_reports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantad69230cb65d917865fbb0083ec53b239b61553a7a9398409dfe588ba5205884.lean/declarations/regenerateddeclaration-preserves-claimboundary-or-reports--db940f0d46ae4dd37c669240.md) | 90 | `result-track:db940f0d46ae4dd37c6692404ada25c8f70971ead1d044f6235ec91d745ba259` |
| 8 | `theorem` | [declarationPreservation_keeps_claimBoundary_or_reports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantad69230cb65d917865fbb0083ec53b239b61553a7a9398409dfe588ba5205884.lean/declarations/declarationpreservation-keeps-claimboundary-or-reports--d13b3b91c814697ad2524c22.md) | 98 | `result-track:d13b3b91c814697ad2524c22e2b9b3f3bd07a8948f27dfeb5e1a8399725e0b8a` |
| 9 | `theorem` | [no_silent_proofStatus_downgrade](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantad69230cb65d917865fbb0083ec53b239b61553a7a9398409dfe588ba5205884.lean/declarations/no-silent-proofstatus-downgrade--6cbe0fa3d8fd07fbc7d27e2e.md) | 106 | `result-track:6cbe0fa3d8fd07fbc7d27e2ed16fb4fd7e8cbe9657694c4d21d82e2a3a87afb7` |
| 10 | `theorem` | [no_silent_claimBoundary_change](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantad69230cb65d917865fbb0083ec53b239b61553a7a9398409dfe588ba5205884.lean/declarations/no-silent-claimboundary-change--76b4cd9604ff52ecc1c951f0.md) | 111 | `result-track:76b4cd9604ff52ecc1c951f0ab913e22884d449104b6b4be290ebecf09873b66` |
| 11 | `theorem` | [no_silent_theorem_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantad69230cb65d917865fbb0083ec53b239b61553a7a9398409dfe588ba5205884.lean/declarations/no-silent-theorem-drop--00e73f07edf4e4ce212d647f.md) | 116 | `result-track:00e73f07edf4e4ce212d647f91a0ccd4aa44ad5beb0bb15acdd716f57a554e33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
