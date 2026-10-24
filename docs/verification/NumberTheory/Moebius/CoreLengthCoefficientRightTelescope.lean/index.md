# Verification target: GRWTSK.NumberTheory.Moebius.CoreLengthCoefficientRightTelescope

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee6e8d84b1f48946be1ec1a3629a98d09374dbb8",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee6e8d84b1f48946be1ec1a3629a98d09374dbb8`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreLengthCoefficientNonboundary`](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientNonboundary.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rightCoefficientDepths_eq_Ico](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean/declarations/rightcoefficientdepths-eq-ico--717970b5b87ac394482e5a85.md) | 20 | `result-track:717970b5b87ac394482e5a853e0c9d611c2f33f64a99e56ee372e1abde70016c` |
| 2 | `theorem` | [sum_Ico_indicator_lt](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean/declarations/sum-ico-indicator-lt--918e3c7612a7224f8e498c60.md) | 35 | `result-track:918e3c7612a7224f8e498c608c2597397e8246572a2895a0cd067a7e2a184498` |
| 3 | `theorem` | [sum_Ico_shift](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean/declarations/sum-ico-shift--d097619414cf290e2868cea6.md) | 53 | `result-track:d097619414cf290e2868cea6d0208bf2c257947f7e00e26f0d742271a025a27b` |
| 4 | `def` | [rightTerminalDepth](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean/declarations/rightterminaldepth--15b12244d4d97b82ee44530e.md) | 74 | `declaration-track:15b12244d4d97b82ee44530ed4bbb7526d47ad9e89a4e8fac87f67fbc650e62e` |
| 5 | `theorem` | [rightTerminalDepth_mem](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean/declarations/rightterminaldepth-mem--cc9fc50cfa2b09cd9108dae5.md) | 77 | `result-track:cc9fc50cfa2b09cd9108dae58d9c00f7d759978b5b1880e084c9dec4ec18379f` |
| 6 | `theorem` | [harmonicShiftCount_rightTerminalDepth](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean/declarations/harmonicshiftcount-rightterminaldepth--e8067b40daf09c595c5eaa92.md) | 90 | `result-track:e8067b40daf09c595c5eaa92a939a56e1c55650448ba4f7b81a1fca68929395d` |
| 7 | `theorem` | [coreTerminalLengthCoefficient_rightTerminal](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean/declarations/coreterminallengthcoefficient-rightterminal--554dbbd3d9689731c6edd00d.md) | 106 | `result-track:554dbbd3d9689731c6edd00db3fdb71635eb53d36022da21347e844bc174ab62` |
| 8 | `theorem` | [coreTerminalLengthCoefficient_eq_zero_right_of_ne](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean/declarations/coreterminallengthcoefficient-eq-zero-right-of-ne--30ef55daefd76efd127d20f5.md) | 127 | `result-track:30ef55daefd76efd127d20f594c716fd8ed93b04f6c1895bf3d805ece25d0a15` |
| 9 | `theorem` | [rightTerminalLengthCoefficientMass_eq](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean/declarations/rightterminallengthcoefficientmass-eq--8bc851d3cab1b0c77abcc369.md) | 147 | `result-track:8bc851d3cab1b0c77abcc369e2bdf61833adaec79907118e841ea7763e9277c8` |
| 10 | `theorem` | [coreInteriorLengthCoefficient_right_indicator](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean/declarations/coreinteriorlengthcoefficient-right-indicator--1e7909fe3485fbd68938abaf.md) | 164 | `result-track:1e7909fe3485fbd68938abaf4a14a10734eb6fc226b58505bec8bbe77f4c26b0` |
| 11 | `theorem` | [rightInteriorLengthCoefficientMass_eq](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean/declarations/rightinteriorlengthcoefficientmass-eq--f4d460ef84da17608dbeac24.md) | 199 | `result-track:f4d460ef84da17608dbeac24012043fe6fab7803a2b0d6715d0af1c0ed7eb04f` |
| 12 | `theorem` | [rightLengthCoefficientMass_eq](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean/declarations/rightlengthcoefficientmass-eq--9a0f1628822fca9a70f0f621.md) | 252 | `result-track:9a0f1628822fca9a70f0f6214e196a0b291e8c2727804e6f09150604ab2a8755` |
| 13 | `theorem` | [rightLengthCoefficientTelescoping](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean/declarations/rightlengthcoefficienttelescoping--1486dcb28304d68889015f01.md) | 271 | `result-track:1486dcb28304d68889015f01f25f5ca8513dafdbec98e6ef9b6ebfc29d9a8b6e` |
| 14 | `theorem` | [fullLengthCoefficientMass_le_three_inv_sq](../../../../mathematics/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean/declarations/fulllengthcoefficientmass-le-three-inv-sq--be61a245afbd920c3eebfa8a.md) | 278 | `result-track:be61a245afbd920c3eebfa8aa9df5bde66a26aba8724c43138c7eecb10f4005c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
