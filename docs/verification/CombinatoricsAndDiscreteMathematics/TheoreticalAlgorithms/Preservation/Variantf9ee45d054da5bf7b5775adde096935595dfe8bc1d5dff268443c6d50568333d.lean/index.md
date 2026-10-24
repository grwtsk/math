# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Preservation.Variantf9ee45d054da5bf7b5775adde096935595dfe8bc1d5dff268443c6d50568333d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3ddc62132398ea21a21a9089edbc3012abb0c99",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantf9ee45d054da5bf7b5775adde096935595dfe8bc1d5dff268443c6d50568333d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantf9ee45d054da5bf7b5775adde096935595dfe8bc1d5dff268443c6d50568333d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantf9ee45d054da5bf7b5775adde096935595dfe8bc1d5dff268443c6d50568333d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3ddc62132398ea21a21a9089edbc3012abb0c99`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantf9ee45d054da5bf7b5775adde096935595dfe8bc1d5dff268443c6d50568333d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantf9ee45d054da5bf7b5775adde096935595dfe8bc1d5dff268443c6d50568333d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Incremental.SiteArtifacts` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DeclarationPreservation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantf9ee45d054da5bf7b5775adde096935595dfe8bc1d5dff268443c6d50568333d.lean/declarations/declarationpreservation--a01e270c5d32dbfcea6508f0.md) | 8 | `declaration-track:a01e270c5d32dbfcea6508f060d8722f930f55a499a0a4777fe75eb1103be504` |
| 2 | `inductive` | [PreservationFailureKind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantf9ee45d054da5bf7b5775adde096935595dfe8bc1d5dff268443c6d50568333d.lean/declarations/preservationfailurekind--969fe01842b6f445170cda9a.md) | 34 | `declaration-track:969fe01842b6f445170cda9a86351de85ca6202b5ed3873ca088d3ae5280ca94` |
| 3 | `structure` | [PreservationFailure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantf9ee45d054da5bf7b5775adde096935595dfe8bc1d5dff268443c6d50568333d.lean/declarations/preservationfailure--32e91cab533ee8d55ce1d4ef.md) | 45 | `declaration-track:32e91cab533ee8d55ce1d4ef6a0de8cff458652b12dd1dcd8b81ccf9e9de78c7` |
| 4 | `structure` | [PreservationAudit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantf9ee45d054da5bf7b5775adde096935595dfe8bc1d5dff268443c6d50568333d.lean/declarations/preservationaudit--3e63ab6e11c30f38390081e6.md) | 55 | `declaration-track:3e63ab6e11c30f38390081e60ac4124055dd6db700be0a4c870fdd84faa80d8b` |
| 5 | `theorem` | [regeneratedDeclaration_preserves_proofStatus_or_reports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantf9ee45d054da5bf7b5775adde096935595dfe8bc1d5dff268443c6d50568333d.lean/declarations/regenerateddeclaration-preserves-proofstatus-or-reports--9ccca95c93a40967e90aab0e.md) | 66 | `result-track:9ccca95c93a40967e90aab0e934f4c90cd9f28f75f76f09c77052c7c06dccde2` |
| 6 | `theorem` | [declarationPreservation_keeps_proofStatus_or_reports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantf9ee45d054da5bf7b5775adde096935595dfe8bc1d5dff268443c6d50568333d.lean/declarations/declarationpreservation-keeps-proofstatus-or-reports--b9a34eb804ebe0feb74cebae.md) | 74 | `result-track:b9a34eb804ebe0feb74cebaeda25f0050278b7c84ccf2cccab0c14f1b1c65e4c` |
| 7 | `theorem` | [regeneratedDeclaration_preserves_claimBoundary_or_reports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantf9ee45d054da5bf7b5775adde096935595dfe8bc1d5dff268443c6d50568333d.lean/declarations/regenerateddeclaration-preserves-claimboundary-or-reports--93579bf3019928de0b677683.md) | 82 | `result-track:93579bf3019928de0b677683d6886b161b5ade5db7d82abe8c6fa0a3e7777911` |
| 8 | `theorem` | [declarationPreservation_keeps_claimBoundary_or_reports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantf9ee45d054da5bf7b5775adde096935595dfe8bc1d5dff268443c6d50568333d.lean/declarations/declarationpreservation-keeps-claimboundary-or-reports--5ad7ca964333d5b70d193c95.md) | 90 | `result-track:5ad7ca964333d5b70d193c95589f60f4e7004c7874594d7bc13d9a7b807bcdf0` |
| 9 | `theorem` | [no_silent_proofStatus_downgrade](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantf9ee45d054da5bf7b5775adde096935595dfe8bc1d5dff268443c6d50568333d.lean/declarations/no-silent-proofstatus-downgrade--2882a1bb30a2ebfb83afb06d.md) | 98 | `result-track:2882a1bb30a2ebfb83afb06d2098bd1d307fc754aa1ea7ca18f400e23a0530a2` |
| 10 | `theorem` | [no_silent_claimBoundary_change](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantf9ee45d054da5bf7b5775adde096935595dfe8bc1d5dff268443c6d50568333d.lean/declarations/no-silent-claimboundary-change--abd3a78b74147b82835804ca.md) | 103 | `result-track:abd3a78b74147b82835804ca0f3ca48417a0b1737ba85569c88b2a313b2b2000` |
| 11 | `theorem` | [no_silent_theorem_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Preservation/Variantf9ee45d054da5bf7b5775adde096935595dfe8bc1d5dff268443c6d50568333d.lean/declarations/no-silent-theorem-drop--cd2d8739b9ce7190589068e4.md) | 108 | `result-track:cd2d8739b9ce7190589068e4eb7e9b8b1d78e0acc7e88257b6bf900320217ffe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
