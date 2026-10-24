# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ComplexMGF.Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab872b36a41de4cb751e597e93520da4afba0494",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab872b36a41de4cb751e597e93520da4afba0494`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.CharacteristicFunction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Moments.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Moments.IntegrableExpMul` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/complexmgf--452bd580eb81f541bad18534.md) | 68 | `declaration-track:452bd580eb81f541bad185342e1c650e2b300e3d4308738d8bb28cee19ecb426` |
| 2 | `lemma` | [complexMGF_undef](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/complexmgf-undef--812c2146596a0d29e45f39e4.md) | 70 | `result-track:812c2146596a0d29e45f39e4f8eb20672e8154d6ef6fe59f971f9fd09b8c4a06` |
| 3 | `lemma` | [complexMGF_id_map](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/complexmgf-id-map--a9937a57c2c44b329db85003.md) | 76 | `result-track:a9937a57c2c44b329db850032c830bed9738b9744e8b253ce683f1ad5e24d2cc` |
| 4 | `lemma` | [complexMGF_congr_identDistrib](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/complexmgf-congr-identdistrib--d77057a0efd293fb0f60d040.md) | 82 | `result-track:d77057a0efd293fb0f60d0406e3a1c3e016ac23ad350558d9cb6598fa05f8bce` |
| 5 | `lemma` | [norm_complexMGF_le_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/norm-complexmgf-le-mgf--ef74bb886fbfbdb3c9532516.md) | 87 | `result-track:ef74bb886fbfbdb3c9532516f828f0adab949210cf499aa9d8d5e355e17e2ec2` |
| 6 | `lemma` | [complexMGF_ofReal](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/complexmgf-ofreal--d84fd5765ff671066410036d.md) | 96 | `result-track:d84fd5765ff671066410036dab2f6ec01074b248d3bbb82822200039ca23cd98` |
| 7 | `lemma` | [re_complexMGF_ofReal](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/re-complexmgf-ofreal--a25869a1b423504b01786456.md) | 100 | `result-track:a25869a1b423504b0178645605774c3fb23d6d78287163fa927f47f027849466` |
| 8 | `lemma` | [re_complexMGF_ofReal'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/re-complexmgf-ofreal--a6e91f004fd94027c6d90cc7.md) | 103 | `result-track:a6e91f004fd94027c6d90cc7bfff37d475ba9d3b2f77df43b272c9e3699d8186` |
| 9 | `lemma` | [complexMGF_id_mul_I](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/complexmgf-id-mul-i--c56f70b5e8ba566c180273a2.md) | 107 | `result-track:c56f70b5e8ba566c180273a297484f291f46397199610d1f1da19f8877395c7b` |
| 10 | `lemma` | [complexMGF_mul_I](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/complexmgf-mul-i--4759f875a4276397c7d9cab4.md) | 113 | `result-track:4759f875a4276397c7d9cab404e040202d9c3a863c2528b482f3399c5c6a05f4` |
| 11 | `lemma` | [hasDerivAt_integral_pow_mul_exp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/hasderivat-integral-pow-mul-exp--c1ec6fe4e39f745655c75cfe.md) | 121 | `result-track:c1ec6fe4e39f745655c75cfed26ed1f212c187772f6b0e8e962e7336252e4ee4` |
| 12 | `theorem` | [hasDerivAt_complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/hasderivat-complexmgf--9034ff5fe8533e1f9a63a53e.md) | 167 | `result-track:9034ff5fe8533e1f9a63a53e54b1bc124622bf02defa1a52b05a84bf8408c890` |
| 13 | `theorem` | [differentiableOn_complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/differentiableon-complexmgf--ec061b071d0aa853d6318936.md) | 175 | `result-track:ec061b071d0aa853d631893629222f4f7ee00f2ea83848397ec9c4766bd68d22` |
| 14 | `theorem` | [analyticOnNhd_complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/analyticonnhd-complexmgf--23f806fdfa60cccd2cc7125b.md) | 182 | `result-track:23f806fdfa60cccd2cc7125b8ae573e251e0b5aea0125f0707cb399979535f24` |
| 15 | `theorem` | [analyticOn_complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/analyticon-complexmgf--5b098f99219f6bc2cdcd3b9e.md) | 188 | `result-track:5b098f99219f6bc2cdcd3b9e6ab30ee98abc06ab2a64a0a2c85070e8df4513e8` |
| 16 | `lemma` | [analyticAt_complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/analyticat-complexmgf--905f259be970e3ad2a8caa5c.md) | 193 | `result-track:905f259be970e3ad2a8caa5cd2ac3ca608b94b907390f856e6ef9bde7ae46599` |
| 17 | `lemma` | [hasDerivAt_iteratedDeriv_complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/hasderivat-iteratedderiv-complexmgf--8714e104070a74ab82e30fd4.md) | 203 | `result-track:8714e104070a74ab82e30fd4abf2b79f4304bad9eadf0971fdc19291f8f288e8` |
| 18 | `lemma` | [iteratedDeriv_complexMGF](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/iteratedderiv-complexmgf--286bfb4bb70c0b9d527b5083.md) | 220 | `result-track:286bfb4bb70c0b9d527b5083f9296413f8f612fa19a4dc868db5a4655d9cc21e` |
| 19 | `lemma` | [integrableExpSet_eq_of_mgf'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/integrableexpset-eq-of-mgf--687e2880b558d1b28e2aa740.md) | 239 | `result-track:687e2880b558d1b28e2aa7409e03e51585637d0d31f3a2e03f1bb3fecc5e4060` |
| 20 | `lemma` | [integrableExpSet_eq_of_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/integrableexpset-eq-of-mgf--fbe29c420bcf938979ff1d06.md) | 251 | `result-track:fbe29c420bcf938979ff1d062fbae6604628542a6a931e1a1c9a2d3c7baf6200` |
| 21 | `lemma` | [eqOn_complexMGF_of_mgf'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/eqon-complexmgf-of-mgf--ae7df6ec1cb6a10991ad9ab9.md) | 268 | `result-track:ae7df6ec1cb6a10991ad9ab9077995dc6dbf41cbc0154104f88f02dcd1bf737c` |
| 22 | `lemma` | [eqOn_complexMGF_of_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/eqon-complexmgf-of-mgf--ee3bb3bdbfad491b15cf74cf.md) | 297 | `result-track:ee3bb3bdbfad491b15cf74cf1b5e0589eb7e532385e85798fac9e17a93bd80fc` |
| 23 | `theorem` | [_root_.MeasureTheory.Measure.ext_of_complexMGF_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/root-measuretheory-measure-ext-of-complexmgf-eq--1e262f38f1f94ccf5923ca66.md) | 317 | `result-track:1e262f38f1f94ccf5923ca669ece3c32a94d7588fa1fd370aabafa70141f69cc` |
| 24 | `lemma` | [_root_.MeasureTheory.Measure.ext_of_complexMGF_id_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ComplexMGF/Variant49ef4f9d7cf3359e06fa19058583ba5076dbd922ff0b9162e5fdb7c313af3d0e.lean/declarations/root-measuretheory-measure-ext-of-complexmgf-id-eq--d5201368f45739890e8a0113.md) | 332 | `result-track:d5201368f45739890e8a01130604cd81b2719b9b51584132762a12123ade1ec0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
