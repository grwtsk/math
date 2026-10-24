# Verification target: GRWTSK.Analysis.TestFunctions.PolynomialBumpSecondEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85eb665c4da2513bf4ea2c0e6d3250494163047e",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/index.md) · [Full source](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85eb665c4da2513bf4ea2c0e6d3250494163047e`.

Source path: `GRWTSK/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Calculus.PolynomialBumpDerivativeEnergy`](../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpDerivativeEnergy.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitFourth](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/unitfourth--a842a2204d29af6971ace665.md) | 31 | `declaration-track:a842a2204d29af6971ace66518381e1b921b6ae7e89b14a84626a9f8caa8c0d6` |
| 2 | `def` | [fourthInterior](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/fourthinterior--b922b8e96e20a8eaf2ef4cab.md) | 34 | `declaration-track:b922b8e96e20a8eaf2ef4cabc30804b5a8489e86a1fa37d3a1ae23e35cb2456a` |
| 3 | `def` | [normalizedSecondInterior](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/normalizedsecondinterior--00d739c0a597249cec4bdd9e.md) | 38 | `declaration-track:00d739c0a597249cec4bdd9e6a92bc3eaaa0ca991f012f134587386c7932da50` |
| 4 | `def` | [secondRepresentative](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/secondrepresentative--cc5de0cca0f53933c3b440c3.md) | 43 | `declaration-track:cc5de0cca0f53933c3b440c35617503fb7591e3a978256f702c0ef8c3e3eb6ae` |
| 5 | `theorem` | [thirdInterior_hasDerivAt](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/thirdinterior-hasderivat--f8cbdf352781717a9f594be4.md) | 47 | `result-track:f8cbdf352781717a9f594be462aadbc47cd33671d32b1f02643d2375cd3f7ada` |
| 6 | `theorem` | [normalizedInteriorDerivative_hasDerivAt](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/normalizedinteriorderivative-hasderivat--157be03161b3222be2160834.md) | 58 | `result-track:157be03161b3222be2160834f9f5284179aee5163b856318bf925ca0fe32f955` |
| 7 | `theorem` | [actual_first_derivative_eq_indicator](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/actual-first-derivative-eq-indicator--6b91f8f0155f300fa1384fda.md) | 64 | `result-track:6b91f8f0155f300fa1384fda5828cc989ba373dac6bf8a391d4ba8a5f33ac198` |
| 8 | `theorem` | [actual_second_derivative_eq_off_endpoints](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/actual-second-derivative-eq-off-endpoints--3229f9fe27a05da84927d069.md) | 73 | `result-track:3229f9fe27a05da84927d0698ecaf98014bdea931565f84776af7ebd46ab1cb1` |
| 9 | `theorem` | [actual_second_derivative_ae_eq](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/actual-second-derivative-ae-eq--f8a3d104bcf10975401401cb.md) | 98 | `result-track:f8a3d104bcf10975401401cbcdad8634fceae0fb8b35b37b1efdc4195cdd018d` |
| 10 | `theorem` | [unitFourth_square_integral](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/unitfourth-square-integral--4825bd1f60aa1900d5c46ec1.md) | 105 | `result-track:4825bd1f60aa1900d5c46ec13dc0039ac368d4d59f2528ebae4c4f5ce57abfe9` |
| 11 | `theorem` | [unitFourth_mul_second_integral](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/unitfourth-mul-second-integral--bf97baf8816a716b563d7c16.md) | 120 | `result-track:bf97baf8816a716b563d7c166ed42141c806210c01305bff31c1951dab9807da` |
| 12 | `theorem` | [unit_second_energy](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/unit-second-energy--d01854f49075980a069d9c26.md) | 135 | `result-track:d01854f49075980a069d9c26db1d61b60129b0b89a7cb91d80d70eb07f6525f8` |
| 13 | `theorem` | [secondRepresentative_square_integrable](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/secondrepresentative-square-integrable--ef95d6ecdabe7eb4e393e2bb.md) | 153 | `result-track:ef95d6ecdabe7eb4e393e2bb912b1a42ad87671bfb8262d2cba8a3afc6735d03` |
| 14 | `theorem` | [actual_second_derivative_square_integrable](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/actual-second-derivative-square-integrable--4f6825a10c9b803ba1569f76.md) | 166 | `result-track:4f6825a10c9b803ba1569f76e6f6780b17aab14d1e723a837153cb021bb1774e` |
| 15 | `theorem` | [normalizedSecondInterior_square](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/normalizedsecondinterior-square--0cee58de63d9fccfbc03f1f9.md) | 173 | `result-track:0cee58de63d9fccfbc03f1f97ce9c231bbbb57558500ac345251f272f309f572` |
| 16 | `theorem` | [actual_second_energy_integral](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/actual-second-energy-integral--0d420ec9909fbe58b392bbf2.md) | 189 | `result-track:0d420ec9909fbe58b392bbf220038ce3b82e1ade2a33396f2e54e25b63be3ceb` |
| 17 | `def` | [denominator](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/denominator--d2ce27fea0d143c7c321e72d.md) | 213 | `declaration-track:d2ce27fea0d143c7c321e72ddf096ad71ed2b569c7d8b198b3d0d29a22c16eb2` |
| 18 | `def` | [numerator](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/numerator--7d8c8dc8236511c1959bc5cf.md) | 216 | `declaration-track:7d8c8dc8236511c1959bc5cf149ed9579591b4856869d03c42087c072f437232` |
| 19 | `def` | [squaredCoefficient](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/squaredcoefficient--bdccef163cf47a8e6995adc0.md) | 219 | `declaration-track:bdccef163cf47a8e6995adc06831ae86144151f203ab8383145785f21a034aa7` |
| 20 | `theorem` | [actual_second_energy_eq](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/actual-second-energy-eq--f02f03395ef9138ee4a6f7cc.md) | 222 | `result-track:f02f03395ef9138ee4a6f7cc1a46db97bd6b0dc252cdb18ea90ab7bea0bc594d` |
| 21 | `theorem` | [denominator_pos](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/denominator-pos--273ae31499736e3c2075cb0d.md) | 231 | `result-track:273ae31499736e3c2075cb0defd95542a3bf2b4a1e246db560e6bed2a883fc4b` |
| 22 | `theorem` | [exact_coefficient_gap](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/exact-coefficient-gap--2d45d54fe9a81717baa2c328.md) | 236 | `result-track:2d45d54fe9a81717baa2c32829d152967367fbe77d77e71998792d3f40391a01` |
| 23 | `theorem` | [exact_ratio_upper_bound](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/exact-ratio-upper-bound--620d601283172268208f221e.md) | 243 | `result-track:620d601283172268208f221e1a941ed0d37ea9d93d890d7aa40b4891158c46df` |
| 24 | `theorem` | [actual_second_energy_upper](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/actual-second-energy-upper--b551d97c6c98662b6f8b53dd.md) | 254 | `result-track:b551d97c6c98662b6f8b53dddaf16d063d4b131bbaf16085c9a8c8be3da5f79a` |
| 25 | `theorem` | [squaredCoefficient_lt_815](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/squaredcoefficient-lt-815--af0e49d71a2ff9bf412156e3.md) | 262 | `result-track:af0e49d71a2ff9bf412156e3446ae8cf89fe61ba65912ec313b36570ee3bd2b6` |
| 26 | `theorem` | [actual_second_energy_lt_twenty_nine_sq](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/actual-second-energy-lt-twenty-nine-sq--8bb0a70a465ca5e39d2c02a4.md) | 266 | `result-track:8bb0a70a465ca5e39d2c02a4ae2f7fce50c520c86317ee3587d81fecbb67246a` |
| 27 | `theorem` | [actual_first_energy_lt_twenty_two](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/actual-first-energy-lt-twenty-two--a3b8268af18fd21fc3e1760d.md) | 272 | `result-track:a3b8268af18fd21fc3e1760d229c1c05483ce1104ad9ebd01133162e01dc317f` |
| 28 | `theorem` | [first_second_coefficient_gap](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/first-second-coefficient-gap--5d00782184af8de72f5b52e7.md) | 277 | `result-track:5d00782184af8de72f5b52e7e7469778e5f142d009d386a684f0431a68547a1b` |
| 29 | `theorem` | [actual_second_energy_unit](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/actual-second-energy-unit--5473bff0844fddefa4a04b41.md) | 282 | `result-track:5473bff0844fddefa4a04b41ba37fbb556df5fcd84919f0154b6f35f03857d70` |
| 30 | `theorem` | [ratio_cross_difference](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/ratio-cross-difference--257c5a2b80d6541d54fc33ab.md) | 290 | `result-track:257c5a2b80d6541d54fc33ab82792d71d934f70bb967a121f6cf4edf466ce7c5` |
| 31 | `theorem` | [ratio_strictMonoOn](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/ratio-strictmonoon--e88a90817db265f8a636a28c.md) | 297 | `result-track:e88a90817db265f8a636a28c53cea0a4690c6b43125d228f2e749abca1289f04` |
| 32 | `theorem` | [actual_second_derivative_memLp](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/actual-second-derivative-memlp--9543d5968528609b46bcdd31.md) | 310 | `result-track:9543d5968528609b46bcdd3197ed231c9c71e3530bf4a16aa71ff87baf17f769` |
| 33 | `theorem` | [actual_first_second_energy_product_lt](../../../../mathematics/Analysis/TestFunctions/PolynomialBumpSecondEnergy.lean/declarations/actual-first-second-energy-product-lt--80e190608a6caa7a75787dc1.md) | 323 | `result-track:80e190608a6caa7a75787dc17689c3cf808127b9ece56d74d3987c5e26ba8632` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
