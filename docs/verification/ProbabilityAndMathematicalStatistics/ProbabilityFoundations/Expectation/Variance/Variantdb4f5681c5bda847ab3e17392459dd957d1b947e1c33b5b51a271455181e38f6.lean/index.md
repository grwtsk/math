# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Variance.Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4634dff20022dc3647faa5c663f097a747d0e26d",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4634dff20022dc3647faa5c663f097a747d0e26d`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean.json)

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
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/macro-rules--e6e91fc80374957059b115a0.md) | 46 | `declaration-track:e6e91fc80374957059b115a08039a72ba822f420fea1a189e0f40a4ff98aa98a` |
| 2 | `lemma` | [coe_two](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/coe-two--9b7769ab0f19327058a32da1.md) | 49 | `result-track:9b7769ab0f19327058a32da155e4ec60bb8283d9899461613c4694367fac3d9a` |
| 3 | `def` | [evariance](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/evariance--86bce1fb0f9d1ced76016153.md) | 55 | `declaration-track:86bce1fb0f9d1ced760161532313b85d182e3c5dbcff65c0897b99804bca5be1` |
| 4 | `def` | [variance](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/variance--10fadba212532028e1955c6c.md) | 61 | `declaration-track:10fadba212532028e1955c6c313cdd3cce5f843e23ffb68a655fcdcf5160b861` |
| 5 | `theorem` | [_root_.MeasureTheory.Memℒp.evariance_lt_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/root-measuretheory-mem-p-evariance-lt-top--f22659ece6098829804b2712.md) | 67 | `result-track:f22659ece6098829804b2712e2bd6b9ca55a9fdb3ed6017112d1efe1786e1e67` |
| 6 | `theorem` | [evariance_eq_top](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/evariance-eq-top--46160ac38d8a7e5ae8978d35.md) | 77 | `result-track:46160ac38d8a7e5ae8978d3524763f89c3dd97fdede70a50d31fb94910538d71` |
| 7 | `theorem` | [evariance_lt_top_iff_memℒp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/evariance-lt-top-iff-mem-p--5497840ab358154d3a5e65be.md) | 94 | `result-track:5497840ab358154d3a5e65be256520bb0706e17966d0bdbed34247690d6e19ce` |
| 8 | `theorem` | [_root_.MeasureTheory.Memℒp.ofReal_variance_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/root-measuretheory-mem-p-ofreal-variance-eq--03d9f30dfe1c1e26d71720d7.md) | 102 | `result-track:03d9f30dfe1c1e26d71720d78956d1308ff63461ebb6312faa2d3baa81331b74` |
| 9 | `theorem` | [evariance_eq_lintegral_ofReal](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/evariance-eq-lintegral-ofreal--77734adee7a9fa80e4ca3cf8.md) | 108 | `result-track:77734adee7a9fa80e4ca3cf8e6686d915900bab32e4b81edceed51bb5ab86734` |
| 10 | `theorem` | [_root_.MeasureTheory.Memℒp.variance_eq_of_integral_eq_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/root-measuretheory-mem-p-variance-eq-of-integral-eq-zero--b9c3ec8b82e392e7964dd136.md) | 118 | `result-track:b9c3ec8b82e392e7964dd136a5c13d72ee62df48d2d7572c4485d24509602147` |
| 11 | `theorem` | [_root_.MeasureTheory.Memℒp.variance_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/root-measuretheory-mem-p-variance-eq--5a43b813e4524eb3286e2c26.md) | 131 | `result-track:5a43b813e4524eb3286e2c2608e3a9525c42053d90a3f895342a005f460fd621` |
| 12 | `theorem` | [evariance_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/evariance-zero--5c543ac4704949a6be606b5e.md) | 147 | `result-track:5c543ac4704949a6be606b5e394c6a16ee8c1092d5dcadff0f8e53418d389801` |
| 13 | `theorem` | [evariance_eq_zero_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/evariance-eq-zero-iff--309a4ab15dcad5ea7a8da9fb.md) | 150 | `result-track:309a4ab15dcad5ea7a8da9fba7ae8740ebfbc80b4ac8eeaa0cddab17e1350b52` |
| 14 | `theorem` | [evariance_mul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/evariance-mul--43d11bb882b8f4b27c346a49.md) | 162 | `result-track:43d11bb882b8f4b27c346a4956f4365183f28e41abaee43c3d2a5d63cc978dae` |
| 15 | `theorem` | [variance_zero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/variance-zero--11bfdafe4447aa57ee627b99.md) | 180 | `result-track:11bfdafe4447aa57ee627b99de452a7d2587f03cb391dae55421313e69f437ce` |
| 16 | `theorem` | [variance_nonneg](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/variance-nonneg--0d9491f795d20949f06146a9.md) | 184 | `result-track:0d9491f795d20949f06146a9ab3e0c99e93be18088495d44e2402c13b37b598b` |
| 17 | `theorem` | [variance_mul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/variance-mul--adb63f1b9bcb87deb7570fe3.md) | 188 | `result-track:adb63f1b9bcb87deb7570fe3bd13ea11ec96fb205943989c3c252f1f74123326` |
| 18 | `theorem` | [variance_smul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/variance-smul--4ff03326b87b2ccda47ae007.md) | 194 | `result-track:4ff03326b87b2ccda47ae00730cc3c3e22bdae188ada7e603985903cb60292a4` |
| 19 | `theorem` | [variance_smul'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/variance-smul--9d0731f5ce79fdc77ecd18b0.md) | 199 | `result-track:9d0731f5ce79fdc77ecd18b0a50bf3f0514935858eeb96f61eadddb9510c7584` |
| 20 | `theorem` | [variance_def'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/variance-def--9f5b643b2733891e559dfab6.md) | 210 | `result-track:9f5b643b2733891e559dfab6f4be802f54ee3faed507e2b26c69572eb03342be` |
| 21 | `theorem` | [variance_le_expectation_sq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/variance-le-expectation-sq--0c2bc5b34d906d56aa86e549.md) | 222 | `result-track:0c2bc5b34d906d56aa86e5496790b4f1288a181eabeb4d6ee42961030d09242d` |
| 22 | `theorem` | [evariance_def'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/evariance-def--a247c16e4c06b384191d65fc.md) | 244 | `result-track:a247c16e4c06b384191d65fce6de08103dcb1571dcb745aa0e4ff334d6add031` |
| 23 | `theorem` | [meas_ge_le_evariance_div_sq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/meas-ge-le-evariance-div-sq--6c49e3903755ff8e8f2ad6d5.md) | 265 | `result-track:6c49e3903755ff8e8f2ad6d53fb8f6ccfb25013b6cd136de838a69861623d867` |
| 24 | `theorem` | [meas_ge_le_variance_div_sq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/meas-ge-le-variance-div-sq--da00ed979a5b9c8c9ca03e22.md) | 284 | `result-track:da00ed979a5b9c8c9ca03e224487796170f8d252832de81d2d1eeaead7e1605d` |
| 25 | `theorem` | [IndepFun.variance_add](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/indepfun-variance-add--8a6988b5409741c269918bb8.md) | 295 | `result-track:8a6988b5409741c269918bb86ab8eb9a7698d485da627557330ab660b7a3492f` |
| 26 | `theorem` | [IndepFun.variance_sum](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantdb4f5681c5bda847ab3e17392459dd957d1b947e1c33b5b51a271455181e38f6.lean/declarations/indepfun-variance-sum--48f05ce5bc490c8e98e7ed8b.md) | 319 | `result-track:48f05ce5bc490c8e98e7ed8b5c8bf186ef0e789bd60fe63dff948300e05befcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
