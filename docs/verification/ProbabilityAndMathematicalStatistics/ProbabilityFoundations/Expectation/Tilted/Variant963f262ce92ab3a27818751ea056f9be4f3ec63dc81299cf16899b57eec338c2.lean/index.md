# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Tilted.Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3577ff8ea86ca2cb65cb4b1ecd222de57d052e9b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3577ff8ea86ca2cb65cb4b1ecd222de57d052e9b`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Tilted` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Moments.MGFAnalytic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tilted_mul_apply_mgf'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean/declarations/tilted-mul-apply-mgf--654f4a4534d3f2203d98cd68.md) | 40 | `result-track:654f4a4534d3f2203d98cd68bea5cab6d37bf1d12f3d87d63a7f7e0330e6240e` |
| 2 | `lemma` | [tilted_mul_apply_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean/declarations/tilted-mul-apply-mgf--783e6c411a8a31a9237a4701.md) | 44 | `result-track:783e6c411a8a31a9237a470138639b0bca4dabc19a9b1c8c98baeaee9e1a4767` |
| 3 | `lemma` | [tilted_mul_apply_cgf'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean/declarations/tilted-mul-apply-cgf--30782372fe3e5925a6cabe7f.md) | 48 | `result-track:30782372fe3e5925a6cabe7f7afd8e291278c0b79a907490d1f180bb014700d1` |
| 4 | `lemma` | [tilted_mul_apply_cgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean/declarations/tilted-mul-apply-cgf--193c4f816d1911b75604acbb.md) | 55 | `result-track:193c4f816d1911b75604acbb4a7faacf2bd008f20361b9b1e576fa75f60d8a60` |
| 5 | `lemma` | [tilted_mul_apply_eq_ofReal_integral_mgf'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean/declarations/tilted-mul-apply-eq-ofreal-integral-mgf--f483571faaa533ec10e9e08a.md) | 61 | `result-track:f483571faaa533ec10e9e08a79acf5213262071d944f618eb033942b5f5c134c` |
| 6 | `lemma` | [tilted_mul_apply_eq_ofReal_integral_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean/declarations/tilted-mul-apply-eq-ofreal-integral-mgf--5509d50efa86e5e448e97787.md) | 65 | `result-track:5509d50efa86e5e448e97787c74441860f9f481b59c4884299dfa054facbbe23` |
| 7 | `lemma` | [tilted_mul_apply_eq_ofReal_integral_cgf'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean/declarations/tilted-mul-apply-eq-ofreal-integral-cgf--2c1d08f61d1ed24c60e74b00.md) | 69 | `result-track:2c1d08f61d1ed24c60e74b00c74af32cbc958bffd2f95c6ce7639deb9e80e315` |
| 8 | `lemma` | [tilted_mul_apply_eq_ofReal_integral_cgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean/declarations/tilted-mul-apply-eq-ofreal-integral-cgf--975e2b8e463667972c3470d1.md) | 77 | `result-track:975e2b8e463667972c3470d1ae458827bfbe30c6cb697626083a45bb0f73a143` |
| 9 | `lemma` | [setIntegral_tilted_mul_eq_mgf'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean/declarations/setintegral-tilted-mul-eq-mgf--f2a4365d7157788c6aa98935.md) | 93 | `result-track:f2a4365d7157788c6aa989356b501ad0762df2dc128a20b6975d9094738cf364` |
| 10 | `lemma` | [setIntegral_tilted_mul_eq_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean/declarations/setintegral-tilted-mul-eq-mgf--e6507722e59d1363f12c69fb.md) | 97 | `result-track:e6507722e59d1363f12c69fb192344769866bc86d8791ba1dbbc66a139c52abf` |
| 11 | `lemma` | [setIntegral_tilted_mul_eq_cgf'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean/declarations/setintegral-tilted-mul-eq-cgf--cd77d0f68ab7fcdf1165de99.md) | 101 | `result-track:cd77d0f68ab7fcdf1165de99758332b51de654478f05fe18c280a0b6757f47af` |
| 12 | `lemma` | [setIntegral_tilted_mul_eq_cgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean/declarations/setintegral-tilted-mul-eq-cgf--1a13709966031183f9c16262.md) | 108 | `result-track:1a13709966031183f9c162628563f00cf0237954833ac9bfc5177ff42a9039c1` |
| 13 | `lemma` | [integral_tilted_mul_eq_mgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean/declarations/integral-tilted-mul-eq-mgf--1b6a637cea78fe820468b530.md) | 115 | `result-track:1b6a637cea78fe820468b5309276b9911115214d6dec5c1ce5b80079ff6bc28b` |
| 14 | `lemma` | [integral_tilted_mul_eq_cgf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean/declarations/integral-tilted-mul-eq-cgf--2ca1f34d79edd5580c346f51.md) | 119 | `result-track:2ca1f34d79edd5580c346f5179756168a1cc9db1581d03107b0b2afcc80c9e69` |
| 15 | `lemma` | [integral_tilted_mul_self](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean/declarations/integral-tilted-mul-self--64c04f55d07120056aa9dd7f.md) | 128 | `result-track:64c04f55d07120056aa9dd7f98515e51a7d2eacd9452dbf770c157baafe69969` |
| 16 | `lemma` | [memLp_tilted_mul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean/declarations/memlp-tilted-mul--4642facfab28da889861754a.md) | 136 | `result-track:4642facfab28da889861754aac758fa05eeb9a72341decc600158bc0769537a2` |
| 17 | `lemma` | [variance_tilted_mul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Tilted/Variant963f262ce92ab3a27818751ea056f9be4f3ec63dc81299cf16899b57eec338c2.lean/declarations/variance-tilted-mul--997480e587a5f9bbbdf9fa55.md) | 155 | `result-track:997480e587a5f9bbbdf9fa55286c100763fdaaf7ab747b9717965089135184e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
