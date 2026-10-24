# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AEEqOfIntegral.Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dee4a2c2210ad2e5c7eb9648c0eb24de1d1bd33",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dee4a2c2210ad2e5c7eb9648c0eb24de1d1bd33`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Continuous` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Dual` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AEEqOfLIntegral` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Lp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Ring` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ae_eq_zero_of_forall_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/ae-eq-zero-of-forall-inner--9fdfd6c6c6d0966e6d6530bb.md) | 57 | `result-track:9fdfd6c6c6d0966e6d6530bb73760ebd816aa1b1774f0c5b614139ccb8a03b86` |
| 2 | `theorem` | [ae_eq_zero_of_forall_dual_of_isSeparable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/ae-eq-zero-of-forall-dual-of-isseparable--8c46905a37e0de7eeeaeb380.md) | 73 | `result-track:8c46905a37e0de7eeeaeb380e3d118eb9a941a297a89d91d84bd880ff4869187` |
| 3 | `theorem` | [ae_eq_zero_of_forall_dual](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/ae-eq-zero-of-forall-dual--2ab07d2b6b6095b70747371b.md) | 107 | `result-track:2ab07d2b6b6095b70747371b740ecf9a1cef0d67e7e6e01c7a845317a1bf0938` |
| 4 | `theorem` | [ae_nonneg_of_forall_setIntegral_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/ae-nonneg-of-forall-setintegral-nonneg--3374d196ba253f47bd7fc8ba.md) | 126 | `result-track:3374d196ba253f47bd7fc8ba47896db350d28da1b893a521cd51b531d89ec297` |
| 5 | `theorem` | [ae_le_of_forall_setIntegral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/ae-le-of-forall-setintegral-le--500dbdee944411770cf51995.md) | 147 | `result-track:500dbdee944411770cf5199576ba6c329603bf6e64629e135c3779890a3ca749` |
| 6 | `theorem` | [ae_nonneg_restrict_of_forall_setIntegral_nonneg_inter](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/ae-nonneg-restrict-of-forall-setintegral-nonneg-inter--f1a3f0333c2b5c58fbbcce34.md) | 155 | `result-track:f1a3f0333c2b5c58fbbcce348d533eb5cae7ab563bf48f69b470d58ed116918e` |
| 7 | `theorem` | [ae_nonneg_of_forall_setIntegral_nonneg_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/ae-nonneg-of-forall-setintegral-nonneg-of-sigmafinite--28725ca1cca7813fb3932a08.md) | 164 | `result-track:28725ca1cca7813fb3932a08a759a51e5ca614ec8249d6cb92ef0035c671561f` |
| 8 | `theorem` | [AEFinStronglyMeasurable.ae_nonneg_of_forall_setIntegral_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/aefinstronglymeasurable-ae-nonneg-of-forall-setintegral-nonneg--c4c198a96211dab844a6cfd8.md) | 175 | `result-track:c4c198a96211dab844a6cfd87228729717deffaa6b76f054619079f6afe1d2a3` |
| 9 | `theorem` | [ae_nonneg_restrict_of_forall_setIntegral_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/ae-nonneg-restrict-of-forall-setintegral-nonneg--e846c856cca4ecf3cfe2f670.md) | 192 | `result-track:e846c856cca4ecf3cfe2f670f9c9adb642a62b8641ab9619585d2735c55ebac7` |
| 10 | `theorem` | [ae_eq_zero_restrict_of_forall_setIntegral_eq_zero_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/ae-eq-zero-restrict-of-forall-setintegral-eq-zero-real--dd493d48ee7fb4d044d47321.md) | 202 | `result-track:dd493d48ee7fb4d044d473216b6f0b67f59a0d5b0e8a5820f089a5df4061c7ab` |
| 11 | `theorem` | [ae_eq_zero_restrict_of_forall_setIntegral_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/ae-eq-zero-restrict-of-forall-setintegral-eq-zero--40b3ab95dcf88e73cc96b0c5.md) | 225 | `result-track:40b3ab95dcf88e73cc96b0c5bdc6952591f284298e2ee3dcbdc0a5e426474808` |
| 12 | `theorem` | [ae_eq_restrict_of_forall_setIntegral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/ae-eq-restrict-of-forall-setintegral-eq--0dba9346be5915d0a23dcd17.md) | 239 | `result-track:0dba9346be5915d0a23dcd17e037a92e149c1a58a028b7511dad95f9e5837cc6` |
| 13 | `theorem` | [ae_eq_zero_of_forall_setIntegral_eq_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/ae-eq-zero-of-forall-setintegral-eq-of-sigmafinite--3b96bbe926ad6722429b58cb.md) | 253 | `result-track:3b96bbe926ad6722429b58cbd951f1709fc4fdaf46ef14d9df1069e86d63a086` |
| 14 | `theorem` | [ae_eq_of_forall_setIntegral_eq_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/ae-eq-of-forall-setintegral-eq-of-sigmafinite--a2e517a14759bae93fe1bd62.md) | 266 | `result-track:a2e517a14759bae93fe1bd62a3265e435796fdc097be5cf9b0f3a1ac3e16b03e` |
| 15 | `theorem` | [AEFinStronglyMeasurable.ae_eq_zero_of_forall_setIntegral_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/aefinstronglymeasurable-ae-eq-zero-of-forall-setintegral-eq-zero--2adf305841b71114c6713505.md) | 280 | `result-track:2adf305841b71114c6713505fadaca4296ff2a090b3093d855e9326f27aa753d` |
| 16 | `theorem` | [AEFinStronglyMeasurable.ae_eq_of_forall_setIntegral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/aefinstronglymeasurable-ae-eq-of-forall-setintegral-eq--37302d20293a32b9f5222fbd.md) | 298 | `result-track:37302d20293a32b9f5222fbdf9dcc963b6ba380c390b2ad0a900b374d08da827` |
| 17 | `theorem` | [Lp.ae_eq_zero_of_forall_setIntegral_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/lp-ae-eq-zero-of-forall-setintegral-eq-zero--4a75544d1450de6aa66d9d3e.md) | 312 | `result-track:4a75544d1450de6aa66d9d3e38d90d914719dce51aea01c70449906245fb51d5` |
| 18 | `theorem` | [Lp.ae_eq_of_forall_setIntegral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/lp-ae-eq-of-forall-setintegral-eq--6584d8fd7bf856b59df4d55d.md) | 318 | `result-track:6584d8fd7bf856b59df4d55d5cb88b710df8318a0513761554f05198bee81b22` |
| 19 | `theorem` | [ae_eq_zero_of_forall_setIntegral_eq_of_finStronglyMeasurable_trim](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/ae-eq-zero-of-forall-setintegral-eq-of-finstronglymeasurable-trim--feb74092bd0b2893fe72fde7.md) | 327 | `result-track:feb74092bd0b2893fe72fde7d9e200f7dbee4d37ab76c6a36d229460680f3c2d` |
| 20 | `theorem` | [Integrable.ae_eq_zero_of_forall_setIntegral_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/integrable-ae-eq-zero-of-forall-setintegral-eq-zero--c0aff9ac5cf4467499a8093a.md) | 355 | `result-track:c0aff9ac5cf4467499a8093ade03b0a9050b63bbc61b35f2e5c1a423d1829ccc` |
| 21 | `theorem` | [Integrable.ae_eq_of_forall_setIntegral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/integrable-ae-eq-of-forall-setintegral-eq--1e85c583bd80deee77e6fb07.md) | 367 | `result-track:1e85c583bd80deee77e6fb0706c271a4f209154d375de6dca5c5f3a810f68f10` |
| 22 | `lemma` | [ae_eq_zero_of_forall_setIntegral_isClosed_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/ae-eq-zero-of-forall-setintegral-isclosed-eq-zero--fa831d11c3c94e03d7707c3f.md) | 382 | `result-track:fa831d11c3c94e03d7707c3f39a925012c9b090971e467bc2f79fafdc5cbb001` |
| 23 | `lemma` | [ae_eq_zero_of_forall_setIntegral_isCompact_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/ae-eq-zero-of-forall-setintegral-iscompact-eq-zero--dd96c7c488395fa13c21f408.md) | 400 | `result-track:dd96c7c488395fa13c21f4088d1ff42f3b18aef79aa092e55665e8cb50824ee2` |
| 24 | `lemma` | [ae_eq_zero_of_forall_setIntegral_isCompact_eq_zero'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variantfb1ae8b31d154d12c661ae21c2be9988ebfde6b4eb45a2fa71914d59064b0aee.lean/declarations/ae-eq-zero-of-forall-setintegral-iscompact-eq-zero--ba2b36d76506fe4de28edbea.md) | 424 | `result-track:ba2b36d76506fe4de28edbea45c8cf54b4427cf43c1fdbf4a252d24fe173ac32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
