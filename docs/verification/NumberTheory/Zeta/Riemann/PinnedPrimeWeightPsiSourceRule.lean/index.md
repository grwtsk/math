# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightPsiSourceRule

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af64c7e1f8ffecceda8ec392a3027fdff8e943c2",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af64c7e1f8ffecceda8ec392a3027fdff8e943c2`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightSignedSourceCoupling`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightSignedSourceCoupling.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicPsiAbelReconstruction`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.GradedThetaThresholdTransport`](../../../../../mathematics/NumberTheory/Zeta/Riemann/GradedThetaThresholdTransport.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PinnedPrimeWeightPsiSourceRecord](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/pinnedprimeweightpsisourcerecord--75e0ba2fdbae0679c8d3ea31.md) | 58 | `declaration-track:75e0ba2fdbae0679c8d3ea31a31bdb329459d927646f1523bad6d8fe5a242ddb` |
| 2 | `def` | [pinnedPrimeWeightPsiSource](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/pinnedprimeweightpsisource--1da1a2e84c0ca92a7a5d4baa.md) | 72 | `declaration-track:1da1a2e84c0ca92a7a5d4baa1243f337a63f3c3b330db40292b2493b79d6ed60` |
| 3 | `def` | [pinnedPrimeWeightPsiResponse](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/pinnedprimeweightpsiresponse--4320cf5719f886a915980d10.md) | 89 | `declaration-track:4320cf5719f886a915980d10c560154135c0164b8cd1b33d825997e28afb2bfc` |
| 4 | `def` | [pinnedPrimeWeightPsiSignedResidual](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/pinnedprimeweightpsisignedresidual--b9b1b7601db3d20466a6d021.md) | 94 | `declaration-track:b9b1b7601db3d20466a6d021bba221a3accc9059faa53bd99f266c3919eb5a5d` |
| 5 | `theorem` | [thetaError_eq_psiResponse_div_add_signedResidual](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/thetaerror-eq-psiresponse-div-add-signedresidual--cfe47c8a5be655c61e8d6f6a.md) | 99 | `result-track:cfe47c8a5be655c61e8d6f6aa816879341aa49388043fb1dfed1446c389cb734` |
| 6 | `def` | [pinnedPrimeWeightPsiSourceRule](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/pinnedprimeweightpsisourcerule--0fefa58849f7cb004cf9c546.md) | 113 | `declaration-track:0fefa58849f7cb004cf9c5467c742de75f08c4955930e1f8b2c417c67ecdbe7d` |
| 7 | `theorem` | [pinnedPrimeWeightPsiSourceRule_response](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/pinnedprimeweightpsisourcerule-response--b2bc7e423ebd1683acef065d.md) | 128 | `result-track:b2bc7e423ebd1683acef065dfa45bf0836970aa779d0997de903b7cd895a0e7d` |
| 8 | `theorem` | [pinnedPrimeWeightPsiSourceRule_signedResidual](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/pinnedprimeweightpsisourcerule-signedresidual--d662cbf94c9fe370b84fceff.md) | 135 | `result-track:d662cbf94c9fe370b84fceff9e340e63302936a238c96e9274696a5f80d50a19` |
| 9 | `theorem` | [pinnedPrimeWeightPsiSourceRule_response_abs](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/pinnedprimeweightpsisourcerule-response-abs--3a925d8b58dd8cadabe20826.md) | 143 | `result-track:3a925d8b58dd8cadabe208262c61aecda75896785df4e2e8b05f7e6c9b13aaaa` |
| 10 | `theorem` | [pinnedPrimeWeightPsiSourceRule_signedResidual_nonpositive](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/pinnedprimeweightpsisourcerule-signedresidual-nonpositive--8984494b81d68c12952e632b.md) | 151 | `result-track:8984494b81d68c12952e632b536806519a02fd0da4193a1f2bc9f06844eff4a4` |
| 11 | `theorem` | [pinnedPrimeWeightPsiSourceRule_signedResidual_abs](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/pinnedprimeweightpsisourcerule-signedresidual-abs--72b89167dc7bc8317ebe7761.md) | 158 | `result-track:72b89167dc7bc8317ebe776121c673a3d9c191d2ab783f3301aea0bd8968a4ea` |
| 12 | `theorem` | [pinnedPrimeWeightPsiSourceRule_response_bound_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/pinnedprimeweightpsisourcerule-response-bound-iff--007aed8ffc1da3d6d77af28c.md) | 167 | `result-track:007aed8ffc1da3d6d77af28c5fa6088438f62c6536f9bf183fc13fd3d39d7114` |
| 13 | `def` | [PinnedPrimeWeightPsiQuadraticResponseCapacityWithBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/pinnedprimeweightpsiquadraticresponsecapacitywithbudget--a6d9ad5e2a97db101dea4f35.md) | 177 | `declaration-track:a6d9ad5e2a97db101dea4f35b98ea2836f95d2c82e62dc6a63a5cfa1a3b5b847` |
| 14 | `def` | [PinnedPrimeWeightPsiQuadraticResponseCapacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/pinnedprimeweightpsiquadraticresponsecapacity--28d274d67372ea18e05176fa.md) | 186 | `declaration-track:28d274d67372ea18e05176fa1add5a44263dd27a43898db1b8fb189ff37a33f0` |
| 15 | `theorem` | [pinnedPrimeWeightNextOctave_le_four_mul_currentScale](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/pinnedprimeweightnextoctave-le-four-mul-currentscale--8ea3e7761e77d4c6f87c841c.md) | 191 | `result-track:8ea3e7761e77d4c6f87c841cc4d7e58406cb2384985384fd70adff6a5275ec47` |
| 16 | `theorem` | [pinnedPrimeWeightPsiSourceRule_signedResidual_stageEnvelope](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/pinnedprimeweightpsisourcerule-signedresidual-stageenvelope--b82ef8edce252cd459fd1f5d.md) | 205 | `result-track:b82ef8edce252cd459fd1f5d378962012cdfca013ad77417169142a8e81e382a` |
| 17 | `theorem` | [pinnedPrimeWeightPsiSourceRule_signedResidual_sevenEighths](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/pinnedprimeweightpsisourcerule-signedresidual-seveneighths--a47edaba6689d2dcdcd8e5ed.md) | 320 | `result-track:a47edaba6689d2dcdcd8e5eddfc59e8acd09df34982901a17a8990e7a05ff970` |
| 18 | `theorem` | [pinnedPrimeWeightPsiSourceRule_signedResidual_threeQuarters](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/pinnedprimeweightpsisourcerule-signedresidual-threequarters--c24174b340f87b4d863d9906.md) | 336 | `result-track:c24174b340f87b4d863d9906451b407a5fbde3e12002c5f99529913b1ebda015` |
| 19 | `theorem` | [pinnedPrimeWeightPsiQuadraticResponseCapacityWithBudget_to_fixedSignedSourceCoupling](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/pinnedprimeweightpsiquadraticresponsecapacitywithbudget-to-fixedsignedso--f2be5cef01d39c953c74940f.md) | 353 | `result-track:f2be5cef01d39c953c74940ffe9f132748c281d71cb5e7564228ecd09494bde7` |
| 20 | `theorem` | [pinnedPrimeWeightPsiQuadraticResponseCapacityWithBudget_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/pinnedprimeweightpsiquadraticresponsecapacitywithbudget-to-recurrence--3ba133f6c38c49ef5b84f3f8.md) | 374 | `result-track:3ba133f6c38c49ef5b84f3f80cc07009c716a1fbd70ff5511f57e62ba7f6b8fa` |
| 21 | `theorem` | [pinnedPrimeWeightPsiQuadraticResponseCapacityWithBudget_to_descent](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/pinnedprimeweightpsiquadraticresponsecapacitywithbudget-to-descent--cc6348b7e5a62708605ae0ab.md) | 385 | `result-track:cc6348b7e5a62708605ae0ab8a10eee7d12af66a7b8b39dafe3835750015fdba` |
| 22 | `theorem` | [pinnedPrimeWeightPsiQuadraticResponseCapacity_to_twoRecurrences](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/pinnedprimeweightpsiquadraticresponsecapacity-to-tworecurrences--01544662305d4c52e99af7cb.md) | 397 | `result-track:01544662305d4c52e99af7cb501b4af7d5e8e1d46ee5a26b60ee4645e14ca0a2` |
| 23 | `theorem` | [pinnedPrimeWeightPsiQuadraticResponseCapacity_to_descentProgram](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/declarations/pinnedprimeweightpsiquadraticresponsecapacity-to-descentprogram--76980e904d7de6dea1b33d5d.md) | 413 | `result-track:76980e904d7de6dea1b33d5d736935e8d39614b789c59b92e5938eea4791059e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
