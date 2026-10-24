# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ComplexMGF.Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b40a2821163f629b067094724bf5d041fa3f58da",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b40a2821163f629b067094724bf5d041fa3f58da`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.CharacteristicFunction` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Moments.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Moments.IntegrableExpMul` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/complexmgf--90d54dc9de9aa2ac715cc563.md) | 76 | `declaration-track:90d54dc9de9aa2ac715cc56369e8dbd5ae8992f002d6fc3df73a404c1a17e96e` |
| 2 | `lemma` | [complexMGF_undef](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/complexmgf-undef--7bd130c3753e8d53e14972b8.md) | 78 | `result-track:7bd130c3753e8d53e14972b8c933d4b75a2a8d625e17ff4e39c2431abe6df0b8` |
| 3 | `lemma` | [complexMGF_id_map](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/complexmgf-id-map--9e19eef1a25b4ee54b781c43.md) | 84 | `result-track:9e19eef1a25b4ee54b781c436a6c705e8131fdc6c4b76a372a9462ce4687d703` |
| 4 | `lemma` | [complexMGF_congr_identDistrib](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/complexmgf-congr-identdistrib--0dc859cdf83b6ff32b5f2e8d.md) | 90 | `result-track:0dc859cdf83b6ff32b5f2e8d070a949973e7c69cfff8e00a73b8894432b524ca` |
| 5 | `lemma` | [norm_complexMGF_le_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/norm-complexmgf-le-mgf--2a9563489ed623c97fa0c435.md) | 95 | `result-track:2a9563489ed623c97fa0c435f10bd7f2a163d70cc47e1c5daafc94e8757813b9` |
| 6 | `lemma` | [complexMGF_ofReal](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/complexmgf-ofreal--0b16a599899ded99b97934de.md) | 104 | `result-track:0b16a599899ded99b97934decb0c4020b523cc13f05a817a0a81b981cc06882e` |
| 7 | `lemma` | [re_complexMGF_ofReal](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/re-complexmgf-ofreal--185593c9efa3eb75e3fd6e4f.md) | 108 | `result-track:185593c9efa3eb75e3fd6e4f17189335c19b3e47690def144cf511ea870650e6` |
| 8 | `lemma` | [re_complexMGF_ofReal'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/re-complexmgf-ofreal--6f818ec3b8dc877bbbfb55a8.md) | 111 | `result-track:6f818ec3b8dc877bbbfb55a8f7cbb4c5a787740fc4188380635adf95fe25fea1` |
| 9 | `lemma` | [complexMGF_id_mul_I](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/complexmgf-id-mul-i--486716dc8bb74737b64e01a3.md) | 115 | `result-track:486716dc8bb74737b64e01a35d41af0509d0b216c6eccf65acf8f6f170d238dd` |
| 10 | `lemma` | [complexMGF_mul_I](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/complexmgf-mul-i--bf84413a9a4f80b718a88dd2.md) | 121 | `result-track:bf84413a9a4f80b718a88dd253172fd8a86dbab50990e691602ebecdd69ab3b3` |
| 11 | `lemma` | [hasDerivAt_integral_pow_mul_exp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/hasderivat-integral-pow-mul-exp--f1c62bc7a58216cb78c7b0a4.md) | 129 | `result-track:f1c62bc7a58216cb78c7b0a4ba346b0aff3c6689ceda61652dd8547eb8cc3693` |
| 12 | `theorem` | [hasDerivAt_complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/hasderivat-complexmgf--97a742591da7b64f3d65fc82.md) | 175 | `result-track:97a742591da7b64f3d65fc82d5a8a4c12eb80c33986eecab91a1339ed606defc` |
| 13 | `theorem` | [differentiableOn_complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/differentiableon-complexmgf--e62cdfd31a32fcdbf01e7ab3.md) | 183 | `result-track:e62cdfd31a32fcdbf01e7ab30671fd30831085b7b4c3af7c56b2888d40cc65a7` |
| 14 | `theorem` | [analyticOnNhd_complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/analyticonnhd-complexmgf--186fbc6b79883b698a758f55.md) | 190 | `result-track:186fbc6b79883b698a758f55652c14c97d03f35ada3eb8da953ed8c897730352` |
| 15 | `theorem` | [analyticOn_complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/analyticon-complexmgf--bfe89f232ef9eedd187f9c9d.md) | 196 | `result-track:bfe89f232ef9eedd187f9c9ded6d062034c93b7af02243315fb384de0cfc3f10` |
| 16 | `lemma` | [analyticAt_complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/analyticat-complexmgf--a809b74bd19d02377b69638c.md) | 201 | `result-track:a809b74bd19d02377b69638c9fd50f7dfe2c9e3fc26246d7409e80e2009028b8` |
| 17 | `lemma` | [hasDerivAt_iteratedDeriv_complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/hasderivat-iteratedderiv-complexmgf--e064f7999f89296f25ac77b1.md) | 211 | `result-track:e064f7999f89296f25ac77b1267c301a76c7526b91a91539bf22fe218d53e40b` |
| 18 | `lemma` | [iteratedDeriv_complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/iteratedderiv-complexmgf--04aaed6fad95660a2e756150.md) | 228 | `result-track:04aaed6fad95660a2e756150663c3eac27df67c87730138821fbfd1564e0649b` |
| 19 | `lemma` | [integrableExpSet_eq_of_mgf'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/integrableexpset-eq-of-mgf--07e2936bc3905250941fbae5.md) | 247 | `result-track:07e2936bc3905250941fbae560db0d545cf0626acf156ca7d5ec70945e399bc9` |
| 20 | `lemma` | [integrableExpSet_eq_of_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/integrableexpset-eq-of-mgf--0ce0d97e2323f80c7ef86157.md) | 259 | `result-track:0ce0d97e2323f80c7ef86157030eeefa1345b991faa95d1a5f1e139bb11099ab` |
| 21 | `lemma` | [eqOn_complexMGF_of_mgf'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/eqon-complexmgf-of-mgf--e4d3bd1418cf6a068cb51c24.md) | 276 | `result-track:e4d3bd1418cf6a068cb51c249dc0b93a20fb71d534f0e4f4a1b3e78fcff6485e` |
| 22 | `lemma` | [eqOn_complexMGF_of_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/eqon-complexmgf-of-mgf--37c5da5f9085c84041aeb6da.md) | 305 | `result-track:37c5da5f9085c84041aeb6daab50756cd24b5c0452d894a22cfd36bf7ec116a0` |
| 23 | `theorem` | [_root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ComplexMGF.Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.MeasureTheory.Measure.ext_of_complexMGF_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations--bb0979fffe81a8c6a80e0553.md) | 325 | `result-track:bb0979fffe81a8c6a80e0553c8e2758d5389eaac6673ba0dd2290a2c76c3fbc1` |
| 24 | `lemma` | [_root_.GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ComplexMGF.Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.MeasureTheory.Measure.ext_of_complexMGF_id_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant97aa3c2c9dad2682dc72ad487930bae451483235e5b59c158271b0595aedbf95.lean/declarations/root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations--bc31276cb2151ce72a9a75c7.md) | 340 | `result-track:bc31276cb2151ce72a9a75c76a70e7cb9cd6f6a5adb0f5b3aae7135b754bf6e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
