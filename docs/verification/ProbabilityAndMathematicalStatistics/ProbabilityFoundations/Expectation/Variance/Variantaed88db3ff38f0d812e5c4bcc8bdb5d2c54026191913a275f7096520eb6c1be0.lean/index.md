# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Variance.Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4f85e63a93fe4e2421cb53371e82f97fb09653f",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4f85e63a93fe4e2421cb53371e82f97fb09653f`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Notation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Integration` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evariance](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/evariance--9353481e658b5f320fe24c1e.md) | 53 | `declaration-track:9353481e658b5f320fe24c1e0fd88af290122f2567fb368f3789e99bdb41aed3` |
| 2 | `def` | [variance](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/variance--00be63c5006af6afc471e7fa.md) | 58 | `declaration-track:00be63c5006af6afc471e7fa4ec77005a91bd99c3e501a47184e6563c78275c9` |
| 3 | `theorem` | [evariance_lt_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/evariance-lt-top--47fb380a350eec757c7a1799.md) | 81 | `result-track:47fb380a350eec757c7a17999db624aba0d95d232d5a0385ee7ee810ddc6c600` |
| 4 | `lemma` | [evariance_ne_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/evariance-ne-top--4c4e995aa6ca16c063e6cd1d.md) | 89 | `result-track:4c4e995aa6ca16c063e6cd1d01c36e05fd9f286f746df4cadea4c29cb2b52cc6` |
| 5 | `theorem` | [evariance_eq_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/evariance-eq-top--6fc1c7678ff1835b7f29f387.md) | 92 | `result-track:6fc1c7678ff1835b7f29f387a65b8cfddda5f160ce35b3a414927d8f8728fdaf` |
| 6 | `theorem` | [evariance_lt_top_iff_memLp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/evariance-lt-top-iff-memlp--b59d3d8e03965f226c380a86.md) | 106 | `result-track:b59d3d8e03965f226c380a8619404e177c8865101fbf6c0e21423375b3d35474` |
| 7 | `lemma` | [evariance_eq_top_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/evariance-eq-top-iff--bccd31b0e93ec2f982f9e392.md) | 114 | `result-track:bccd31b0e93ec2f982f9e392dbfc042a25dd4d9c4a72d02c4d4f70e824f90463` |
| 8 | `lemma` | [variance_of_not_memLp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/variance-of-not-memlp--bbae26ad0b751a4db7f3f186.md) | 117 | `result-track:bbae26ad0b751a4db7f3f1861cc2ff8d6d0d8356bcc916ca0eb1bc27a70c650c` |
| 9 | `theorem` | [ofReal_variance](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/ofreal-variance--64659478db221f59c1cb8656.md) | 121 | `result-track:64659478db221f59c1cb8656591fdd65f120aca19b93980359c1e37942c12e70` |
| 10 | `theorem` | [evariance_eq_lintegral_ofReal](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/evariance-eq-lintegral-ofreal--2307ff125380470e0ef4125e.md) | 138 | `result-track:2307ff125380470e0ef4125eb76e7b35a734e9e56ff526e6d29871c8ae660eb8` |
| 11 | `lemma` | [variance_eq_integral](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/variance-eq-integral--af839c7d4becedb72a66159b.md) | 142 | `result-track:af839c7d4becedb72a66159b3020f1fbf368c91360f1012c54af5b5e1b990382` |
| 12 | `lemma` | [variance_of_integral_eq_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/variance-of-integral-eq-zero--0f46c5b615e8339400ed167d.md) | 146 | `result-track:0f46c5b615e8339400ed167ddf3e445c055e29e6766b7d1e6cc000dd4ac29c15` |
| 13 | `theorem` | [evariance_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/evariance-zero--0c699396a9a9a359b6ddd110.md) | 157 | `result-track:0c699396a9a9a359b6ddd110895b6abc9f68c91f1f243d797b02acf9091680b6` |
| 14 | `theorem` | [evariance_eq_zero_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/evariance-eq-zero-iff--38ed0f3cd94945b50a6df2a8.md) | 159 | `result-track:38ed0f3cd94945b50a6df2a8e5119cf759984b05d5f71a8be6dd634d5e4a4783` |
| 15 | `theorem` | [evariance_mul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/evariance-mul--8c269ad4d1d048932339c913.md) | 164 | `result-track:8c269ad4d1d048932339c91391325ce4ce0574e011940fdb5c455aeccb9030f2` |
| 16 | `theorem` | [variance_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/variance-zero--664be40e8c10f9f99dfc7a5b.md) | 172 | `result-track:664be40e8c10f9f99dfc7a5ba07ec3af8e97167d7115ebb2f8071f62509af139` |
| 17 | `theorem` | [variance_nonneg](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/variance-nonneg--2ae6e549abe21e67fb27168b.md) | 175 | `result-track:2ae6e549abe21e67fb27168b8468e5d46abfd2f9b93001ebc0b632f0645c0556` |
| 18 | `theorem` | [variance_mul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/variance-mul--b6c9ed8a2508e757f5ea070e.md) | 178 | `result-track:b6c9ed8a2508e757f5ea070e1b51ca090956f66bec00c785a3c0499c7bc7056d` |
| 19 | `theorem` | [variance_smul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/variance-smul--7c3a8f97277e707923535b01.md) | 183 | `result-track:7c3a8f97277e707923535b01d81c52d969c837cf880390437a203ba632cb9ba0` |
| 20 | `theorem` | [variance_smul'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/variance-smul--56f923e38bd75fca28212e63.md) | 187 | `result-track:56f923e38bd75fca28212e63621269f4da886d301c056d0fbcf24bcfb501c8e6` |
| 21 | `theorem` | [variance_def'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/variance-def--6fcd5fe479da7ef5349b171a.md) | 193 | `result-track:6fcd5fe479da7ef5349b171a90ba0bdfc6e6b2b685fd2de1bece1bd057c79044` |
| 22 | `lemma` | [variance_add_const](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/variance-add-const--8bc84d765d267abb47010e1c.md) | 206 | `result-track:8bc84d765d267abb47010e1c59f752e8044cefc0ac43a3bd0a8a2ae05399591e` |
| 23 | `lemma` | [variance_const_add](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/variance-const-add--c3ca54c828be0fc20fb711e6.md) | 219 | `result-track:c3ca54c828be0fc20fb711e63b80ff3594de795d75f50278ceaefacb013aa8b1` |
| 24 | `lemma` | [variance_fun_neg](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/variance-fun-neg--18358d984e2374dad3233325.md) | 223 | `result-track:18358d984e2374dad32333250d76d77062fec9e511899db95ccb49c25f275541` |
| 25 | `lemma` | [variance_neg](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/variance-neg--0ae39869a955d3e4e8b3b72c.md) | 228 | `result-track:0ae39869a955d3e4e8b3b72c2a843505afa66acdbff55a52323ecd0d35a407ce` |
| 26 | `lemma` | [variance_sub_const](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/variance-sub-const--b5f4c4493696970b936374ad.md) | 230 | `result-track:b5f4c4493696970b936374ad7e6faa86744c7ff57e876a8790de83839cfe8a4f` |
| 27 | `lemma` | [variance_const_sub](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/variance-const-sub--d805afaa854bbb41952909af.md) | 234 | `result-track:d805afaa854bbb41952909af1873b11ff2d517f7e41153ef8cd5c3a9ff9c87ab` |
| 28 | `lemma` | [variance_dirac](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/variance-dirac--86a77b640011cb4dbe59a2a0.md) | 240 | `result-track:86a77b640011cb4dbe59a2a08e2aae9475d4b1f6c37d759ad03177625944760c` |
| 29 | `lemma` | [variance_map](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/variance-map--3e8c75ad11461a15b189425e.md) | 245 | `result-track:3e8c75ad11461a15b189425ecfe4d7af62a48bbbb696d195652c5372b9ce89af` |
| 30 | `lemma` | [variance_id_map](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/variance-id-map--8857bd4fd831be84faebf204.md) | 255 | `result-track:8857bd4fd831be84faebf2049efa0522673b72534b2fcf04955727211f64eec4` |
| 31 | `theorem` | [variance_le_expectation_sq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/variance-le-expectation-sq--187787bf4d98152184e11ac3.md) | 258 | `result-track:187787bf4d98152184e11ac3b7ff33a657817b7e5540c013942aa71e1f340dec` |
| 32 | `theorem` | [evariance_def'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/evariance-def--49584f1b9bfaa7d66a790091.md) | 279 | `result-track:49584f1b9bfaa7d66a7900915c326f0841660a0e069d2f6e93558329a8f8e3e2` |
| 33 | `theorem` | [meas_ge_le_evariance_div_sq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/meas-ge-le-evariance-div-sq--5d049012ad2e227a83ba7b57.md) | 300 | `result-track:5d049012ad2e227a83ba7b57312be674cff915130fcf8c967bb0f8d005fd4089` |
| 34 | `theorem` | [meas_ge_le_variance_div_sq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/meas-ge-le-variance-div-sq--16311623e67c6c75133aef61.md) | 319 | `result-track:16311623e67c6c75133aef61dc1239177dd46027040edbdb898ceec039de881c` |
| 35 | `theorem` | [IndepFun.variance_add](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/indepfun-variance-add--0427cdf8db408c1498cede1c.md) | 329 | `result-track:0427cdf8db408c1498cede1c995eff8f36bbecc0beb84468610c01a5a1ac13d1` |
| 36 | `theorem` | [IndepFun.variance_sum](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/indepfun-variance-sum--2573459afbdd0a1d04bef6d9.md) | 352 | `result-track:2573459afbdd0a1d04bef6d923e5bf76a68e3897e0dc0d7d19fc8dd0086ad220` |
| 37 | `lemma` | [variance_le_sub_mul_sub](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/variance-le-sub-mul-sub--1b17be580966097af884a432.md) | 416 | `result-track:1b17be580966097af884a4325fc169bfb4d3d8565b093203162838d7f4dbc907` |
| 38 | `lemma` | [variance_le_sq_of_bounded](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean/declarations/variance-le-sq-of-bounded--410136c70f88f94749d20b66.md) | 449 | `result-track:410136c70f88f94749d20b664ca0c6e6f2afe1de7a498a5623869b28d4f3b925` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
