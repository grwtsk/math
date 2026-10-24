# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Exponential.Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d99ba4b039de8cfef368a38d101ad19209a58ae0",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d99ba4b039de8cfef368a38d101ad19209a58ae0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Exponential` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.CauSeqFilter` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictFDerivAt_exp_zero_of_radius_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasstrictfderivat-exp-zero-of-radius-pos--f2d45d095371bbe465deed10.md) | 67 | `result-track:f2d45d095371bbe465deed10f9ac5d3fc8212515947400754b7153f53d87b2a9` |
| 2 | `theorem` | [hasFDerivAt_exp_zero_of_radius_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasfderivat-exp-zero-of-radius-pos--a069f3d808881ab683b68c27.md) | 77 | `result-track:a069f3d808881ab683b68c273aa91820e72b55f7632dd9430945924b1429d793` |
| 3 | `theorem` | [hasFDerivAt_exp_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasfderivat-exp-of-mem-ball--49af3294359e7339119555a1.md) | 92 | `result-track:49af3294359e7339119555a1e55d5a56caba73e8d8baa1ffd78876a7fc567573` |
| 4 | `theorem` | [hasStrictFDerivAt_exp_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasstrictfderivat-exp-of-mem-ball--c6a37bb3c93d8e40d5639be0.md) | 113 | `result-track:c6a37bb3c93d8e40d5639be0d69643d73cc47a23e1636ca4714e7a79a2ee175b` |
| 5 | `theorem` | [hasStrictDerivAt_exp_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasstrictderivat-exp-of-mem-ball--7031484fe81927d209e2093b.md) | 128 | `result-track:7031484fe81927d209e2093b99bbe3d595fea0ce6a90d80849db22a01f172472` |
| 6 | `theorem` | [hasDerivAt_exp_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasderivat-exp-of-mem-ball--1acecff1d3f524d4ae8d315d.md) | 135 | `result-track:1acecff1d3f524d4ae8d315dc7ae77f89abb7c486914061e9d67b1448aa81d63` |
| 7 | `theorem` | [hasStrictDerivAt_exp_zero_of_radius_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasstrictderivat-exp-zero-of-radius-pos--293e3bff3ed0f0e63dbaaf48.md) | 142 | `result-track:293e3bff3ed0f0e63dbaaf48e11f11f2cdb74b7fa78d36270dd3079763e11b02` |
| 8 | `theorem` | [hasDerivAt_exp_zero_of_radius_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasderivat-exp-zero-of-radius-pos--880b19bbb8190fddcf348e0b.md) | 149 | `result-track:880b19bbb8190fddcf348e0bf522372c78c726839a5b4db76e0fc0d11e9a967c` |
| 9 | `theorem` | [hasStrictFDerivAt_exp_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasstrictfderivat-exp-zero--65d1ecb6d9201237946ca9bf.md) | 162 | `result-track:65d1ecb6d9201237946ca9bf090ced77c1cd3daecbb07309a5b5a4ba80f9bc67` |
| 10 | `theorem` | [hasFDerivAt_exp_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasfderivat-exp-zero--1a89493d1fb76393e3cd0e1d.md) | 168 | `result-track:1a89493d1fb76393e3cd0e1dc1d2c4f61117b61e5c75d81a496ce10fa7603e32` |
| 11 | `theorem` | [hasStrictFDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasstrictfderivat-exp--be91bdd48615d58bdd694346.md) | 180 | `result-track:be91bdd48615d58bdd6943464a4cfaa185c4d12fe1a2fac23fa28195e4f37ac8` |
| 12 | `theorem` | [hasFDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasfderivat-exp--d5bb9790eb534912efd57e18.md) | 186 | `result-track:d5bb9790eb534912efd57e1870f05a3d483fc5595cb92bdd5f03a0844ff9ceaf` |
| 13 | `theorem` | [hasStrictDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasstrictderivat-exp--b79bd2cc5d3755d355396615.md) | 198 | `result-track:b79bd2cc5d3755d355396615d76aa330a22256e82cce1fb01327af9de8715daf` |
| 14 | `theorem` | [hasDerivAt_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasderivat-exp--3541d6aef09d32fe77d01862.md) | 203 | `result-track:3541d6aef09d32fe77d018622d610e19cbd63bdf0d47732213e417f24cb74937` |
| 15 | `theorem` | [hasStrictDerivAt_exp_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasstrictderivat-exp-zero--3573c558f17fc7b90f4a55cc.md) | 208 | `result-track:3573c558f17fc7b90f4a55cc14cdaa2a31f8a8841161b265931b5e4ed5b0ffdd` |
| 16 | `theorem` | [hasDerivAt_exp_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasderivat-exp-zero--9469e7a4506a8c2c23518b34.md) | 213 | `result-track:9469e7a4506a8c2c23518b3404f9362d675f6adc3a27e274a710870044fd1438` |
| 17 | `theorem` | [Complex.exp_eq_exp_ℂ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/complex-exp-eq-exp--016ec5ccf63b95f2f2456909.md) | 219 | `result-track:016ec5ccf63b95f2f2456909ee6c7e65a57ac31b4f0ae7f0bcda40e220e7e9b6` |
| 18 | `theorem` | [Real.exp_eq_exp_ℝ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/real-exp-eq-exp--bd9b4d67714c57098432f298.md) | 226 | `result-track:bd9b4d67714c57098432f298190c10138444d79a515395fe9b2fac720799e4c7` |
| 19 | `theorem` | [hasFDerivAt_exp_smul_const_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasfderivat-exp-smul-const-of-mem-ball--1af86c06de431e7197e8e84b.md) | 274 | `result-track:1af86c06de431e7197e8e84bc4b030ebae788ac54267ebd5b41a2e01616c8852` |
| 20 | `theorem` | [hasFDerivAt_exp_smul_const_of_mem_ball'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasfderivat-exp-smul-const-of-mem-ball--fb7f873a3d7ad04b9f4c355f.md) | 305 | `result-track:fb7f873a3d7ad04b9f4c355f8abebd53f50d2eb5d9d8ddb37ac9120600a4943d` |
| 21 | `theorem` | [hasStrictFDerivAt_exp_smul_const_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasstrictfderivat-exp-smul-const-of-mem-ball--5ebd4878cf20137ff2b73072.md) | 315 | `result-track:5ebd4878cf20137ff2b73072759642a3a243181893dbf089c87010f432dd650c` |
| 22 | `theorem` | [hasStrictFDerivAt_exp_smul_const_of_mem_ball'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasstrictfderivat-exp-smul-const-of-mem-ball--55f5a38e22546bfecd695c8b.md) | 327 | `result-track:55f5a38e22546bfecd695c8b8fb1ca6590d68614ee5322e8de2070ad983c19a2` |
| 23 | `theorem` | [hasStrictDerivAt_exp_smul_const_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasstrictderivat-exp-smul-const-of-mem-ball--1ed8f9b324fe0f825da6d778.md) | 340 | `result-track:1ed8f9b324fe0f825da6d778ade4f6929ee9856c726172d2875d3ba7bfacf3ff` |
| 24 | `theorem` | [hasStrictDerivAt_exp_smul_const_of_mem_ball'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasstrictderivat-exp-smul-const-of-mem-ball--292113c2870415c1ee26154e.md) | 346 | `result-track:292113c2870415c1ee26154e5671966ae2d47423b6413367be543168c1e73bb7` |
| 25 | `theorem` | [hasDerivAt_exp_smul_const_of_mem_ball](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasderivat-exp-smul-const-of-mem-ball--e338398c213ffa0e6bee1234.md) | 352 | `result-track:e338398c213ffa0e6bee1234c6d499467a3993745c509f8926241ec069014548` |
| 26 | `theorem` | [hasDerivAt_exp_smul_const_of_mem_ball'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasderivat-exp-smul-const-of-mem-ball--b0cab118684bb01ea7f42eac.md) | 358 | `result-track:b0cab118684bb01ea7f42eacefcf88641dd44b972b7a8250f08049b89a8c1a1f` |
| 27 | `theorem` | [hasFDerivAt_exp_smul_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasfderivat-exp-smul-const--fc68e09b910edeb3b368fc61.md) | 378 | `result-track:fc68e09b910edeb3b368fc610d002dd0588ecf9f20369702c34372bce2191de9` |
| 28 | `theorem` | [hasFDerivAt_exp_smul_const'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasfderivat-exp-smul-const--af2817ead60e37c74d95346d.md) | 384 | `result-track:af2817ead60e37c74d95346d9748c469e697a1d47f69f639594d052ac3b8992f` |
| 29 | `theorem` | [hasStrictFDerivAt_exp_smul_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasstrictfderivat-exp-smul-const--9cb1e21f33d3f3307cef45b9.md) | 391 | `result-track:9cb1e21f33d3f3307cef45b95cdb36d4abc56cdc612f94eef86aa565ad4e8268` |
| 30 | `theorem` | [hasStrictFDerivAt_exp_smul_const'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasstrictfderivat-exp-smul-const--a468d7034f75dfa2609d4b6d.md) | 398 | `result-track:a468d7034f75dfa2609d4b6d8a1f3de3ed520a40e809196ec7b39fffd8afa3c9` |
| 31 | `theorem` | [hasStrictDerivAt_exp_smul_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasstrictderivat-exp-smul-const--c87738952df0fb16b84c02b5.md) | 407 | `result-track:c87738952df0fb16b84c02b5412b3c0115316982c1891d8aa4f8c5c59ebdc021` |
| 32 | `theorem` | [hasStrictDerivAt_exp_smul_const'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasstrictderivat-exp-smul-const--82b80d9fc32ff01ced3a3c47.md) | 413 | `result-track:82b80d9fc32ff01ced3a3c474bd2c06f9ced35cb2f8608b09e229f536d4a6723` |
| 33 | `theorem` | [hasDerivAt_exp_smul_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasderivat-exp-smul-const--1352cc9e4f49eb167583f01a.md) | 419 | `result-track:1352cc9e4f49eb167583f01ad28603b272692710d007af587235143a05f3ab70` |
| 34 | `theorem` | [hasDerivAt_exp_smul_const'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantedc4e6a31d506ecffa6b7b980daac482622c408bf8ae5307b786bc8de714ad9a.lean/declarations/hasderivat-exp-smul-const--40df249249353a3ecd8f4f11.md) | 424 | `result-track:40df249249353a3ecd8f4f1179a99825376bde58adcaac23468c1e09dc2cced3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
