# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AEEqOfIntegral.Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "352a809775bab07bec7285bf6aa5d2ba94917432",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `352a809775bab07bec7285bf6aa5d2ba94917432`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Continuous` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Dual` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AEEqOfLIntegral` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Lp` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Ring` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ae_eq_zero_of_forall_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/ae-eq-zero-of-forall-inner--df25b0958aa66d5d1e5ab209.md) | 65 | `result-track:df25b0958aa66d5d1e5ab209f6f9191c0478249c96b7d3aaad985ae86038eb5a` |
| 2 | `theorem` | [ae_eq_zero_of_forall_dual_of_isSeparable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/ae-eq-zero-of-forall-dual-of-isseparable--69df648ea73f25bc67a6bea2.md) | 81 | `result-track:69df648ea73f25bc67a6bea2711ad7693d33bee4d9e9b07668c12441ef612f84` |
| 3 | `theorem` | [ae_eq_zero_of_forall_dual](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/ae-eq-zero-of-forall-dual--bee674ebb0cf2be3edc2d534.md) | 115 | `result-track:bee674ebb0cf2be3edc2d534216ab7948983e7f7c995cfee7ef34904c9e7a28e` |
| 4 | `theorem` | [ae_nonneg_of_forall_setIntegral_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/ae-nonneg-of-forall-setintegral-nonneg--bc0eeb7201c77692062de1da.md) | 134 | `result-track:bc0eeb7201c77692062de1da9212afb24a03eb326984fad5510d487de935f558` |
| 5 | `theorem` | [ae_le_of_forall_setIntegral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/ae-le-of-forall-setintegral-le--f245bea1921ca2909f0fae34.md) | 155 | `result-track:f245bea1921ca2909f0fae344eeb31df8845a097ef8bbd5b1870e3b192e3516c` |
| 6 | `theorem` | [ae_nonneg_restrict_of_forall_setIntegral_nonneg_inter](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/ae-nonneg-restrict-of-forall-setintegral-nonneg-inter--2f0488e8af7981b0f56fa7f0.md) | 163 | `result-track:2f0488e8af7981b0f56fa7f0bba0b40dd2be304425e70dca8eef25f6dc9caec3` |
| 7 | `theorem` | [ae_nonneg_of_forall_setIntegral_nonneg_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/ae-nonneg-of-forall-setintegral-nonneg-of-sigmafinite--8fdded98156809749476a876.md) | 172 | `result-track:8fdded98156809749476a876fc38a5b690f55dc5ccf292f951a991de3e8fe69b` |
| 8 | `theorem` | [AEFinStronglyMeasurable.ae_nonneg_of_forall_setIntegral_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/aefinstronglymeasurable-ae-nonneg-of-forall-setintegral-nonneg--24e8d7d51595333ca0553d5d.md) | 183 | `result-track:24e8d7d51595333ca0553d5da90f7a4cb6350af208ae5a786534ba482616f437` |
| 9 | `theorem` | [ae_nonneg_restrict_of_forall_setIntegral_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/ae-nonneg-restrict-of-forall-setintegral-nonneg--f9695597522a268c38d47d0d.md) | 200 | `result-track:f9695597522a268c38d47d0d62bc4a55a95a222a9d8ab2c177c30bd07f0c7248` |
| 10 | `theorem` | [ae_eq_zero_restrict_of_forall_setIntegral_eq_zero_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/ae-eq-zero-restrict-of-forall-setintegral-eq-zero-real--a0771fb310b21b699432ca62.md) | 210 | `result-track:a0771fb310b21b699432ca62df18609e5d6d952c53ed294771a9eaac2d37e289` |
| 11 | `theorem` | [ae_eq_zero_restrict_of_forall_setIntegral_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/ae-eq-zero-restrict-of-forall-setintegral-eq-zero--173c72ecbb0b7dfcbbc48e53.md) | 233 | `result-track:173c72ecbb0b7dfcbbc48e5381d62ec92fbb7c16e5d6feaaa6e61b9f4a4ecf05` |
| 12 | `theorem` | [ae_eq_restrict_of_forall_setIntegral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/ae-eq-restrict-of-forall-setintegral-eq--7a0561f895268b564f6a8633.md) | 247 | `result-track:7a0561f895268b564f6a86339d167b9d2f12cdca84171453089a4c51d3b86da5` |
| 13 | `theorem` | [ae_eq_zero_of_forall_setIntegral_eq_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/ae-eq-zero-of-forall-setintegral-eq-of-sigmafinite--0fd152590ebc9343d8cb648a.md) | 261 | `result-track:0fd152590ebc9343d8cb648ab2ac9ddde0d5c8ced3dd7b2b5a40c968d67bc0fb` |
| 14 | `theorem` | [ae_eq_of_forall_setIntegral_eq_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/ae-eq-of-forall-setintegral-eq-of-sigmafinite--5f9bb9ca759aa2857a18a858.md) | 274 | `result-track:5f9bb9ca759aa2857a18a858c8af093b104a42bb483510923e5666b34e7672d8` |
| 15 | `theorem` | [AEFinStronglyMeasurable.ae_eq_zero_of_forall_setIntegral_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/aefinstronglymeasurable-ae-eq-zero-of-forall-setintegral-eq-zero--c9edb6482911311a64e08d20.md) | 288 | `result-track:c9edb6482911311a64e08d20c1c674c1b3ade95f057a81cfc337e5d4a81cd666` |
| 16 | `theorem` | [AEFinStronglyMeasurable.ae_eq_of_forall_setIntegral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/aefinstronglymeasurable-ae-eq-of-forall-setintegral-eq--fedd8aee66fa4a32eb6b6749.md) | 306 | `result-track:fedd8aee66fa4a32eb6b67495f04a172a8c5e54bef2ff78fb783194d2e3a689b` |
| 17 | `theorem` | [Lp.ae_eq_zero_of_forall_setIntegral_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/lp-ae-eq-zero-of-forall-setintegral-eq-zero--c9955cbdfe81fb1e13fa4a8e.md) | 320 | `result-track:c9955cbdfe81fb1e13fa4a8ec2c7c158982177bd37f646a4c3bd5711075e968b` |
| 18 | `theorem` | [Lp.ae_eq_of_forall_setIntegral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/lp-ae-eq-of-forall-setintegral-eq--84f6f2012c5ff8f423968f8b.md) | 326 | `result-track:84f6f2012c5ff8f423968f8b918950a4845c0c2ec855e0beac68a4a1fb6ce769` |
| 19 | `theorem` | [ae_eq_zero_of_forall_setIntegral_eq_of_finStronglyMeasurable_trim](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/ae-eq-zero-of-forall-setintegral-eq-of-finstronglymeasurable-trim--548319cd271fba1e7dcb1f0b.md) | 335 | `result-track:548319cd271fba1e7dcb1f0b8d204d98ee37f449b8d4a275931512fe887bee0c` |
| 20 | `theorem` | [Integrable.ae_eq_zero_of_forall_setIntegral_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/integrable-ae-eq-zero-of-forall-setintegral-eq-zero--a358b0cf2a814e155895b157.md) | 363 | `result-track:a358b0cf2a814e155895b15708287d276295fd5885b9cf8803b9ddbbdd1e884a` |
| 21 | `theorem` | [Integrable.ae_eq_of_forall_setIntegral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/integrable-ae-eq-of-forall-setintegral-eq--eda65d7d11c4129843422110.md) | 375 | `result-track:eda65d7d11c4129843422110c2553490aecb60144102e7ba791055bd95bc7a09` |
| 22 | `lemma` | [ae_eq_zero_of_forall_setIntegral_isClosed_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/ae-eq-zero-of-forall-setintegral-isclosed-eq-zero--9abf0d7c7321498b97e491d2.md) | 390 | `result-track:9abf0d7c7321498b97e491d2b51193b5a0b7f919a6133d937690b8952a1fb67e` |
| 23 | `lemma` | [ae_eq_zero_of_forall_setIntegral_isCompact_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/ae-eq-zero-of-forall-setintegral-iscompact-eq-zero--8444876a305589c2ec422092.md) | 408 | `result-track:8444876a305589c2ec422092d8ed00997f6bad714288733110f909cb9731cb7d` |
| 24 | `lemma` | [ae_eq_zero_of_forall_setIntegral_isCompact_eq_zero'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantd2c8c6e0c1c79afc94221dacbd42f5f91c6839c9a6a8ff2d006494ac658a6e27.lean/declarations/ae-eq-zero-of-forall-setintegral-iscompact-eq-zero--310d7083ba72419b8112c2f8.md) | 432 | `result-track:310d7083ba72419b8112c2f8e9ebcd4bb3ec66e60354faf8dc82c8a50063f0cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
