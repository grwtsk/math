# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variant5999776de39d1b3b56394d87b655ab7f0902edd10a13ad477b30e21abb3a5280

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "602445de5f6c87837d069d210a5abcd2c1f3b828",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant5999776de39d1b3b56394d87b655ab7f0902edd10a13ad477b30e21abb3a5280.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5999776de39d1b3b56394d87b655ab7f0902edd10a13ad477b30e21abb3a5280.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5999776de39d1b3b56394d87b655ab7f0902edd10a13ad477b30e21abb3a5280.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `602445de5f6c87837d069d210a5abcd2c1f3b828`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant5999776de39d1b3b56394d87b655ab7f0902edd10a13ad477b30e21abb3a5280.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integral/Variant5999776de39d1b3b56394d87b655ab7f0902edd10a13ad477b30e21abb3a5280.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsFiniteKernel.integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5999776de39d1b3b56394d87b655ab7f0902edd10a13ad477b30e21abb3a5280.lean/declarations/isfinitekernel-integrable--8a4535ea7933dae3fb3671de.md) | 31 | `result-track:8a4535ea7933dae3fb3671de7533952de843c85b098b33f2e8f4b0a470ccae7e` |
| 2 | `lemma` | [IsMarkovKernel.integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5999776de39d1b3b56394d87b655ab7f0902edd10a13ad477b30e21abb3a5280.lean/declarations/ismarkovkernel-integrable--8b9c37565391778182094f84.md) | 40 | `result-track:8b9c37565391778182094f848a88bc391aba33054b838868c98ec9f4698157da` |
| 3 | `lemma` | [integral_congr_ae₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5999776de39d1b3b56394d87b655ab7f0902edd10a13ad477b30e21abb3a5280.lean/declarations/integral-congr-ae--0f7d77b0208062196069276e.md) | 45 | `result-track:0f7d77b0208062196069276ecb75835643806e042d8ac70cd20729076fdc27c7` |
| 4 | `lemma` | [integral_indicator₂](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5999776de39d1b3b56394d87b655ab7f0902edd10a13ad477b30e21abb3a5280.lean/declarations/integral-indicator--a11b96be21849d67b33b99c7.md) | 52 | `result-track:a11b96be21849d67b33b99c746e69dd296dae087dba681a2205f4420c04ccfac` |
| 5 | `theorem` | [integral_deterministic'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5999776de39d1b3b56394d87b655ab7f0902edd10a13ad477b30e21abb3a5280.lean/declarations/integral-deterministic--0dd3ced00787bc1e7f8ac4dc.md) | 60 | `result-track:0dd3ced00787bc1e7f8ac4dc51b6567cc15642e44aac1304d0f60b08f3dd4dd9` |
| 6 | `theorem` | [integral_deterministic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5999776de39d1b3b56394d87b655ab7f0902edd10a13ad477b30e21abb3a5280.lean/declarations/integral-deterministic--fa75f42f7cf0ad45bd254a21.md) | 65 | `result-track:fa75f42f7cf0ad45bd254a216855f211f6cd270e3935ceffe5da916b3aa559a6` |
| 7 | `theorem` | [setIntegral_deterministic'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5999776de39d1b3b56394d87b655ab7f0902edd10a13ad477b30e21abb3a5280.lean/declarations/setintegral-deterministic--e314ab43a2eecaf487efe043.md) | 69 | `result-track:e314ab43a2eecaf487efe043780c833224c685e5e58573d97cfc3758aac43b97` |
| 8 | `theorem` | [setIntegral_deterministic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5999776de39d1b3b56394d87b655ab7f0902edd10a13ad477b30e21abb3a5280.lean/declarations/setintegral-deterministic--f61e6d143601cf79b9b4841d.md) | 75 | `result-track:f61e6d143601cf79b9b4841dc7c10c1bb9a13aa38b31a1d8c60d3ed80c3beabc` |
| 9 | `theorem` | [integral_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5999776de39d1b3b56394d87b655ab7f0902edd10a13ad477b30e21abb3a5280.lean/declarations/integral-const--b90dfccd1716f99226ad5ac4.md) | 85 | `result-track:b90dfccd1716f99226ad5ac4f3a01c5e8a1f88b7647ed52484f848fba5769d4f` |
| 10 | `theorem` | [setIntegral_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5999776de39d1b3b56394d87b655ab7f0902edd10a13ad477b30e21abb3a5280.lean/declarations/setintegral-const--eb45b49c9fc868fd72931af4.md) | 89 | `result-track:eb45b49c9fc868fd72931af45bcdbd0f4ff34618f8bf4d760875f46658041d73` |
| 11 | `theorem` | [integral_restrict](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5999776de39d1b3b56394d87b655ab7f0902edd10a13ad477b30e21abb3a5280.lean/declarations/integral-restrict--21195e8e077cdc7a49e3e81d.md) | 99 | `result-track:21195e8e077cdc7a49e3e81dbcc6c0f5400aad3dcb3fe3dca63a8f2eaf793ec2` |
| 12 | `theorem` | [setIntegral_restrict](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5999776de39d1b3b56394d87b655ab7f0902edd10a13ad477b30e21abb3a5280.lean/declarations/setintegral-restrict--0f05d0a04296c4c7aef2b929.md) | 104 | `result-track:0f05d0a04296c4c7aef2b929b2e1ed96f5eab02cd0e11db6645cda879685598f` |
| 13 | `theorem` | [integral_piecewise](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5999776de39d1b3b56394d87b655ab7f0902edd10a13ad477b30e21abb3a5280.lean/declarations/integral-piecewise--145598339211b827b6d39099.md) | 114 | `result-track:145598339211b827b6d390994279316b85d80e0aed84d257dd7b80e1b0a3ac52` |
| 14 | `theorem` | [setIntegral_piecewise](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant5999776de39d1b3b56394d87b655ab7f0902edd10a13ad477b30e21abb3a5280.lean/declarations/setintegral-piecewise--51e83069cc6b64cdbbd3dccf.md) | 118 | `result-track:51e83069cc6b64cdbbd3dccf370b600eafc5461308affe6be6fef0f6498699ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
