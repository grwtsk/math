# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.GaussianIntegral.Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3038cda35f1c8daaaac127fae8010a711397d216",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3038cda35f1c8daaaac127fae8010a711397d216`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.PolarCoord` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Convex` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.DoubleFactorial` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_neg_mul_rpow_isLittleO_exp_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/exp-neg-mul-rpow-islittleo-exp-neg--4ee47dceaf4142dc3a8765cb.md) | 30 | `result-track:4ee47dceaf4142dc3a8765cb82fee933022b1362fd100f690d9395f712064945` |
| 2 | `theorem` | [exp_neg_mul_sq_isLittleO_exp_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/exp-neg-mul-sq-islittleo-exp-neg--5aded2beff7415f5c3461c0f.md) | 44 | `result-track:5aded2beff7415f5c3461c0fc4ff602edbba8b9f0093f3956807ed42c2ef4cd2` |
| 3 | `theorem` | [rpow_mul_exp_neg_mul_rpow_isLittleO_exp_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/rpow-mul-exp-neg-mul-rpow-islittleo-exp-neg--efda58d3f3841ab2939b90ba.md) | 49 | `result-track:efda58d3f3841ab2939b90ba602b12cea21b61acac658e91e391f018ed33d066` |
| 4 | `theorem` | [rpow_mul_exp_neg_mul_sq_isLittleO_exp_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/rpow-mul-exp-neg-mul-sq-islittleo-exp-neg--8eca9e8c170260fad582ca39.md) | 55 | `result-track:8eca9e8c170260fad582ca3959e1d45be712a0aaf4fc367de77028ba81bfdced` |
| 5 | `theorem` | [integrableOn_rpow_mul_exp_neg_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/integrableon-rpow-mul-exp-neg-rpow--f6d3806026003523294ae689.md) | 60 | `result-track:f6d3806026003523294ae6899961973e4264c9f4f49388fc47b30303c343d598` |
| 6 | `theorem` | [integrableOn_rpow_mul_exp_neg_mul_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/integrableon-rpow-mul-exp-neg-mul-rpow--d9282f8cb275a3d5da102869.md) | 88 | `result-track:d9282f8cb275a3d5da1028693aca6d3fecb11b54515a7b37760ecc03519ef599` |
| 7 | `theorem` | [integrableOn_rpow_mul_exp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/integrableon-rpow-mul-exp-neg-mul-sq--c73f1df84f5433aec67c39f0.md) | 101 | `result-track:c73f1df84f5433aec67c39f01a5f3938eed3a169177e23e0def2dfe8874efe23` |
| 8 | `theorem` | [integrable_rpow_mul_exp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/integrable-rpow-mul-exp-neg-mul-sq--08e58ffd4f06a7148d55a59e.md) | 106 | `result-track:08e58ffd4f06a7148d55a59ecbf15dc5f4842091e8a44f6ba36f85ca2db27b37` |
| 9 | `theorem` | [integrable_exp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/integrable-exp-neg-mul-sq--c791eb53b5824ecc9e713ce4.md) | 125 | `result-track:c791eb53b5824ecc9e713ce44f2fbc67512e0e3748ebcdd0e55e54b63d91c00b` |
| 10 | `theorem` | [integrableOn_Ioi_exp_neg_mul_sq_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/integrableon-ioi-exp-neg-mul-sq-iff--3e407b26cb22cc0f5ded821f.md) | 129 | `result-track:3e407b26cb22cc0f5ded821fd7f14ede7e8b90eee14bbb3893049a8ef11c7a42` |
| 11 | `theorem` | [integrable_exp_neg_mul_sq_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/integrable-exp-neg-mul-sq-iff--a3e17bc30e16a18df120caec.md) | 140 | `result-track:a3e17bc30e16a18df120caec8730400a82190de0cd6ffd76f85a1d8ae70b65dd` |
| 12 | `theorem` | [integrable_mul_exp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/integrable-mul-exp-neg-mul-sq--c8512ef4280a806bd069b2f8.md) | 144 | `result-track:c8512ef4280a806bd069b2f858e1f969f9d0735ff4ffbe97ccae16f97a5c6a46` |
| 13 | `theorem` | [norm_cexp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/norm-cexp-neg-mul-sq--3545a38dc1fee755b97ed5f9.md) | 148 | `result-track:3545a38dc1fee755b97ed5f9c31f901e000a51b14745c33ffaa0c24788b1d72a` |
| 14 | `theorem` | [integrable_cexp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/integrable-cexp-neg-mul-sq--856fba94d1ae2bd4edc75401.md) | 152 | `result-track:856fba94d1ae2bd4edc754012c3ea5ac6a18c4c986a618dd9ba0f6e425285a57` |
| 15 | `theorem` | [integrable_mul_cexp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/integrable-mul-cexp-neg-mul-sq--180d16467b3686962994a5ba.md) | 160 | `result-track:180d16467b3686962994a5bad22959249284fd18b8d8ed731fd519f8b1b3dc66` |
| 16 | `theorem` | [integral_mul_cexp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/integral-mul-cexp-neg-mul-sq--1fdbe477566897e1b57760ce.md) | 169 | `result-track:1fdbe477566897e1b57760cee5d4c39d8c60b7521a7ad14361361e93b24b96a3` |
| 17 | `theorem` | [integral_gaussian_sq_complex](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/integral-gaussian-sq-complex--4ac1c78ceb8d0b0bf5f8af4b.md) | 190 | `result-track:4ac1c78ceb8d0b0bf5f8af4b878f64324faa3509dda7cb31e4abbd42fa41b858` |
| 18 | `theorem` | [integral_gaussian](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/integral-gaussian--1c6b91940c3fb6795c96709b.md) | 221 | `result-track:1c6b91940c3fb6795c96709be56a44b3c259ea6ad16f869a2461a7e4c908a60e` |
| 19 | `theorem` | [continuousAt_gaussian_integral](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/continuousat-gaussian-integral--cbdc28ca82e46d13ad86f446.md) | 234 | `result-track:cbdc28ca82e46d13ad86f446abfdb608a71d1725db5e23c9534712ae9de7f9c4` |
| 20 | `theorem` | [integral_gaussian_complex](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/integral-gaussian-complex--123574023f09aac9b1849416.md) | 253 | `result-track:123574023f09aac9b1849416cd212e1fd116427e08159c6b0131e8a09687d01b` |
| 21 | `theorem` | [integral_gaussian_complex_Ioi](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/integral-gaussian-complex-ioi--79d77cf11f944d29d1fa3c29.md) | 292 | `result-track:79d77cf11f944d29d1fa3c293210d4b4b0d9a6336365ce3416622a3be9c76664` |
| 22 | `theorem` | [integral_gaussian_Ioi](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/integral-gaussian-ioi--54c382c2cc12cdf40f189776.md) | 317 | `result-track:54c382c2cc12cdf40f1897760cdf8868646d9174a746a830422ac43e5204419c` |
| 23 | `theorem` | [Real.Gamma_one_half_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/real-gamma-one-half-eq--cc925e1a8ae5fc18fc252fe4.md) | 332 | `result-track:cc925e1a8ae5fc18fc252fe44736f79d8d06ae84bb71adda371f677f80b7d409` |
| 24 | `theorem` | [Complex.Gamma_one_half_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/complex-gamma-one-half-eq--458068e4a24ec2af9bed6576.md) | 348 | `result-track:458068e4a24ec2af9bed65765bcaede1d5f337881299b0c7a424313e4def24ea` |
| 25 | `lemma` | [Real.Gamma_nat_add_one_add_half](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/real-gamma-nat-add-one-add-half--9f476ba62ed4e22a7ccf2a0c.md) | 356 | `result-track:9f476ba62ed4e22a7ccf2a0c17797bc040ef3ca89590a1cf026db9bfc8c836ed` |
| 26 | `lemma` | [Real.Gamma_nat_add_half](../../../../../mathematics/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/declarations/real-gamma-nat-add-half--8351221d09caee2e9e4d7403.md) | 368 | `result-track:8351221d09caee2e9e4d7403c9c9d0a65d52709fdc57f527ffd7fde3ce2cb2f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
