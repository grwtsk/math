# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateMertensResidual.Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "750554c1d530843e4128c0d953740b524ebdbeca",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `750554c1d530843e4128c0d953740b524ebdbeca`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [negativeSmoothMoment](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/declarations/negativesmoothmoment--16ba9952bfb87c89a5a80775.md) | 40 | `declaration-track:16ba9952bfb87c89a5a8077575ebcf78e92e7eef58a8ec60394da6bf78bb7dcf` |
| 2 | `def` | [initialPositiveMoment](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/declarations/initialpositivemoment--6912638f82743b97ce2600d1.md) | 46 | `declaration-track:6912638f82743b97ce2600d11e6a775cdbdee6e4e885638dcf71c46ce32a3001` |
| 3 | `theorem` | [negativeSmoothMoment_upper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/declarations/negativesmoothmoment-upper--7eb13face2350c3f66b30995.md) | 52 | `result-track:7eb13face2350c3f66b30995f294df770b1ebb6a938c7f4825511999e7fd4705` |
| 4 | `theorem` | [negativeSmoothMoment_lower](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/declarations/negativesmoothmoment-lower--5a57abf9fd8acecf37edd8f2.md) | 96 | `result-track:5a57abf9fd8acecf37edd8f284e9fdeaa1d908d74b4530d19519a3862e2f650a` |
| 5 | `theorem` | [negativeSmoothMoment_abs_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/declarations/negativesmoothmoment-abs-le--8bec25e64e219a1e25729d72.md) | 104 | `result-track:8bec25e64e219a1e25729d72ca877ee927121af7771b351358f7a97606dfc683` |
| 6 | `theorem` | [initialPositiveMoment_upper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/declarations/initialpositivemoment-upper--6a0787661871d98b0957fdff.md) | 113 | `result-track:6a0787661871d98b0957fdff3c41cc32d3c4035e89ba7ace5d3c7572be9e6c93` |
| 7 | `theorem` | [initialPositiveMoment_lower](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/declarations/initialpositivemoment-lower--b8b19011a11dffb7d76416b7.md) | 162 | `result-track:b8b19011a11dffb7d76416b7973f484b9a27e6a709998d037dc8a62a7eef3428` |
| 8 | `theorem` | [initialPositiveMoment_abs_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/declarations/initialpositivemoment-abs-le--538bbac9a6e4ef773a7d5981.md) | 171 | `result-track:538bbac9a6e4ef773a7d59814e55009c07128d08d497a5249a61025fc2186971` |
| 9 | `theorem` | [smoothMoment_eq_neg_negative_sub_initial](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/declarations/smoothmoment-eq-neg-negative-sub-initial--5519b312b3787c59b1822bbb.md) | 182 | `result-track:5519b312b3787c59b1822bbb56648fd5ab21becaea62acba5a67a829f5079b77` |
| 10 | `theorem` | [smoothMoment_abs_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/declarations/smoothmoment-abs-le--8f862c49a823236929c81941.md) | 205 | `result-track:8f862c49a823236929c819410a1348ed926d30da57017146b35c1a2d399c2a88` |
| 11 | `def` | [mertensResidual](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/declarations/mertensresidual--7928a4aabec1f49dd1d14422.md) | 231 | `declaration-track:7928a4aabec1f49dd1d1442208ae8f6504d457b18da740e8fa658308b5e59afa` |
| 12 | `theorem` | [mertensResidual_eq_closedPrimeMoment](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/declarations/mertensresidual-eq-closedprimemoment--a52f007d3e1dc369bb055014.md) | 238 | `result-track:a52f007d3e1dc369bb0550140fcd5fd799550ad9b2cffa9b9ba7bcae36f56f50` |
| 13 | `theorem` | [primeSmoothDefect_eq_mertensResidual_sub_smooth](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/declarations/primesmoothdefect-eq-mertensresidual-sub-smooth--e03af2f133d94fa594d0b8a0.md) | 248 | `result-track:e03af2f133d94fa594d0b8a035e337bcf1d8cef079efdc30dc0850fa3d8c523b` |
| 14 | `def` | [MertensResidualTailUpperBound](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/declarations/mertensresidualtailupperbound--c5301c8e8d6bf8afc711b144.md) | 257 | `declaration-track:c5301c8e8d6bf8afc711b144ed1b43fa133cd2d91c9ac94952eeec0f270d1e0f` |
| 15 | `theorem` | [prime_smooth_tail_of_mertens_residual_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/declarations/prime-smooth-tail-of-mertens-residual-tail--904442d23199ca23612868ae.md) | 264 | `result-track:904442d23199ca23612868aeff8c86e7a9dd3930c3e7a745b75b8e0322a16f38` |
| 16 | `theorem` | [mertens_residual_tail_of_prime_smooth_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/declarations/mertens-residual-tail-of-prime-smooth-tail--812cd01596fdbf25e8c8e7fa.md) | 280 | `result-track:812cd01596fdbf25e8c8e7fae44e4da20a54ae0fecf9f8e17d8d2e0f2b81da8c` |
| 17 | `theorem` | [prime_smooth_tail_iff_mertens_residual_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/declarations/prime-smooth-tail-iff-mertens-residual-tail--64bb1a7a1a7431bc30841169.md) | 297 | `result-track:64bb1a7a1a7431bc308411691466695f8cda44fcf94bfbcf7089e82a5438b5c9` |
| 18 | `theorem` | [signed_pairing_tail_iff_mertens_residual_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/declarations/signed-pairing-tail-iff-mertens-residual-tail--54c625cc2883d66f509bc381.md) | 305 | `result-track:54c625cc2883d66f509bc381b8b98c2e74f975426bf8a094eb11084feb9c1ab6` |
| 19 | `theorem` | [estimate_of_mertens_residual_tail](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/declarations/estimate-of-mertens-residual-tail--fcacd4375e161fce742ebaac.md) | 313 | `result-track:fcacd4375e161fce742ebaac49b8b7f8899517dec046bb135cb6fe5ba3f53cb4` |
| 20 | `def` | [MertensResidualCheckpoint](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/declarations/mertensresidualcheckpoint--334772364619cd9809a2f353.md) | 320 | `declaration-track:334772364619cd9809a2f353c930e613dc5f78ed92d73396be46c97904a108cc` |
| 21 | `theorem` | [mertens_residual_checkpoint](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/EstimateMertensResidual/Varianta5e23966cd69d1bcfcc3c1877b5e9dae882801bde1af277052a89c025c66bae0.lean/declarations/mertens-residual-checkpoint--ed3b3b2e57f6132be21a7ec5.md) | 330 | `result-track:ed3b3b2e57f6132be21a7ec514cbc114bbaed5d1f3188d06905e2f0aa227743e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
