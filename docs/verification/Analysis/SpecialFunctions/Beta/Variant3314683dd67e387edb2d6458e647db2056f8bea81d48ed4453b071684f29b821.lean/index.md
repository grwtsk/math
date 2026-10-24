# Verification target: GRWTSK.Analysis.SpecialFunctions.Beta.Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "795b650d48b4382711449f1728e1f1260a5828b3",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `795b650d48b4382711449f1728e1f1260a5828b3`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convolution` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.LogBounds` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.EulerSineProd` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.BohrMollerup` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [betaIntegral](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/betaintegral--3f197720e9ca61b8944844e7.md) | 56 | `declaration-track:3f197720e9ca61b8944844e79eb6ebe8cb2e7de373f6dbef971fcccc3b1a52fd` |
| 2 | `theorem` | [betaIntegral_convergent_left](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/betaintegral-convergent-left--d94de17eb48d29031c437004.md) | 60 | `result-track:d94de17eb48d29031c4370046dd4b5d5ab8852bc5d04500d0cbe7ffc8795a06a` |
| 3 | `theorem` | [betaIntegral_convergent](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/betaintegral-convergent--7c56acec82034b0775ec0573.md) | 76 | `result-track:7c56acec82034b0775ec05736934440309d0f236da54b55bf06dc50d1f4d3436` |
| 4 | `theorem` | [betaIntegral_symm](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/betaintegral-symm--b025f57f9ce605354d4ed2a0.md) | 88 | `result-track:b025f57f9ce605354d4ed2a08b320d5db5a54a5a2e76196a51642707b1226bf9` |
| 5 | `theorem` | [betaIntegral_eval_one_right](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/betaintegral-eval-one-right--a3d4851be23765e48ca86ef9.md) | 99 | `result-track:a3d4851be23765e48ca86ef9df1607e6b3bcde13c42f15c249c4d6af724f77d7` |
| 6 | `theorem` | [betaIntegral_scaled](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/betaintegral-scaled--35320655f684a1a088202a37.md) | 107 | `result-track:35320655f684a1a088202a37a2ddf4818d98f8640d049ceb57a32a9b08c19ce7` |
| 7 | `theorem` | [Gamma_mul_Gamma_eq_betaIntegral](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/gamma-mul-gamma-eq-betaintegral--29b56b0afd5f97f0d9139aca.md) | 128 | `result-track:29b56b0afd5f97f0d9139aca0376542057232eba88437a24ee1c5afa15f4889d` |
| 8 | `theorem` | [betaIntegral_recurrence](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/betaintegral-recurrence--2e6f7e274a47d433e306143c.md) | 146 | `result-track:2e6f7e274a47d433e306143c67976b68cc02af75d922a5a7fef6075641fae987` |
| 9 | `theorem` | [betaIntegral_eval_nat_add_one_right](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/betaintegral-eval-nat-add-one-right--4106095e68173fda2edadc2f.md) | 204 | `result-track:4106095e68173fda2edadc2fe78baac4c9e568a009b22a971f55c4d9f115c325` |
| 10 | `def` | [GammaSeq](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/gammaseq--4987feb3664586f3aa14873d.md) | 233 | `declaration-track:4987feb3664586f3aa14873d0c0635a4e7ae69f1ba209ad1a0bfa4c80ce94524` |
| 11 | `theorem` | [GammaSeq_eq_betaIntegral_of_re_pos](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/gammaseq-eq-betaintegral-of-re-pos--5965dc584a90afc758b96e0e.md) | 236 | `result-track:5965dc584a90afc758b96e0ef8b7c31d9b4c8d0a8dfa8250d6a56b7398d7fcb0` |
| 12 | `theorem` | [GammaSeq_add_one_left](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/gammaseq-add-one-left--3e201ab69bb5ab5e4c569cb0.md) | 240 | `result-track:3e201ab69bb5ab5e4c569cb08031c9bc07fc3c4dc2b22c343291eeac98a725ba` |
| 13 | `theorem` | [GammaSeq_eq_approx_Gamma_integral](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/gammaseq-eq-approx-gamma-integral--5b53ffaaceb966ddcb164e66.md) | 252 | `result-track:5b53ffaaceb966ddcb164e66ff10c78877221999d2753eabe560b08756e33410` |
| 14 | `theorem` | [approx_Gamma_integral_tendsto_Gamma_integral](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/approx-gamma-integral-tendsto-gamma-integral--d2442c63c3b580d15c41270d.md) | 277 | `result-track:d2442c63c3b580d15c41270d1f4232aff99465cf508c5b7219913461be175b42` |
| 15 | `theorem` | [GammaSeq_tendsto_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/gammaseq-tendsto-gamma--c6ad49b0ee95520d9c245d8d.md) | 336 | `result-track:c6ad49b0ee95520d9c245d8d30638567c49919c658661f8ed06ac881ffef0e27` |
| 16 | `theorem` | [GammaSeq_mul](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/gammaseq-mul--b38c7a050390716ce678d6e7.md) | 378 | `result-track:b38c7a050390716ce678d6e75db3d5851a92b297a7ee20e530f0a39f29a6483e` |
| 17 | `theorem` | [Gamma_mul_Gamma_one_sub](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/gamma-mul-gamma-one-sub--a923b65c79b895049c954e57.md) | 402 | `result-track:a923b65c79b895049c954e57edad694372430d30ab14f1674cf23e63fd266911` |
| 18 | `theorem` | [Gamma_ne_zero](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/gamma-ne-zero--36d0646f26ee7b365548d095.md) | 429 | `result-track:36d0646f26ee7b365548d095682bf2060fc9e902962ee98e043d86a09f47125f` |
| 19 | `theorem` | [Gamma_eq_zero_iff](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/gamma-eq-zero-iff--2a26ee7721405f0e32bbd918.md) | 449 | `result-track:2a26ee7721405f0e32bbd9188f6d0b140e6912ac6b16d5361659d9660a3689aa` |
| 20 | `theorem` | [Gamma_ne_zero_of_re_pos](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/gamma-ne-zero-of-re-pos--a441162aa60e5b1dc3417eb9.md) | 455 | `result-track:a441162aa60e5b1dc3417eb9662d3810f64646455a6e69847079ccc6c3352ac8` |
| 21 | `def` | [GammaSeq](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/gammaseq--562e48393a92a42aa6da81b3.md) | 466 | `declaration-track:562e48393a92a42aa6da81b343a09472663c40d7ee99040dafbf6ea097b84bce` |
| 22 | `theorem` | [GammaSeq_tendsto_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/gammaseq-tendsto-gamma--5ac13ced6c1e9db3bf19d8bc.md) | 470 | `result-track:5ac13ced6c1e9db3bf19d8bceecd707456b11caa8c24fef317c5c65e618e7f07` |
| 23 | `theorem` | [Gamma_mul_Gamma_one_sub](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/gamma-mul-gamma-one-sub--4a2ff49f6a5cb1f0cfcdc474.md) | 480 | `result-track:4a2ff49f6a5cb1f0cfcdc4746512f50f23c712b6e53785df7aae97d780db90ab` |
| 24 | `theorem` | [one_div_Gamma_eq_self_mul_one_div_Gamma_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/one-div-gamma-eq-self-mul-one-div-gamma-add-one--d9f869d6679607152888d2de.md) | 503 | `result-track:d9f869d6679607152888d2de5b7c41a9d09b384084405be76d647c2f082e1a3d` |
| 25 | `theorem` | [differentiable_one_div_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/differentiable-one-div-gamma--b3dacdb8e101ce9f0ee97cbd.md) | 511 | `result-track:b3dacdb8e101ce9f0ee97cbd33efc4329772a7603ea837e92a0e637cb60e6e29` |
| 26 | `theorem` | [Gamma_mul_Gamma_add_half](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/gamma-mul-gamma-add-half--8bff0f4979be8525c5f22da5.md) | 543 | `result-track:8bff0f4979be8525c5f22da5b6462c0f790afe32832c695f40aaea1cd0f95046` |
| 27 | `theorem` | [Gamma_mul_Gamma_add_half](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/declarations/gamma-mul-gamma-add-half--9456591c69f9047a1488c8a9.md) | 581 | `result-track:9456591c69f9047a1488c8a97c9315c848520427b7561544032e377b0602bd08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
