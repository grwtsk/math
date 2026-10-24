# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.NonIntegrable.Variant04916765b7bae2cfccaad381c18875d4abdeb603a797ead7e9b3d2d9f66c0e82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41a06a5321d2fccc44f0c07c5476ba0c2f7471da",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/NonIntegrable/Variant04916765b7bae2cfccaad381c18875d4abdeb603a797ead7e9b3d2d9f66c0e82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant04916765b7bae2cfccaad381c18875d4abdeb603a797ead7e9b3d2d9f66c0e82.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant04916765b7bae2cfccaad381c18875d4abdeb603a797ead7e9b3d2d9f66c0e82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41a06a5321d2fccc44f0c07c5476ba0c2f7471da`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/NonIntegrable/Variant04916765b7bae2cfccaad381c18875d4abdeb603a797ead7e9b3d2d9f66c0e82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/NonIntegrable/Variant04916765b7bae2cfccaad381c18875d4abdeb603a797ead7e9b3d2d9f66c0e82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_integrableOn_of_tendsto_norm_atTop_of_deriv_isBigO_filter_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant04916765b7bae2cfccaad381c18875d4abdeb603a797ead7e9b3d2d9f66c0e82.lean/declarations/not-integrableon-of-tendsto-norm-attop-of-deriv-isbigo-filter-aux--d9007960e28a2c165ff97731.md) | 50 | `result-track:d9007960e28a2c165ff97731dd43b64ea71b7845a646a5b1594e713dd4f9e197` |
| 2 | `theorem` | [not_integrableOn_of_tendsto_norm_atTop_of_deriv_isBigO_filter](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant04916765b7bae2cfccaad381c18875d4abdeb603a797ead7e9b3d2d9f66c0e82.lean/declarations/not-integrableon-of-tendsto-norm-attop-of-deriv-isbigo-filter--4c6a397b939e92acbdde1b12.md) | 96 | `result-track:4c6a397b939e92acbdde1b1218408de984064a69d2d4d95fd8a39a6c44178753` |
| 3 | `theorem` | [not_intervalIntegrable_of_tendsto_norm_atTop_of_deriv_isBigO_filter](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant04916765b7bae2cfccaad381c18875d4abdeb603a797ead7e9b3d2d9f66c0e82.lean/declarations/not-intervalintegrable-of-tendsto-norm-attop-of-deriv-isbigo-filter--e8db53dfd02843aa4a6f707e.md) | 125 | `result-track:e8db53dfd02843aa4a6f707e48a693282f6a34bf9f6a0b9329abc30b5a4a2d7a` |
| 4 | `theorem` | [not_intervalIntegrable_of_tendsto_norm_atTop_of_deriv_isBigO_within_diff_singleton](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant04916765b7bae2cfccaad381c18875d4abdeb603a797ead7e9b3d2d9f66c0e82.lean/declarations/not-intervalintegrable-of-tendsto-norm-attop-of-deriv-isbigo-within-diff--9096070a30cc533c68649b9d.md) | 136 | `result-track:9096070a30cc533c68649b9d73fcaedb860871e606fc1f613dfcae8b3b17589f` |
| 5 | `theorem` | [not_intervalIntegrable_of_tendsto_norm_atTop_of_deriv_isBigO_punctured](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant04916765b7bae2cfccaad381c18875d4abdeb603a797ead7e9b3d2d9f66c0e82.lean/declarations/not-intervalintegrable-of-tendsto-norm-attop-of-deriv-isbigo-punctured--43d52e31827b16bae6d80419.md) | 159 | `result-track:43d52e31827b16bae6d804194ab84c94d72f65c83deef979bde66af976822d57` |
| 6 | `theorem` | [not_intervalIntegrable_of_sub_inv_isBigO_punctured](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant04916765b7bae2cfccaad381c18875d4abdeb603a797ead7e9b3d2d9f66c0e82.lean/declarations/not-intervalintegrable-of-sub-inv-isbigo-punctured--67b293fe9fb26d8ca3ce6784.md) | 169 | `result-track:67b293fe9fb26d8ca3ce67844d6c5b93f2c085b2ba399931f76ae31389e4c227` |
| 7 | `theorem` | [intervalIntegrable_sub_inv_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant04916765b7bae2cfccaad381c18875d4abdeb603a797ead7e9b3d2d9f66c0e82.lean/declarations/intervalintegrable-sub-inv-iff--88865146c00d4f96400eed10.md) | 186 | `result-track:88865146c00d4f96400eed1053f1a933e758486754d258fa3fdaa541a831d7f4` |
| 8 | `theorem` | [intervalIntegrable_inv_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant04916765b7bae2cfccaad381c18875d4abdeb603a797ead7e9b3d2d9f66c0e82.lean/declarations/intervalintegrable-inv-iff--5f1df47a3dc84d3dbd46c3a7.md) | 199 | `result-track:5f1df47a3dc84d3dbd46c3a7abd170b709724d7b553297baf4d1f142719f767f` |
| 9 | `theorem` | [not_IntegrableOn_Ici_inv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant04916765b7bae2cfccaad381c18875d4abdeb603a797ead7e9b3d2d9f66c0e82.lean/declarations/not-integrableon-ici-inv--bb0bd941f0faf70ef62925fd.md) | 204 | `result-track:bb0bd941f0faf70ef62925fd872531bb1f98921f750c48b365630ed55b23c77e` |
| 10 | `theorem` | [not_IntegrableOn_Ioi_inv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant04916765b7bae2cfccaad381c18875d4abdeb603a797ead7e9b3d2d9f66c0e82.lean/declarations/not-integrableon-ioi-inv--5072a52f564733b1cea0119e.md) | 215 | `result-track:5072a52f564733b1cea0119e8843c48fdb2b7ec3c637a2dd1140f7517a1eaa3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
