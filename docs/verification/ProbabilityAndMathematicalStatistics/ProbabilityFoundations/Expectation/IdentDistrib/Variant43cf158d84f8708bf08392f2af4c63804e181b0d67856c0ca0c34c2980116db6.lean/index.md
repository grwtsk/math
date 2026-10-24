# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.IdentDistrib.Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a5fa8e12c8473a7c4a35bdad80423e933fb810d",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a5fa8e12c8473a7c4a35bdad80423e933fb810d`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Variance` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.UniformIntegrable` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IdentDistrib](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/identdistrib--4f20cd2dd434fafeaf7dc75f.md) | 68 | `declaration-track:4f20cd2dd434fafeaf7dc75fa6744c0b529232d03736a49f4be686dd10b93aee` |
| 2 | `theorem` | [refl](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/refl--4ca89fdd3721e107274c88b0.md) | 82 | `result-track:4ca89fdd3721e107274c88b0d602f613eecd6a30b847650be98cd44135d841d1` |
| 3 | `theorem` | [symm](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/symm--8dd63066a4a0d8f984ec53c5.md) | 88 | `result-track:8dd63066a4a0d8f984ec53c52737c59acdd750ee3aa576418ae132dd25c24914` |
| 4 | `theorem` | [trans](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/trans--7e179ed8794133ce472f4c7a.md) | 94 | `result-track:7e179ed8794133ce472f4c7a0785bbf90bb6c94979bc4f37963650f13d03d140` |
| 5 | `theorem` | [comp_of_aemeasurable](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/comp-of-aemeasurable--d4d1d8de476831a2c2d2e6c8.md) | 101 | `result-track:d4d1d8de476831a2c2d2e6c8413093bba3eac94c2005932ef6dc74eea34ad7ba` |
| 6 | `theorem` | [comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/comp--e6f5839c80f72dfb0c8b6111.md) | 111 | `result-track:e6f5839c80f72dfb0c8b61119ae4f2e86b8aa145adc11f60a29414f68a3c4f35` |
| 7 | `theorem` | [of_ae_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/of-ae-eq--553245308d32592a49de5c20.md) | 116 | `result-track:553245308d32592a49de5c206a158648d9bc6ec2e7ae2bb62bdb0b18f701d574` |
| 8 | `theorem` | [measure_mem_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/measure-mem-eq--a3bb4be1b91ab3cb6936c436.md) | 123 | `result-track:a3bb4be1b91ab3cb6936c436d8e02e0f956074359ddeed7704d3f61d67fd09df` |
| 9 | `theorem` | [ae_snd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/ae-snd--8e82230e2f9484ebfe3e76d6.md) | 132 | `result-track:8e82230e2f9484ebfe3e76d66dac1d6077bb17ec7e24db5916c16fd423dbf771` |
| 10 | `theorem` | [ae_mem_snd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/ae-mem-snd--dde398a0813a9614418fcb31.md) | 139 | `result-track:dde398a0813a9614418fcb31606d7a976300c730dce445345ef14cdff1e260f6` |
| 11 | `theorem` | [aestronglyMeasurable_fst](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/aestronglymeasurable-fst--aa6e84ca6bef9b4f5c32021c.md) | 147 | `result-track:aa6e84ca6bef9b4f5c32021c9b64cbbd071e44716aaa893054baba71a0fe4ad3` |
| 12 | `theorem` | [aestronglyMeasurable_snd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/aestronglymeasurable-snd--1fe6ed671ac937e2e8837d8d.md) | 153 | `result-track:1fe6ed671ac937e2e8837d8dd4badbc3d89df696a509893ed280ccb2081acd7e` |
| 13 | `theorem` | [aestronglyMeasurable_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/aestronglymeasurable-iff--f1d53e5a4ab1c8353a97f61c.md) | 162 | `result-track:f1d53e5a4ab1c8353a97f61cebff29df6d33e67a6a9be2fb02fa5fb4d339e599` |
| 14 | `theorem` | [essSup_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/esssup-eq--273160ae8b17345e4abe140b.md) | 167 | `result-track:273160ae8b17345e4abe140bd6a29c183c3756ce85c481f1189df6ab1d7dcc3b` |
| 15 | `theorem` | [lintegral_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/lintegral-eq--8f9a1a0aa3c4df91bd5f0bb2.md) | 174 | `result-track:8f9a1a0aa3c4df91bd5f0bb2f2efa2f2bf98008cf0d1157a9529a7130c4133d0` |
| 16 | `theorem` | [integral_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/integral-eq--9b9e6e380311b2478e32e7fa.md) | 181 | `result-track:9b9e6e380311b2478e32e7fa91575fec339eae58462bc41d794c0bb660e53fce` |
| 17 | `theorem` | [snorm_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/snorm-eq--75238067fd3f7cf2cf3dcda6.md) | 200 | `result-track:75238067fd3f7cf2cf3dcda64b7697e162d03c7f0d6c5ebfa6c8bea5a62d8ee6` |
| 18 | `theorem` | [memℒp_snd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/mem-p-snd--ca99f926c631b52135e2654b.md) | 215 | `result-track:ca99f926c631b52135e2654bc9af315b7fe067f1807192cc3735ac035d88f860` |
| 19 | `theorem` | [memℒp_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/mem-p-iff--52deb04cf8f3cb32f644d088.md) | 222 | `result-track:52deb04cf8f3cb32f644d088a9abe712928dce20e39743a0f28668d387c6c2c9` |
| 20 | `theorem` | [integrable_snd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/integrable-snd--bfe8c33b39df54c9187d9ff9.md) | 227 | `result-track:bfe8c33b39df54c9187d9ff9f9dc1916cfd19d4e4649e7a2e451adf4972273c6` |
| 21 | `theorem` | [integrable_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/integrable-iff--11ce169fab44da3a986047d7.md) | 233 | `result-track:11ce169fab44da3a986047d738f5fc708c8fd15a927ce1649a8c7e0f0d3e3f74` |
| 22 | `theorem` | [norm](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/norm--5970e291b9439a375c57b943.md) | 238 | `result-track:5970e291b9439a375c57b9439f189b859eff35f7d673ebf01959a263aa6fecee` |
| 23 | `theorem` | [nnnorm](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/nnnorm--76b1451f25de55268877792c.md) | 243 | `result-track:76b1451f25de55268877792ccc2679858577485550308fb4cbce6ce552a6c9ce` |
| 24 | `theorem` | [pow](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/pow--21a4ca5612d71df42806f83c.md) | 248 | `result-track:21a4ca5612d71df42806f83c1d9189d3580d2dfe1821cacea8b7611c9a32cc01` |
| 25 | `theorem` | [sq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/sq--549fb7470d02c9786cb1143c.md) | 253 | `result-track:549fb7470d02c9786cb1143c11b045cc6f1115379a416af954c57ec3cd39d9e0` |
| 26 | `theorem` | [coe_nnreal_ennreal](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/coe-nnreal-ennreal--13c42f29f04d976802276d43.md) | 258 | `result-track:13c42f29f04d976802276d43f47c92e68dfffa9d38f748aee532375eb77f9b56` |
| 27 | `theorem` | [mul_const](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/mul-const--f1ce6c8cb2f3f4562362bb23.md) | 264 | `result-track:f1ce6c8cb2f3f4562362bb23d1dfe128baf93dfb69b1269e228ec3de6dc934eb` |
| 28 | `theorem` | [const_mul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/const-mul--c458e4be4e3187ae1cca53a7.md) | 271 | `result-track:c458e4be4e3187ae1cca53a705f2fd973ac60ca66f7eafcf30aae1e4efc46c07` |
| 29 | `theorem` | [div_const](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/div-const--f93e84f811249bdcbabddb80.md) | 278 | `result-track:f93e84f811249bdcbabddb80f87643d113bb36cf60e891c34f269e3146929208` |
| 30 | `theorem` | [const_div](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/const-div--5a54e9129d014717b6c95715.md) | 285 | `result-track:5a54e9129d014717b6c95715d4f1bbcb4706a1d1d5ff58b084e49c3a8fa71b0f` |
| 31 | `theorem` | [evariance_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/evariance-eq--2c1e07bf1335c044c594e34d.md) | 291 | `result-track:2c1e07bf1335c044c594e34d7bedeb1f94ec8d16aa902e34f6a8930d1b214a99` |
| 32 | `theorem` | [variance_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/variance-eq--ce1840ddb7d761ddb496f8d4.md) | 298 | `result-track:ce1840ddb7d761ddb496f8d42e5f6dac318b85de92462748f6f5496d8f2e5568` |
| 33 | `theorem` | [Memℒp.uniformIntegrable_of_identDistrib_aux](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/mem-p-uniformintegrable-of-identdistrib-aux--d47a69a9411e3aa4422f6e6d.md) | 313 | `result-track:d47a69a9411e3aa4422f6e6d1b96c31bee2c0774ac913bfafa131166a83ff79d` |
| 34 | `theorem` | [Memℒp.uniformIntegrable_of_identDistrib](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant43cf158d84f8708bf08392f2af4c63804e181b0d67856c0ca0c34c2980116db6.lean/declarations/mem-p-uniformintegrable-of-identdistrib--3076548e24e9074fd1d9bcdf.md) | 335 | `result-track:3076548e24e9074fd1d9bcdfc185b646b5c4e652cb91a2ca82c1097cc292c67c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
