# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteThirdCumulant.Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "573247fde6c5594b1af8460bdc30671aec4b2743",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `573247fde6c5594b1af8460bdc30671aec4b2743`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteLogAffineSecondDerivative` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [covarianceSlice](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/declarations/covarianceslice--41e73ed18bc60d0d1fb3a4fc.md) | 34 | `declaration-track:41e73ed18bc60d0d1fb3a4fc8af81f6538fb9a0a327126f20e859cf56ba1a683` |
| 2 | `theorem` | [covarianceSlice_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/declarations/covarianceslice-apply--ad19281f6a49296981674b76.md) | 39 | `result-track:ad19281f6a49296981674b76b981afdca366aae60ff2721f01535f0cd2a96078` |
| 3 | `def` | [centeredStatisticDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/declarations/centeredstatisticderivative--fbc199b553a46a12643c4ebc.md) | 46 | `declaration-track:fbc199b553a46a12643c4ebc2d7402c5c3af8bea015be3cad8d5bcaac522553b` |
| 4 | `theorem` | [centeredStatisticDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/declarations/centeredstatisticderivative-apply--6a0acdcf1683f3232b5fb241.md) | 51 | `result-track:6a0acdcf1683f3232b5fb24183458b3be31322e35d095a627faf0e0bbf2dd74f` |
| 5 | `theorem` | [hasFDerivAt_centeredStatistic_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/declarations/hasfderivat-centeredstatistic-apply--8152094877994786f5898beb.md) | 58 | `result-track:8152094877994786f5898beb7602a2cddae3837d7774878b4bc8f1582911e4ac` |
| 6 | `def` | [covarianceSummand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/declarations/covariancesummand--a4dcfdce74260e7d712ced78.md) | 82 | `declaration-track:a4dcfdce74260e7d712ced788623ffb58838ab52ded3d38afeb2231a6f4e0f53` |
| 7 | `def` | [rawThirdSummandDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/declarations/rawthirdsummandderivative--b1192384daeba6be49251943.md) | 89 | `declaration-track:b1192384daeba6be49251943c4cc85b9580165d288235f720800e8dc6ebafc5f` |
| 8 | `theorem` | [hasFDerivAt_covarianceSummand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/declarations/hasfderivat-covariancesummand--95569b3183baca9dc9a6f60a.md) | 100 | `result-track:95569b3183baca9dc9a6f60a356eff08210dd1ca06bcc28ebd19a05302765aea` |
| 9 | `def` | [covarianceScalar](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/declarations/covariancescalar--0497764d4f8c48789ab8fcaa.md) | 113 | `declaration-track:0497764d4f8c48789ab8fcaa75e841a0ba737ed57809f57a521f1d0a1286e8df` |
| 10 | `theorem` | [covarianceScalar_eq_covarianceForm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/declarations/covariancescalar-eq-covarianceform--14a2327aebd8569c27ee5972.md) | 117 | `result-track:14a2327aebd8569c27ee59723119ffb72e745eb2b7dc46a54bb5e305ac1342aa` |
| 11 | `def` | [rawThirdDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/declarations/rawthirdderivative--7940243c9ec3986e30478d7c.md) | 124 | `declaration-track:7940243c9ec3986e30478d7c6d69835fc9af5233beb7369e96283e822050772a` |
| 12 | `theorem` | [hasFDerivAt_covarianceScalar_raw](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/declarations/hasfderivat-covariancescalar-raw--e6178fc7771710dc61949c36.md) | 129 | `result-track:e6178fc7771710dc61949c36f430ae825f1624b0e6375600a0c6645371ebbac3` |
| 13 | `theorem` | [rawThirdSummandDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/declarations/rawthirdsummandderivative-apply--3089726d5e2ffb2e4dd55627.md) | 146 | `result-track:3089726d5e2ffb2e4dd55627c753b851d1554f96108f2e7f5d852b62b7b8ca52` |
| 14 | `theorem` | [rawThirdDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/declarations/rawthirdderivative-apply--245db33bdd81f958b6642c13.md) | 166 | `result-track:245db33bdd81f958b6642c132265762aa8bc518e01c255593b68d87f20306d5b` |
| 15 | `def` | [thirdCumulantOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/declarations/thirdcumulantoperator--f30c278ac8b814fff49cacb9.md) | 187 | `declaration-track:f30c278ac8b814fff49cacb9da9d203c6841d7b0d5fa636e97ba81ba1b508eac` |
| 16 | `theorem` | [thirdCumulantOperator_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/declarations/thirdcumulantoperator-apply--1dcfae9f083b4b2547037036.md) | 197 | `result-track:1dcfae9f083b4b254703703687bf546e0c07be290aab42453797b9f3e5c9ac4d` |
| 17 | `theorem` | [rawThirdDerivative_eq_thirdCumulantOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/declarations/rawthirdderivative-eq-thirdcumulantoperator--ba4c0f0965aec70d83ad3a25.md) | 210 | `result-track:ba4c0f0965aec70d83ad3a25be0900b7c7f7e091775a636c2fcb20e276082c9f` |
| 18 | `theorem` | [hasFDerivAt_covarianceScalar](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/declarations/hasfderivat-covariancescalar--3ec001f8b32b72d329705d19.md) | 225 | `result-track:3ec001f8b32b72d329705d1917106882fdf3716e3682c2d1c6f2031f0fa348fa` |
| 19 | `theorem` | [fderiv_covarianceScalar_eq_thirdCumulant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/declarations/fderiv-covariancescalar-eq-thirdcumulant--194253db3a1756214679245f.md) | 235 | `result-track:194253db3a1756214679245f7c5830be899503d3c121b07c12ff61262d960ae5` |
| 20 | `theorem` | [thirdCumulant_swap_first_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/declarations/thirdcumulant-swap-first-two--68118f73451f069997c3b62c.md) | 242 | `result-track:68118f73451f069997c3b62c27efdc16a754e682a5d02220243a49d8998456cc` |
| 21 | `theorem` | [thirdCumulant_swap_last_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/declarations/thirdcumulant-swap-last-two--3580db258742e9460b7ba800.md) | 253 | `result-track:3580db258742e9460b7ba800af79bcd6361d48b9fa094d4bfd49f8893de977e1` |
| 22 | `theorem` | [third_fderiv_logPartition_eq_thirdCumulant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteThirdCumulant/Variant8e93836da7ca3d4174e11b5004303eb6031765f1d87b56cdfdb41b5ae6fdb60a.lean/declarations/third-fderiv-logpartition-eq-thirdcumulant--43c19673fdd12503b15b6223.md) | 265 | `result-track:43c19673fdd12503b15b62231c7cbeaea922e7297a787e61961396dd5f4eff5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
