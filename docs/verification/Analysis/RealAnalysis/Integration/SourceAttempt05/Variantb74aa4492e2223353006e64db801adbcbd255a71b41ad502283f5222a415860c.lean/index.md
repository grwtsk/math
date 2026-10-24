# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceAttempt05.Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1c91e488b06ada337a38f851d466959a902a924",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1c91e488b06ada337a38f851d466959a902a924`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/declarations/kernel--8abecd3e487ac6e7cf78e238.md) | 13 | `declaration-track:8abecd3e487ac6e7cf78e238fbf75e38d58e9463677bf3d8b333fea72e417764` |
| 2 | `def` | [secondMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/declarations/secondmomentintegrand--e924e286d49f38d39c03ec79.md) | 14 | `declaration-track:e924e286d49f38d39c03ec7939373a262846b2b5d678dfa2138971eeed0b5d55` |
| 3 | `def` | [majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/declarations/majorant--1e90a07a39b10d71cd69d453.md) | 15 | `declaration-track:1e90a07a39b10d71cd69d453267ff62e83712e814bbdbb2cbbe4c9630eb7062c` |
| 4 | `theorem` | [denominator_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/declarations/denominator-pos--aef53eb83f2060af51cb3e73.md) | 17 | `result-track:aef53eb83f2060af51cb3e7366985215e6009bf1268a33baad6f8c639ff328c7` |
| 5 | `theorem` | [kernel_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/declarations/kernel-nonneg--aff79e6df388ad468d16ee66.md) | 22 | `result-track:aff79e6df388ad468d16ee66e4b78eb0d5dd552a8b5914efe55c8d8bf7e926f3` |
| 6 | `theorem` | [reciprocal_denominator_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/declarations/reciprocal-denominator-bound--9259ccc70ec4bc89ed8b16cc.md) | 25 | `result-track:9259ccc70ec4bc89ed8b16cced0193fda4dce47d9b5b0f2247670319fa563a95` |
| 7 | `theorem` | [secondMoment_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/declarations/secondmoment-bound--fc5a57a2332a1111b26e0593.md) | 37 | `result-track:fc5a57a2332a1111b26e05935d815d54edd1af7af51390e98f648e8625561619` |
| 8 | `theorem` | [polynomial_exp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/declarations/polynomial-exp-integrable--f8d8c28845a9b3e6d601ad22.md) | 49 | `result-track:f8d8c28845a9b3e6d601ad22a31bd38ebf74950e48e795b3d24c3a530031e118` |
| 9 | `theorem` | [polynomial_exp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/declarations/polynomial-exp-integral--8b93400b743b0b1daddaa4db.md) | 58 | `result-track:8b93400b743b0b1daddaa4db6081221e506a21c7efa0115bd0d95c8d58acb12c` |
| 10 | `theorem` | [majorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/declarations/majorant-integrable--13fd5e34c75c228eeb64d39c.md) | 68 | `result-track:13fd5e34c75c228eeb64d39c6238164f6f729e70d5758f65d5bda5c246ef5383` |
| 11 | `theorem` | [majorant_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/declarations/majorant-integral--ce32a1c9698e56155c289b61.md) | 75 | `result-track:ce32a1c9698e56155c289b614ce3d22d7071c860d4688af8252a9c0c2f52acf4` |
| 12 | `theorem` | [secondMoment_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/declarations/secondmoment-measurable--3de9e58356adc3c79f66f7b0.md) | 85 | `result-track:3de9e58356adc3c79f66f7b0b911d7eb983c2eb51c2de8a86b39bc9ddb43f9fb` |
| 13 | `theorem` | [secondMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/declarations/secondmoment-integrable--6486fab0cb081bf6182f00f1.md) | 89 | `result-track:6486fab0cb081bf6182f00f1f7000964f8bd1cd8cf650e3a2298a02e9697399d` |
| 14 | `theorem` | [secondMoment_integral_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/declarations/secondmoment-integral-nonneg--9e6dca8c897e248609f2d4a3.md) | 96 | `result-track:9e6dca8c897e248609f2d4a3863fc9bb5f3a454340313e51751a7e999cb30bfb` |
| 15 | `theorem` | [secondMoment_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/declarations/secondmoment-integral-le--3372356e2a6c7cacd59332f5.md) | 101 | `result-track:3372356e2a6c7cacd59332f5849198b33a6d0247529ea4faadb021ab508ce066` |
| 16 | `def` | [weightedDeficit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/declarations/weighteddeficit--76e35b9ec77e07fad5fbe49f.md) | 107 | `declaration-track:76e35b9ec77e07fad5fbe49f1f2fd4a197675b00596ccfd3dbdf4dc74c5b8f88` |
| 17 | `theorem` | [weightedDeficit_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/declarations/weighteddeficit-measurable--8a24cb0f1aa167f1bf3f2480.md) | 109 | `result-track:8a24cb0f1aa167f1bf3f2480ce1a4ed6bf74341fadad37648522e988f28e922b` |
| 18 | `theorem` | [weightedDeficit_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/declarations/weighteddeficit-bound--85cb909b2a5dffa39ff11b2a.md) | 114 | `result-track:85cb909b2a5dffa39ff11b2a55156ea0d6ee45691ab7f922c3a0063d8a56d17d` |
| 19 | `theorem` | [weightedDeficit_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/declarations/weighteddeficit-integrable--6fb4c302f7b7414d01182afc.md) | 122 | `result-track:6fb4c302f7b7414d01182afc894eb465a8f5676600a62f3e9829ed336122c918` |
| 20 | `theorem` | [weightedDeficit_integral_budget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/declarations/weighteddeficit-integral-budget--086c8da2c077dbdd6803f8e3.md) | 132 | `result-track:086c8da2c077dbdd6803f8e37a6539e3874c36630eaed4fd205f2d201cd6d300` |
| 21 | `theorem` | [gamma_budget_from_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt05/Variantb74aa4492e2223353006e64db801adbcbd255a71b41ad502283f5222a415860c.lean/declarations/gamma-budget-from-identity--2666312d1f65445722e08840.md) | 152 | `result-track:2666312d1f65445722e088408eb1c0dd927b7e4041883ea4b48a32b3ac28d96e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
