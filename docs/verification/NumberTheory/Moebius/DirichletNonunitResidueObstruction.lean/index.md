# Verification target: GRWTSK.NumberTheory.Moebius.DirichletNonunitResidueObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d614e220a6e6f3e050055d416fedd05da87c0955",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/DirichletNonunitResidueObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/DirichletNonunitResidueObstruction.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/DirichletNonunitResidueObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d614e220a6e6f3e050055d416fedd05da87c0955`.

Source path: `GRWTSK/NumberTheory/Moebius/DirichletNonunitResidueObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/DirichletNonunitResidueObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.NaturalScaleSquareModulusCongruenceL1`](../../../../mathematics/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.NumberTheory.DirichletCharacter.Orthogonality` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Units` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualNonunitCongruenceBase_mem](../../../../mathematics/NumberTheory/Moebius/DirichletNonunitResidueObstruction.lean/declarations/actualnonunitcongruencebase-mem--9e75269a5f4e7544940ddbe0.md) | 46 | `result-track:9e75269a5f4e7544940ddbe0bfc6ba3757af13aa765769cb57501905cd4e42c5` |
| 2 | `theorem` | [two_not_isUnit_zmod_four](../../../../mathematics/NumberTheory/Moebius/DirichletNonunitResidueObstruction.lean/declarations/two-not-isunit-zmod-four--5c79d935178ad9ce8c9ac64a.md) | 56 | `result-track:5c79d935178ad9ce8c9ac64a43bbdde0ca0baf5ef7d452a8d2f9a4f658dd8440` |
| 3 | `theorem` | [dirichletCharacter_mod_four_two_eq_zero](../../../../mathematics/NumberTheory/Moebius/DirichletNonunitResidueObstruction.lean/declarations/dirichletcharacter-mod-four-two-eq-zero--c83928c188ff54601644af2e.md) | 64 | `result-track:c83928c188ff54601644af2efe886f3e06a3a79d3fa590fa516d957adcb7b65b` |
| 4 | `theorem` | [moebiusReal_six_for_nonunit_residue_witness](../../../../mathematics/NumberTheory/Moebius/DirichletNonunitResidueObstruction.lean/declarations/moebiusreal-six-for-nonunit-residue-witness--68c5322d21d1b61fe25cbf32.md) | 70 | `result-track:68c5322d21d1b61fe25cbf3268236fd9d6f3333ca4972260563bc6499922a423` |
| 5 | `theorem` | [actualNonunitEndpointProduct_eq_neg_one](../../../../mathematics/NumberTheory/Moebius/DirichletNonunitResidueObstruction.lean/declarations/actualnonunitendpointproduct-eq-neg-one--d39fd860caeeef0b983578fb.md) | 82 | `result-track:d39fd860caeeef0b983578fbbe0e65730acc3161e68e720c0d41003cfe868b62` |
| 6 | `def` | [dirichletCharacterLinearCombinationModFour](../../../../mathematics/NumberTheory/Moebius/DirichletNonunitResidueObstruction.lean/declarations/dirichletcharacterlinearcombinationmodfour--3f9a4583aab0495b0e4e4645.md) | 91 | `declaration-track:3f9a4583aab0495b0e4e4645f55bfbda445c5bd664bca017b8f12221408c1428` |
| 7 | `theorem` | [dirichletCharacterLinearCombinationModFour_two_eq_zero](../../../../mathematics/NumberTheory/Moebius/DirichletNonunitResidueObstruction.lean/declarations/dirichletcharacterlinearcombinationmodfour-two-eq-zero--91b30754602996c7b31962b5.md) | 98 | `result-track:91b30754602996c7b31962b5dfe4c13070c76a09eba7e0b61f906f0eefa8a0ef` |
| 8 | `def` | [residueTwoIndicatorModFour](../../../../mathematics/NumberTheory/Moebius/DirichletNonunitResidueObstruction.lean/declarations/residuetwoindicatormodfour--e631b1621903f56530a424e7.md) | 107 | `declaration-track:e631b1621903f56530a424e7982077c1f95bac70380ff872b34418d9ea8fcca9` |
| 9 | `theorem` | [residueTwoIndicatorModFour_two](../../../../mathematics/NumberTheory/Moebius/DirichletNonunitResidueObstruction.lean/declarations/residuetwoindicatormodfour-two--93b2887a7db45305dfbaeece.md) | 111 | `result-track:93b2887a7db45305dfbaeece54437c1628d4c912babba2c861168d96e3022db2` |
| 10 | `def` | [PureDirichletCharacterResidueTwoRepresentation](../../../../mathematics/NumberTheory/Moebius/DirichletNonunitResidueObstruction.lean/declarations/puredirichletcharacterresiduetworepresentation--8e0c5fb0faf5222884b28a55.md) | 117 | `declaration-track:8e0c5fb0faf5222884b28a5598258cba923de75d0571395fefca563770a0b3cd` |
| 11 | `theorem` | [not_pureDirichletCharacterResidueTwoRepresentation](../../../../mathematics/NumberTheory/Moebius/DirichletNonunitResidueObstruction.lean/declarations/not-puredirichletcharacterresiduetworepresentation--ba6c39d2bbed5a93fad257b8.md) | 125 | `result-track:ba6c39d2bbed5a93fad257b85f8ab0d6859b2ba40bc187c637f95cd33cb6a63f` |
| 12 | `def` | [PureDirichletCharacterReductionRefutedAtScope](../../../../mathematics/NumberTheory/Moebius/DirichletNonunitResidueObstruction.lean/declarations/puredirichletcharacterreductionrefutedatscope--437575edd1802509f476d2f0.md) | 135 | `declaration-track:437575edd1802509f476d2f0e145c038264b054a0e76aa1d9a0e13dc0c920378` |
| 13 | `theorem` | [pureDirichletCharacterReductionRefutedAtScope](../../../../mathematics/NumberTheory/Moebius/DirichletNonunitResidueObstruction.lean/declarations/puredirichletcharacterreductionrefutedatscope--5289be9834416b9322016203.md) | 138 | `result-track:5289be9834416b932201620349ea28953c3a859943cf583eb62a0e6461444237` |
| 14 | `structure` | [NonunitResidueRepairAdapter](../../../../mathematics/NumberTheory/Moebius/DirichletNonunitResidueObstruction.lean/declarations/nonunitresiduerepairadapter--c64001b4aad8c7134a2b9ec3.md) | 144 | `declaration-track:c64001b4aad8c7134a2b9ec376b6bbdfffc1d60b33476825a0aee61cd5b88cfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
