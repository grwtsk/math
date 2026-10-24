# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceAttempt8.Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65a2a0a9556705a9b6cadea17e53e93624a0191a",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65a2a0a9556705a9b6cadea17e53e93624a0191a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [P](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/p--15b925d747b9fd5ad6945a3e.md) | 23 | `declaration-track:15b925d747b9fd5ad6945a3e2919d4950648aa6ef88ad6b4ce04166b7b0c09d1` |
| 2 | `abbrev` | [a](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/a--f5f9795352d366861e9c07f8.md) | 24 | `declaration-track:f5f9795352d366861e9c07f8332132219c0f2c8ee873f36b088b1c670341020e` |
| 3 | `def` | [firstTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/firstterm--d7ab7cc2722b63c8969cdf82.md) | 26 | `declaration-track:d7ab7cc2722b63c8969cdf820b60bdcc13d5abd760988238317addebaafc5931` |
| 4 | `def` | [secondTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/secondterm--2fb1e71472e37a09552ebf4f.md) | 28 | `declaration-track:2fb1e71472e37a09552ebf4fb0a8282453cd11fb46c55e850fd6b549b38be24c` |
| 5 | `def` | [firstSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/firstseries--24adca481eb360c9c6d1e121.md) | 30 | `declaration-track:24adca481eb360c9c6d1e121a811731530876ef7e94726d9d34949e217bb79fa` |
| 6 | `def` | [secondSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/secondseries--b0424ad662b5729780a0d4e7.md) | 32 | `declaration-track:b0424ad662b5729780a0d4e731498aae55a0b80884b7851772f8a4b99361ab02` |
| 7 | `def` | [weight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/weight--6ebaf7add780c018172ed419.md) | 34 | `declaration-track:6ebaf7add780c018172ed4195da1ae6766e9c424c82c158bee4c1e26389afaec` |
| 8 | `theorem` | [weight_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/weight-eq--f5be91795fb65f41b5434e4f.md) | 36 | `result-track:f5be91795fb65f41b5434e4fee61d5fc7adeed17e8a49b857c1feca4bff720a7` |
| 9 | `theorem` | [weight_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/weight-summable--41c4516464b8a8ce01f84c69.md) | 41 | `result-track:41c4516464b8a8ce01f84c69f7c6cd3cebb4da1d1e7f361f2c2686787bb1d4ec` |
| 10 | `theorem` | [pairedTerm_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/pairedterm-hasderivat--32bbf9d5d16e33886605586f.md) | 46 | `result-track:32bbf9d5d16e33886605586f8fabc062f156bfdcc055a563779658e36c33281e` |
| 11 | `theorem` | [firstTerm_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/firstterm-hasderivat--1414eeb09ac7724a0bb23c3b.md) | 63 | `result-track:1414eeb09ac7724a0bb23c3bc34b8dc9042681b33007b9cebc50193930fac77b` |
| 12 | `def` | [lowerCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/lowercoefficient--4a7bf6673598a895f0444dec.md) | 81 | `declaration-track:4a7bf6673598a895f0444decce4dfa88ba30bfc37ddee67b103f349b425c9389` |
| 13 | `theorem` | [lowerCoefficient_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/lowercoefficient-pos--d6f46a533e0a112bd82f4b38.md) | 83 | `result-track:d6f46a533e0a112bd82f4b38252899bf5acff9575114896b453ee5826a4c15d2` |
| 14 | `theorem` | [rate_lower](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/rate-lower--6e54230ec6c5a4bbd150c5a1.md) | 86 | `result-track:6e54230ec6c5a4bbd150c5a18ad9c7a37440b387e9a2e81c9c594735ceeb2e36` |
| 15 | `theorem` | [firstTerm_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/firstterm-bound--dec79b1d3fa499211a6a678a.md) | 95 | `result-track:dec79b1d3fa499211a6a678a242138ea278779aac367700dd5995c1e5354d226` |
| 16 | `theorem` | [secondTerm_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/secondterm-bound--e900e32ecedcad9caee77720.md) | 124 | `result-track:e900e32ecedcad9caee77720a8a80581e892381ecf6a437a86eb654614670157` |
| 17 | `theorem` | [firstTerm_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/firstterm-summable--7cd006cca0f3f27d2ea99c5e.md) | 141 | `result-track:7cd006cca0f3f27d2ea99c5ef0265d0793f621eb33dfaccc21b847ee2b3062d8` |
| 18 | `theorem` | [secondTerm_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/secondterm-summable--32e28509783d65bf4099dbd5.md) | 148 | `result-track:32e28509783d65bf4099dbd573d5ee93eeae8c6fffa9eecfc4c66a79146f378c` |
| 19 | `theorem` | [actualProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/actualprofile-hasderivat--2d7b7750526824e209e89f7c.md) | 154 | `result-track:2d7b7750526824e209e89f7c6500374221aa8257a89e000e3caf01873a4a3d13` |
| 20 | `theorem` | [actualProfile_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/actualprofile-deriv--637d173d4fca15cbe9a74986.md) | 169 | `result-track:637d173d4fca15cbe9a749867b5f75a4d0a8979ba90eba868285d52502ba03c9` |
| 21 | `theorem` | [firstSeries_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/firstseries-hasderivat--b53dec6ad609ca38d3ccb8b5.md) | 172 | `result-track:b53dec6ad609ca38d3ccb8b579c8d253d29fe1a723196517e07d1e30fdd2e38d` |
| 22 | `theorem` | [actualProfile_second_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/actualprofile-second-hasderivat--61c4f8ced79d2b17c1b84d5d.md) | 184 | `result-track:61c4f8ced79d2b17c1b84d5deef9de0f86885f9a5bb51006225f8875b2ed43c4` |
| 23 | `theorem` | [actualProfile_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/actualprofile-second-deriv--99a35d6668b29dcd97ea514a.md) | 190 | `result-track:99a35d6668b29dcd97ea514aaaca59c13fa43bca3777e3dd0d790e79c9973fb9` |
| 24 | `theorem` | [secondTerm_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/secondterm-nonneg--b84a63930b6d0fba80e43c2a.md) | 194 | `result-track:b84a63930b6d0fba80e43c2a2164ca7256660ae3a99afea7aa50334558dcf219` |
| 25 | `theorem` | [exponential_firstMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/exponential-firstmoment-integrable--5e4aa55a734b74f5a9b61ab0.md) | 198 | `result-track:5e4aa55a734b74f5a9b61ab0bc844f6872078a5dce120b6fd31ad6e6b1c21ed9` |
| 26 | `theorem` | [exponential_firstMoment_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/exponential-firstmoment-integral--388cff4364d2c91912d46ce4.md) | 211 | `result-track:388cff4364d2c91912d46ce43c8c33ac207919c5d8cc9e33de5124962b5e81a1` |
| 27 | `def` | [momentTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/momentterm--b0dae896e9ba2c80f94c4337.md) | 219 | `declaration-track:b0dae896e9ba2c80f94c4337e3eab2b3ad6c17b8e280e44b470fbd7be6f2e1e8` |
| 28 | `def` | [curvatureKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/curvaturekernel--c0a25e2d6f840bf4e161071f.md) | 221 | `declaration-track:c0a25e2d6f840bf4e161071f30bda898a3568d5aad7ce42b343d83cfbd8ea5e1` |
| 29 | `theorem` | [momentTerm_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/momentterm-nonneg--ebde03a772bf761abe536e3f.md) | 223 | `result-track:ebde03a772bf761abe536e3f6f6238b6389d892f78023c464a086ea77b10eeeb` |
| 30 | `theorem` | [momentTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/momentterm-integrable--a7e44019daa8b821c5149b91.md) | 228 | `result-track:a7e44019daa8b821c5149b912e544640d1b2ddf4f3abc5ff7f45abb403c28da7` |
| 31 | `theorem` | [momentTerm_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/momentterm-integral--931ba1ad7a22b5ef46d61c02.md) | 233 | `result-track:931ba1ad7a22b5ef46d61c026894bbb9df71805db4375ee9abd7133a89d40d27` |
| 32 | `theorem` | [momentTerm_hasSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/momentterm-hassum--043d41152b146c9a02a3482b.md) | 238 | `result-track:043d41152b146c9a02a3482b245bf05164f317789df7daf6344b52da2c726ba1` |
| 33 | `theorem` | [curvatureKernel_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/curvaturekernel-continuouson--ef917b64f31602799981610a.md) | 254 | `result-track:ef917b64f31602799981610ad8f809878d8e345d9ec6531fc73835e5a15ff5f9` |
| 34 | `theorem` | [momentTerm_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/momentterm-integral-norm--0aa6630121e1de6876dbd202.md) | 261 | `result-track:0aa6630121e1de6876dbd202c40a7c83b5ce91b12fad00c154a560274ade7d49` |
| 35 | `theorem` | [momentTerm_integral_norm_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/momentterm-integral-norm-summable--5dc6d98185ac87a691c13bfa.md) | 269 | `result-track:5dc6d98185ac87a691c13bfa4e5e451e58c15f03049e0ca7d87a2978a99f6142` |
| 36 | `theorem` | [momentTerm_lintegral_enorm_tsum_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/momentterm-lintegral-enorm-tsum-lt-top--16123ac01a0c3d1be71faea4.md) | 277 | `result-track:16123ac01a0c3d1be71faea403290d8ee31aad298c9cf6d89ae1d72966ad722c` |
| 37 | `theorem` | [curvatureKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/curvaturekernel-integrable--46fd5bd65b35ba8588303128.md) | 289 | `result-track:46fd5bd65b35ba8588303128b9cc18bbdfe945e9b9e7cd0e60496d85a081cb7d` |
| 38 | `theorem` | [secondSeries_eq_curvatureIntegral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/secondseries-eq-curvatureintegral--4413f5a92a8345d85a5f65eb.md) | 303 | `result-track:4413f5a92a8345d85a5f65ebb9523395e5307bb5ce1f076c8143cc1c1518042d` |
| 39 | `theorem` | [actualProfile_second_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/actualprofile-second-integral--526c06c61112e67f018ec647.md) | 314 | `result-track:526c06c61112e67f018ec647ad2419693df484f6214516b1e451451d2782ce8a` |
| 40 | `theorem` | [curvatureKernel_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/curvaturekernel-pos--0bc985e426a27c81bcf485ff.md) | 321 | `result-track:0bc985e426a27c81bcf485ff3f7c96d8e7020ae413374db8a067892a8bab0c9f` |
| 41 | `theorem` | [secondSeries_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/secondseries-pos--d594df50b55634cac6346f66.md) | 326 | `result-track:d594df50b55634cac6346f66fce1b81d6cb248a658384ece8ff411628176a4a9` |
| 42 | `theorem` | [actualGamma_second_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt8/Variant7683a5a7cd6c761dfd0096599e8b763ea1cf5ce57a2f68cc8d5aae69a9ad2576.lean/declarations/actualgamma-second-derivative--604488fe14ec19764d465b91.md) | 333 | `result-track:604488fe14ec19764d465b915b7b3f53d91d7dcd99be41590d97c0e481646fa5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
