# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteFourthCumulant.Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7abb18b94188ed358e9bfc7cd516bf4a564db2a5",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7abb18b94188ed358e9bfc7cd516bf4a564db2a5`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteThirdCumulant` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [covarianceOperator_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/declarations/covarianceoperator-symmetric--ee2f2db219f20f9559691712.md) | 42 | `result-track:ee2f2db219f20f95596917124486c80d28d8f2bb00efd854cd5639ed22029b47` |
| 2 | `def` | [thirdCumulantSummand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/declarations/thirdcumulantsummand--bf1b41a0426ae6211fe504b0.md) | 51 | `declaration-track:bf1b41a0426ae6211fe504b0e1d3c22846f82376022d07c06996b352c6bb6b83` |
| 3 | `def` | [thirdCumulantScalar](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/declarations/thirdcumulantscalar--40dbb15fc5e70cee420413ba.md) | 59 | `declaration-track:40dbb15fc5e70cee420413badec0ad84b976fef5a8c802f58bfd0b80b806584f` |
| 4 | `theorem` | [thirdCumulantScalar_eq_operator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/declarations/thirdcumulantscalar-eq-operator--c0fe781beae17e1fbfa68222.md) | 64 | `result-track:c0fe781beae17e1fbfa682221682dd80f4dba90d45afe93714390920ee483265` |
| 5 | `def` | [rawFourthSummandDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/declarations/rawfourthsummandderivative--b639c3d4e823f33ad13b6e64.md) | 72 | `declaration-track:b639c3d4e823f33ad13b6e64613dec7eb63c97a18af36bae9ee0cab89b24b9e5` |
| 6 | `theorem` | [hasFDerivAt_thirdCumulantSummand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/declarations/hasfderivat-thirdcumulantsummand--b167989cdcef3227876ff47e.md) | 89 | `result-track:b167989cdcef3227876ff47ed5c6d46fab2d9abc2b4ed7828313e5281e395c4e` |
| 7 | `theorem` | [rawFourthSummandDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/declarations/rawfourthsummandderivative-apply--6f8a49e22b240b0600c19ca8.md) | 103 | `result-track:6f8a49e22b240b0600c19ca84c2a13b64ed9d02eddd59a766e98a1b2d9aeb2c0` |
| 8 | `def` | [rawFourthDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/declarations/rawfourthderivative--5340ed00a394baf7a779b085.md) | 131 | `declaration-track:5340ed00a394baf7a779b0855def3f1593cf794c3230abf540b946885734b54c` |
| 9 | `theorem` | [hasFDerivAt_thirdCumulantScalar_raw](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/declarations/hasfderivat-thirdcumulantscalar-raw--e83426813866a8cd1d658953.md) | 136 | `result-track:e83426813866a8cd1d658953c8fb221fa49cd4790f688fbc9dcb8856991a2a63` |
| 10 | `theorem` | [rawFourthDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/declarations/rawfourthderivative-apply--4e6782b4193c95b9ae6d8732.md) | 155 | `result-track:4e6782b4193c95b9ae6d87321d52bc679e50477f17e30f27f2a78838315e5d1d` |
| 11 | `def` | [fourthCentralMomentOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/declarations/fourthcentralmomentoperator--7d3d5a5a7ee599bdc036dbe9.md) | 183 | `declaration-track:7d3d5a5a7ee599bdc036dbe947b753ed959a9e26536841cd410e5ff91560f9b3` |
| 12 | `theorem` | [fourthCentralMomentOperator_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/declarations/fourthcentralmomentoperator-apply--93b929fcfac8c87fcbdd0ba5.md) | 194 | `result-track:93b929fcfac8c87fcbdd0ba500f389f91036b96b3aec172b1c8b9140a39792c9` |
| 13 | `def` | [fourthCumulantCovector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/declarations/fourthcumulantcovector--fc1dcee685091e25fa76f312.md) | 210 | `declaration-track:fc1dcee685091e25fa76f312e037c1339260f0df14fb29659111d6830979472b` |
| 14 | `theorem` | [fourthCumulantCovector_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/declarations/fourthcumulantcovector-apply--f58456311b7d72fd0c9ee2de.md) | 221 | `result-track:f58456311b7d72fd0c9ee2dea90a151b99b17cc426572d24bd892c7d57fc62a0` |
| 15 | `theorem` | [weighted_centered_pair_sum_eq_covariance](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/declarations/weighted-centered-pair-sum-eq-covariance--97d6d8ea869d45155199b59c.md) | 243 | `result-track:97d6d8ea869d45155199b59cc23585812be5a937e093cb6118ce9a12086092b8` |
| 16 | `theorem` | [rawFourthDerivative_eq_fourthCumulantCovector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/declarations/rawfourthderivative-eq-fourthcumulantcovector--82bc84ea671e579d58b86271.md) | 253 | `result-track:82bc84ea671e579d58b862715fe5a39cb784c082eed88f2736a6b256318503f8` |
| 17 | `theorem` | [hasFDerivAt_thirdCumulantScalar](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/declarations/hasfderivat-thirdcumulantscalar--9b9ccc6fb6a629a4c06d69fe.md) | 333 | `result-track:9b9ccc6fb6a629a4c06d69fed56c6cc7d980f6de2262cb63e8f75bf3d25a9875` |
| 18 | `theorem` | [fderiv_thirdCumulantScalar_eq_fourthCumulant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/declarations/fderiv-thirdcumulantscalar-eq-fourthcumulant--b1e89e5c57c8967368da264e.md) | 343 | `result-track:b1e89e5c57c8967368da264ec5d15af19ae564f1fb3b0cf40af9773c1aaa5613` |
| 19 | `theorem` | [fourthCumulant_eq_centeredFourth_sub_pairings](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/declarations/fourthcumulant-eq-centeredfourth-sub-pairings--05ce03a1177de93df935560f.md) | 351 | `result-track:05ce03a1177de93df935560f3ad3de61d30103ccbc241ae35d7e151d11323d2f` |
| 20 | `theorem` | [fourth_fderiv_logPartition_eq_fourthCumulant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantd78b1bde6cc1137e749e83e209406142741062bf48d5248ab40b24529f7ce3ce.lean/declarations/fourth-fderiv-logpartition-eq-fourthcumulant--4a79c6ac8202070d28433120.md) | 372 | `result-track:4a79c6ac8202070d284331202b839f37eb1872920f34efcef3022c7ab40a6e42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
