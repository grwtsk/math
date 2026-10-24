# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteFourthCumulant.Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9640606c4deca2edf568c65cb20b9a96bcc50dfe",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9640606c4deca2edf568c65cb20b9a96bcc50dfe`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteThirdCumulant` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [covarianceOperator_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/declarations/covarianceoperator-symmetric--74a6cc0b0ee78130120995d2.md) | 34 | `result-track:74a6cc0b0ee78130120995d2e609a400108a8cfc43fb6a2bf159b13ea6bff256` |
| 2 | `def` | [thirdCumulantSummand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/declarations/thirdcumulantsummand--d4cb8b3d7d2c2a43bca43568.md) | 43 | `declaration-track:d4cb8b3d7d2c2a43bca43568e3742c8225819f168f1d1b2ff8b0f3c59aa48137` |
| 3 | `def` | [thirdCumulantScalar](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/declarations/thirdcumulantscalar--e95bcebc858d60d905654c20.md) | 51 | `declaration-track:e95bcebc858d60d905654c20ab3f56cb90994f5a4ec2b22a67f53d182cb18d7d` |
| 4 | `theorem` | [thirdCumulantScalar_eq_operator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/declarations/thirdcumulantscalar-eq-operator--9809ecbde9d3c3503a4d267b.md) | 56 | `result-track:9809ecbde9d3c3503a4d267bf616a0a3e764f01d709590e995d81d5ff5bf78ff` |
| 5 | `def` | [rawFourthSummandDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/declarations/rawfourthsummandderivative--0efc2e8a1ea4bafa19de78a7.md) | 64 | `declaration-track:0efc2e8a1ea4bafa19de78a773636abf70c8f5af463f9a49c204c27026d783e3` |
| 6 | `theorem` | [hasFDerivAt_thirdCumulantSummand](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/declarations/hasfderivat-thirdcumulantsummand--c340e1e59018cc59f5656f34.md) | 81 | `result-track:c340e1e59018cc59f5656f34fa464031a21d4bdc25ef332474d546639ee13b6f` |
| 7 | `theorem` | [rawFourthSummandDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/declarations/rawfourthsummandderivative-apply--144661baff252ca42b459674.md) | 95 | `result-track:144661baff252ca42b45967454620511b395f355485edd0b9d25d6cf6d46894c` |
| 8 | `def` | [rawFourthDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/declarations/rawfourthderivative--56f961ecd94144ca93aaa5ad.md) | 123 | `declaration-track:56f961ecd94144ca93aaa5adfb74e6ea14dea4a80b1e062c61e11b3dddb70e10` |
| 9 | `theorem` | [hasFDerivAt_thirdCumulantScalar_raw](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/declarations/hasfderivat-thirdcumulantscalar-raw--ddc26e19460ba703c9120c83.md) | 128 | `result-track:ddc26e19460ba703c9120c831cb1da65ecf84a8b47275630b5b7bdf54f2d4d0e` |
| 10 | `theorem` | [rawFourthDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/declarations/rawfourthderivative-apply--70f5dfe9b00ab50789024ec6.md) | 147 | `result-track:70f5dfe9b00ab50789024ec640ca54ed2570d5a214963a30fdcf70c3e8f5b772` |
| 11 | `def` | [fourthCentralMomentOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/declarations/fourthcentralmomentoperator--7d5417b4a39858c61dc42d0e.md) | 175 | `declaration-track:7d5417b4a39858c61dc42d0efc5ca1ce381e64fa5a023d93f39a3037041e8fa3` |
| 12 | `theorem` | [fourthCentralMomentOperator_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/declarations/fourthcentralmomentoperator-apply--ccec83bbc7cef3bd3edd4632.md) | 186 | `result-track:ccec83bbc7cef3bd3edd463266f78c174c06a4b7b9b9b467e1bc0f6604dfa913` |
| 13 | `def` | [fourthCumulantCovector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/declarations/fourthcumulantcovector--75498f58658d3657031993f9.md) | 202 | `declaration-track:75498f58658d3657031993f9e0797428eadcc0bb9ed7e679163dbe4ea3cbbe3d` |
| 14 | `theorem` | [fourthCumulantCovector_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/declarations/fourthcumulantcovector-apply--2493f260e049246147d9370c.md) | 213 | `result-track:2493f260e049246147d9370c0629529beb2a3f203f06bdf7bade3096c0f2f8e8` |
| 15 | `theorem` | [weighted_centered_pair_sum_eq_covariance](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/declarations/weighted-centered-pair-sum-eq-covariance--64395c0e84e52e3519f56312.md) | 235 | `result-track:64395c0e84e52e3519f56312b76e0660d558c1efa0c5919094593715d0d684cc` |
| 16 | `theorem` | [rawFourthDerivative_eq_fourthCumulantCovector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/declarations/rawfourthderivative-eq-fourthcumulantcovector--20e60e600f9eedbcf6896aa3.md) | 245 | `result-track:20e60e600f9eedbcf6896aa3e195c7191d2b94a54dc42affa2143df140833fa7` |
| 17 | `theorem` | [hasFDerivAt_thirdCumulantScalar](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/declarations/hasfderivat-thirdcumulantscalar--48a9b5bc81c5d007dff50ac1.md) | 325 | `result-track:48a9b5bc81c5d007dff50ac17e465460febdf7972733c9f1386fb8c9b25bbe91` |
| 18 | `theorem` | [fderiv_thirdCumulantScalar_eq_fourthCumulant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/declarations/fderiv-thirdcumulantscalar-eq-fourthcumulant--7ec99c8bf52f454937ff255f.md) | 335 | `result-track:7ec99c8bf52f454937ff255fab64a81b54a0101564d7edaf27dd68039a1e974b` |
| 19 | `theorem` | [fourthCumulant_eq_centeredFourth_sub_pairings](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/declarations/fourthcumulant-eq-centeredfourth-sub-pairings--1cb3217a1ee02115aaea3852.md) | 343 | `result-track:1cb3217a1ee02115aaea38523d3a94fc8ba6d8eae218ce8de4c9fa7d9b25411e` |
| 20 | `theorem` | [fourth_fderiv_logPartition_eq_fourthCumulant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteFourthCumulant/Variantb1bf2b2ddff4f0a85ef421186b777ee5f285cadba5e28e3b29b590c5d0f99409.lean/declarations/fourth-fderiv-logpartition-eq-fourthcumulant--3cb35446ddfe92bb04bf61c1.md) | 364 | `result-track:3cb35446ddfe92bb04bf61c1180f0e76dc03c28dcb609d9a0259b78eea9f843b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
