# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CondVar.Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c7ae8818202e0ffd910a3b0e7843b728f1d645b",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c7ae8818202e0ffd910a3b0e7843b728f1d645b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.ConditionalExpectation.Real` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Average` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Moments.Variance` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [condVar](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/declarations/condvar--1a1e27d8fdc8997fec5da5d3.md) | 43 | `declaration-track:1a1e27d8fdc8997fec5da5d353ec2e520b172d9a1621f393f80f0fdbb42722ed` |
| 2 | `lemma` | [condVar_of_not_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/declarations/condvar-of-not-le--90d13f0e56bab03d2c8d5b03.md) | 54 | `result-track:90d13f0e56bab03d2c8d5b03c1e9688c28c175544fff9129c26bba6a67e45d78` |
| 3 | `lemma` | [condVar_of_not_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/declarations/condvar-of-not-sigmafinite--9957ad31e3c26c1943e76e3d.md) | 56 | `result-track:9957ad31e3c26c1943e76e3d5467a3b756763a8816eda0340c942e6c87e51b8d` |
| 4 | `lemma` | [condVar_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/declarations/condvar-of-sigmafinite--6430b3c77435784a23e2cb4d.md) | 60 | `result-track:6430b3c77435784a23e2cb4ddc232b77a650c32b2e4a7c17afd04d28e28ec097` |
| 5 | `lemma` | [condVar_of_stronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/declarations/condvar-of-stronglymeasurable--bfe3243ce92c2a9276815ccc.md) | 68 | `result-track:bfe3243ce92c2a9276815ccc1676af4b05323fa33f45a9f9cc78135fe33aead1` |
| 6 | `lemma` | [condVar_of_not_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/declarations/condvar-of-not-integrable--9e87f545ff6890b2ba6c0e4b.md) | 73 | `result-track:9e87f545ff6890b2ba6c0e4b4cc75bb6115522e635feef2c574e762c3f88668b` |
| 7 | `lemma` | [condVar_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/declarations/condvar-zero--b30d4aac802ef442b9c6ba5c.md) | 76 | `result-track:b30d4aac802ef442b9c6ba5cabed720ba8998f9df6aacfafc099a364d0f4ed90` |
| 8 | `lemma` | [condVar_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/declarations/condvar-const--4556c3b147a20b7b29fa0f84.md) | 79 | `result-track:4556c3b147a20b7b29fa0f841f7ac31119e9590d1b668ac36153e77635163051` |
| 9 | `lemma` | [stronglyMeasurable_condVar](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/declarations/stronglymeasurable-condvar--45ba5ebe4c8cce46f7c2df12.md) | 87 | `result-track:45ba5ebe4c8cce46f7c2df12671ef4e789fbafa70f59bfcc8b81f87b40fd4245` |
| 10 | `lemma` | [condVar_congr_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/declarations/condvar-congr-ae--f793af92f4c6a8bee7458942.md) | 90 | `result-track:f793af92f4c6a8bee7458942aa741f13dd627b396f87d8a0eda921c18bd6b063` |
| 11 | `lemma` | [condVar_of_aestronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/declarations/condvar-of-aestronglymeasurable--7e36f9c06a1f73a1c437c06a.md) | 93 | `result-track:7e36f9c06a1f73a1c437c06a0b70c4be5c6f1c528ef0e8f00b726d885e7cfba6` |
| 12 | `lemma` | [integrable_condVar](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/declarations/integrable-condvar--ddadbb2e99592c6c2fdfa07e.md) | 99 | `result-track:ddadbb2e99592c6c2fdfa07e8d04b4af7214bebc280cdf6313b64fb009c5be21` |
| 13 | `lemma` | [setIntegral_condVar](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/declarations/setintegral-condvar--1a10ddeb2c1a4301d124e49c.md) | 103 | `result-track:1a10ddeb2c1a4301d124e49c5022a270251b70117e63baad5f9c88473f310c9a` |
| 14 | `lemma` | [condVar_ae_eq_condExp_sq_sub_sq_condExp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/declarations/condvar-ae-eq-condexp-sq-sub-sq-condexp--bc12a90e13e26c9ed8fbd3d8.md) | 111 | `result-track:bc12a90e13e26c9ed8fbd3d8608517dd3222355e6d49c2422d9be15517e18115` |
| 15 | `lemma` | [condVar_ae_le_condExp_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/declarations/condvar-ae-le-condexp-sq--57d9a310e9da2bba81ef6874.md) | 131 | `result-track:57d9a310e9da2bba81ef68747c6cb71e59bccc72424ee5138351b45abbdb08ff` |
| 16 | `lemma` | [integral_condVar_add_variance_condExp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/declarations/integral-condvar-add-variance-condexp--82308f9337c9aaf46e4e1898.md) | 138 | `result-track:82308f9337c9aaf46e4e1898e3fff35b165f12db7b6950fdb09b2d2290a84b3d` |
| 17 | `lemma` | [condVar_bot'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/declarations/condvar-bot--6d5431305d49af9c315047cc.md) | 151 | `result-track:6d5431305d49af9c315047cca96fdde027bbe9ecf9e07587034782a789db97d0` |
| 18 | `lemma` | [condVar_bot_ae_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/declarations/condvar-bot-ae-eq--a106e7d8371ef007fbb0be74.md) | 155 | `result-track:a106e7d8371ef007fbb0be747f8e0a5b530b8560c7fe806ba746780ddf79d537` |
| 19 | `lemma` | [condVar_bot](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/declarations/condvar-bot--8ecb5865c006046f63d253e1.md) | 162 | `result-track:8ecb5865c006046f63d253e14ad7d6bf3384d657c8f246d9641154a9310a20fe` |
| 20 | `lemma` | [condVar_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/declarations/condvar-smul--9b943ec9a0bb387d460bea48.md) | 166 | `result-track:9b943ec9a0bb387d460bea48e11ebaeaacb23adc9d4563ff46d40cb9af73f452` |
| 21 | `lemma` | [condVar_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/declarations/condvar-neg--79e70390feccd45c0cb8489b.md) | 176 | `result-track:79e70390feccd45c0cb8489b9b79d629b9067a9f1c1bd9678f1f8c571f90fce6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
