# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.IdentDistrib.Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cd721aa61e665afcc56da55b1d2206e02830f80",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cd721aa61e665afcc56da55b1d2206e02830f80`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Moments.Variance` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.UniformIntegrable` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IdentDistrib](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/identdistrib--9d7f8cd55744e9abb96e7035.md) | 66 | `declaration-track:9d7f8cd55744e9abb96e7035c27a244f88dca60ee6508bfd2ccf6a6aae142b40` |
| 2 | `theorem` | [refl](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/refl--b019e735741a08a8ae503d48.md) | 79 | `result-track:b019e735741a08a8ae503d48e70ed44351942f46ae3efd60665bb145f147feec` |
| 3 | `theorem` | [symm](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/symm--2871c85e1833e35b6fd69a53.md) | 84 | `result-track:2871c85e1833e35b6fd69a53ce4442d79d700d0c7c2335cd1b7cef145bcb11c6` |
| 4 | `theorem` | [trans](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/trans--9a1121efe9d7e050b16ea8b8.md) | 89 | `result-track:9a1121efe9d7e050b16ea8b817cbb30466348391ba6580446c40ba8e2519a7d2` |
| 5 | `theorem` | [comp_of_aemeasurable](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/comp-of-aemeasurable--6ec96e8e836f095a3ccd51d3.md) | 95 | `result-track:6ec96e8e836f095a3ccd51d36158138f32f61d6754a7146ab110d49b9b41122c` |
| 6 | `theorem` | [comp](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/comp--44c49596a7e4a5168c32386c.md) | 104 | `result-track:44c49596a7e4a5168c32386c4eaf501c72154a00db42852dd7e86aa0d5dce3a9` |
| 7 | `theorem` | [of_ae_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/of-ae-eq--e1e17b747a0981b159d45ca8.md) | 108 | `result-track:e1e17b747a0981b159d45ca872622b3dc6a62696c2bf53167e73a41755ec5f02` |
| 8 | `lemma` | [_root_.MeasureTheory.AEMeasurable.identDistrib_mk](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/root-measuretheory-aemeasurable-identdistrib-mk--661a035b254ec629770a6425.md) | 114 | `result-track:661a035b254ec629770a64252edec8b13be665f037d407b9fa9fa68e43bb3e16` |
| 9 | `lemma` | [_root_.MeasureTheory.AEStronglyMeasurable.identDistrib_mk](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/root-measuretheory-aestronglymeasurable-identdistrib-mk--51611b9a0dfcd005d526c365.md) | 118 | `result-track:51611b9a0dfcd005d526c36510ebabb7d981df082efbc0ef9c1eab03475b2177` |
| 10 | `theorem` | [measure_mem_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/measure-mem-eq--8602d5da981525d6da64bccc.md) | 123 | `result-track:8602d5da981525d6da64bccc7002783e7dfb8f459d92151919200fd4dff651a5` |
| 11 | `theorem` | [ae_snd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/ae-snd--8ad3e2343caf3e3ec9cc90d9.md) | 130 | `result-track:8ad3e2343caf3e3ec9cc90d90e698235a50290fbf0b737164df72e38b2bd369f` |
| 12 | `theorem` | [ae_mem_snd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/ae-mem-snd--893646435f6d8e6de8809957.md) | 136 | `result-track:893646435f6d8e6de88099571b33d31ae957048210a494e7d4b4832415824fa4` |
| 13 | `theorem` | [aestronglyMeasurable_fst](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/aestronglymeasurable-fst--a54d217e555d8fca4bc274c2.md) | 143 | `result-track:a54d217e555d8fca4bc274c21c8e13e9f0a02ea82462958d540b4b2b12e1e913` |
| 14 | `theorem` | [aestronglyMeasurable_snd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/aestronglymeasurable-snd--d74728c713e2f8686c62dd45.md) | 149 | `result-track:d74728c713e2f8686c62dd4550cce6f12305b9f0387332a6edf83d16c6e68c14` |
| 15 | `theorem` | [aestronglyMeasurable_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/aestronglymeasurable-iff--8f45ca4f611b264bfc6138c8.md) | 157 | `result-track:8f45ca4f611b264bfc6138c895ff7136a0976b1f7802f56e1af5c13b57d8bb55` |
| 16 | `theorem` | [essSup_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/esssup-eq--3f675dcd7239cfa1c09fec6e.md) | 161 | `result-track:3f675dcd7239cfa1c09fec6e8f5d832860742d69b583a8bf4ac561ec5a20efac` |
| 17 | `theorem` | [lintegral_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/lintegral-eq--a9a78b1aa659e226c0b792fc.md) | 167 | `result-track:a9a78b1aa659e226c0b792fcf818e86978ba7ad96f843da1d145aa3a1cd552f3` |
| 18 | `theorem` | [integral_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/integral-eq--5247bf9262f2d3b98550cbf2.md) | 173 | `result-track:5247bf9262f2d3b98550cbf2f0f457ff2a7373269a140c5bf2a3ca6ea8b54f4d` |
| 19 | `theorem` | [eLpNorm_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/elpnorm-eq--1fb31c4b1d4e195d08006ba0.md) | 191 | `result-track:1fb31c4b1d4e195d08006ba0ff8029bd37f8fded1c03656336735c527e17c4c2` |
| 20 | `theorem` | [memLp_snd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/memlp-snd--5623710bbc8e4195eb591cff.md) | 206 | `result-track:5623710bbc8e4195eb591cff01b6cabf56a46578e63a9240114e091d6ef8d051` |
| 21 | `theorem` | [memLp_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/memlp-iff--a2e38c08de6481495ad66687.md) | 215 | `result-track:a2e38c08de6481495ad6668729f2f6be273cf3730796704f9f7b41c0ccc1466b` |
| 22 | `theorem` | [integrable_snd](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/integrable-snd--4ec083dd214bc3e0f071fcc6.md) | 222 | `result-track:4ec083dd214bc3e0f071fcc64a71694d07d4818d4328b74e5a65af2460e0646f` |
| 23 | `theorem` | [integrable_iff](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/integrable-iff--50f9ef79149ad0b1d87d5e4b.md) | 227 | `result-track:50f9ef79149ad0b1d87d5e4b5d38f580727557563f07d14d6b1cbc4ffda59f22` |
| 24 | `theorem` | [norm](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/norm--4f84030be5a691d429fe83fc.md) | 231 | `result-track:4f84030be5a691d429fe83fc315994861a7da1e98574cfe0fc3d06bf930772a0` |
| 25 | `theorem` | [nnnorm](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/nnnorm--c1f7de9e6ddc79d68eb1dba2.md) | 235 | `result-track:c1f7de9e6ddc79d68eb1dba2882e0589314d611f122e143be13c9ea2721ec0a4` |
| 26 | `theorem` | [pow](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/pow--6c907122dbafb7febe525ece.md) | 240 | `result-track:6c907122dbafb7febe525ecee9d8819705dca2687c906eeb0af054749b7dc029` |
| 27 | `theorem` | [sq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/sq--1e66c47a87af1d0905586832.md) | 244 | `result-track:1e66c47a87af1d090558683213d0d016d401d5a68bfed22af631ed2efdc17db6` |
| 28 | `theorem` | [coe_nnreal_ennreal](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/coe-nnreal-ennreal--99213ed4e3b557de85e05dcf.md) | 248 | `result-track:99213ed4e3b557de85e05dcfc418f046a37df1c4457a5e75450550108198ddad` |
| 29 | `theorem` | [mul_const](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/mul-const--c51fd1af8db10c7c10a9075c.md) | 253 | `result-track:c51fd1af8db10c7c10a9075c63a3e90cfd2641dd5e2e2744649d99a03e7f15cd` |
| 30 | `theorem` | [const_mul](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/const-mul--9ffffcc42fa1fc067acfd583.md) | 258 | `result-track:9ffffcc42fa1fc067acfd583c07320b268044c8333c12a8b78c31c11f1f8924c` |
| 31 | `theorem` | [div_const](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/div-const--19d446f0c439775ab3667406.md) | 263 | `result-track:19d446f0c439775ab366740628179465b9d44ab7b927376aa8e2ac776f5ac26f` |
| 32 | `theorem` | [const_div](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/const-div--e52ed155407335f3b65842e6.md) | 268 | `result-track:e52ed155407335f3b65842e6314677594937855f37857df340a3bcc63a15d585` |
| 33 | `lemma` | [inv](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/inv--4414f5007acc792b8b19c92e.md) | 273 | `result-track:4414f5007acc792b8b19c92e78323f7045fc33f510102274e0f588c0fb4ab726` |
| 34 | `theorem` | [evariance_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/evariance-eq--401e35609533ef0160480464.md) | 276 | `result-track:401e35609533ef0160480464d2ac08b554fe8b385a52317f493b86639982a284` |
| 35 | `theorem` | [variance_eq](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/variance-eq--13a602b0c1185c8e488b7113.md) | 282 | `result-track:13a602b0c1185c8e488b711300936054020ada3aa1321a460f0466e795647d62` |
| 36 | `theorem` | [MemLp.uniformIntegrable_of_identDistrib_aux](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/memlp-uniformintegrable-of-identdistrib-aux--1552092db45fed8e7aa83981.md) | 296 | `result-track:1552092db45fed8e7aa8398115470f46123bbe9311ba9529a8f351de08168541` |
| 37 | `theorem` | [MemLp.uniformIntegrable_of_identDistrib](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/memlp-uniformintegrable-of-identdistrib--3b7abef4d759f3e51d22aca3.md) | 324 | `result-track:3b7abef4d759f3e51d22aca3ac1af5f74894dabeb9a710dcee90ce1d6b6e4b0b` |
| 38 | `lemma` | [indepFun_of_identDistrib_pair](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variant24b1d81bd525ab37c8c62037f30edfcf609e934b6af2094203df476d9be85dda.lean/declarations/indepfun-of-identdistrib-pair--517160c8477859434317943f.md) | 345 | `result-track:517160c8477859434317943f16029b0cc85f7c26ec3e27464b5e9d31632d9f40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
