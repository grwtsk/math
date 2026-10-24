# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Add.Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f18ac4783b5cf99f9a35574f96da48666fda7997",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f18ac4783b5cf99f9a35574f96da48666fda7997`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_iSup](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-isup--c215dbb15287800942f354e7.md) | 30 | `result-track:c215dbb15287800942f354e7b927d0f2513ae2c9a81c96040c61c2f9ff75e535` |
| 2 | `theorem` | [lintegral_iSup'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-isup--ae6b041b9dc1c763046bed51.md) | 92 | `result-track:ae6b041b9dc1c763046bed514b942a947be8a3985abf66f3df4c0f3076ddd2ca` |
| 3 | `theorem` | [lintegral_tendsto_of_tendsto_of_monotone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-tendsto-of-tendsto-of-monotone--661c70b840f03f0c668bdbe1.md) | 109 | `result-track:661c70b840f03f0c668bdbe1b0c94aef8d6ddd63f4c3425f507b0f78e60ea428` |
| 4 | `theorem` | [lintegral_iSup_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-isup-ae--7d385bcd7b56a11c0b0356be.md) | 124 | `result-track:7d385bcd7b56a11c0b0356be7654a03f0a9c26810eea7ee2945b4113acc39ef8` |
| 5 | `theorem` | [lintegral_iSup_directed_of_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-isup-directed-of-measurable--441b78108e53922d43bb83e4.md) | 148 | `result-track:441b78108e53922d43bb83e4a0a1e3a715a02385358575b8c7f206d23523c7b1` |
| 6 | `theorem` | [lintegral_iSup_directed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-isup-directed--3363c19b972ef9b1b012ece1.md) | 170 | `result-track:3363c19b972ef9b1b012ece1f3865d0aca8fe122a66eca8e4cd3fcf79eef296b` |
| 7 | `theorem` | [lintegral_liminf_le'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-liminf-le--479ddc59b1e3692034cf9dae.md) | 198 | `result-track:479ddc59b1e3692034cf9daedc4ac99e447a94ecee163b06300a99d78fc3f4ca` |
| 8 | `theorem` | [lintegral_liminf_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-liminf-le--58c1ce95482712953fe70bf4.md) | 210 | `result-track:58c1ce95482712953fe70bf477a23c78cfaf8df39bf6b078542008b927dd9144` |
| 9 | `theorem` | [lintegral_eq_iSup_eapprox_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-eq-isup-eapprox-lintegral--dcc23b2ee4ff2fa228d42e6b.md) | 218 | `result-track:dcc23b2ee4ff2fa228d42e6bb7f77165bbae7293ead3970a629e30296b9183c6` |
| 10 | `lemma` | [lintegral_eapprox_le_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-eapprox-le-lintegral--d5f27397cf804db62c018916.md) | 231 | `result-track:d5f27397cf804db62c01891604a221f3c4a820e8047b4b60425877909b1a8b8c` |
| 11 | `lemma` | [measure_support_eapprox_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/measure-support-eapprox-lt-top--08407299dd7ea50cd36ff586.md) | 236 | `result-track:08407299dd7ea50cd36ff5862c3124e281de9d62c01f3eb37ff9d3d5c4de0908` |
| 12 | `theorem` | [le_lintegral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/le-lintegral-add--a136bbe1ec637e0046bb437c.md) | 244 | `result-track:a136bbe1ec637e0046bb437cc9ae16f7d1468492ed9791280cd67aee7b98fb72` |
| 13 | `theorem` | [lintegral_add_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-add-aux--0ea1551040f2cd67a89fa019.md) | 252 | `result-track:0ea1551040f2cd67a89fa019befd271f6cf94928c6fcf3c8f28f8694f725db06` |
| 14 | `theorem` | [lintegral_add_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-add-left--3e6301c1e1cff3eccf1d8be5.md) | 287 | `result-track:3e6301c1e1cff3eccf1d8be501bb2f0df5213213230d93300476d24f145c3f02` |
| 15 | `theorem` | [lintegral_add_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-add-left--8513a4cad21353c8f132f0c0.md) | 298 | `result-track:8513a4cad21353c8f132f0c0cee2e7cb51fa724fa8792012d6fdf598ed928235` |
| 16 | `theorem` | [lintegral_add_right'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-add-right--720b9c6ea033165a90724099.md) | 303 | `result-track:720b9c6ea033165a90724099b2e85dc69cbec00475370cab1f7927f29ebb3b47` |
| 17 | `theorem` | [lintegral_add_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-add-right--f58fcbd2f07ec3f89afdaef1.md) | 311 | `result-track:f58fcbd2f07ec3f89afdaef10c48ff089925e265fbbaebf415c8c0328246cfbc` |
| 18 | `theorem` | [lintegral_finset_sum'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-finset-sum--7328505ffc5871bca0d8cdad.md) | 315 | `result-track:7328505ffc5871bca0d8cdad515df66e96eb1f28c6f3fbc88e7f0b53266166e4` |
| 19 | `theorem` | [lintegral_finset_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-finset-sum--3eb27c3d6f5697f27b3879f0.md) | 326 | `result-track:3eb27c3d6f5697f27b3879f0300f68383df28fa0baa9684737eeaaf55b6c4fb6` |
| 20 | `theorem` | [lintegral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-tsum--b13464a63a8bae6e4dd8cd02.md) | 330 | `result-track:b13464a63a8bae6e4dd8cd02e101cd01d71a0e62135748cabde4e49edb85c658` |
| 21 | `theorem` | [lintegral_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-const-mul--4aa4cbbdd8e641c162329d57.md) | 349 | `result-track:4aa4cbbdd8e641c162329d57050a88ee9fe1a1c79c8d877cb7e35022b84bb311` |
| 22 | `theorem` | [lintegral_const_mul''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-const-mul--9e39e5661b3807a863a075e1.md) | 368 | `result-track:9e39e5661b3807a863a075e1933720a37a521583ee22fed7dd20de10756a5dfc` |
| 23 | `theorem` | [lintegral_const_mul_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-const-mul-le--fa7a450a2d7fac6fa183d900.md) | 375 | `result-track:fa7a450a2d7fac6fa183d9003d8812d3243f254faecc4ee44fb22db0fbe2268f` |
| 24 | `theorem` | [lintegral_const_mul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-const-mul--91b61376fbc78ab901b08ede.md) | 385 | `result-track:91b61376fbc78ab901b08ede0c6da050f5cfea4b5077f0b4db69b6454924c6f8` |
| 25 | `theorem` | [lintegral_mul_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-mul-const--64d9b452fe1a4736caf72c53.md) | 399 | `result-track:64d9b452fe1a4736caf72c53163d9d05d911479f5163df6766163051ddb753ef` |
| 26 | `theorem` | [lintegral_mul_const''](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-mul-const--f242b3076a3780db2b8f7461.md) | 402 | `result-track:f242b3076a3780db2b8f7461df382ec95676024464bec9d2d0bd9ad5a6070b75` |
| 27 | `theorem` | [lintegral_mul_const_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-mul-const-le--760a67e4df1926b096836791.md) | 405 | `result-track:760a67e4df1926b096836791e5766547cbee8b56f446731790ef5dedb4ca1096` |
| 28 | `theorem` | [lintegral_mul_const'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-mul-const--4ff408a17919942054cafebb.md) | 409 | `result-track:4ff408a17919942054cafebb806b17015e6a19383ec1c618eb8b0b54fd606b7e` |
| 29 | `theorem` | [lintegral_lintegral_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-lintegral-mul--50c062f43676517cd6c77ee4.md) | 414 | `result-track:50c062f43676517cd6c77ee4983837a795253f9977702f59424bb29909068d66` |
| 30 | `theorem` | [lintegral_trim](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-trim--21210f359c543751bfdbc3dc.md) | 425 | `result-track:21210f359c543751bfdbc3dceaf433b937a022808becdaeb247cb180aa54cc1b` |
| 31 | `theorem` | [lintegral_trim_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Add/Variante111fcbe7c90e127fff0d16c10d6a4f522b393cc7f0637521f41dca3f4e56da0.lean/declarations/lintegral-trim-ae--d9eda890319ea33297d986bf.md) | 444 | `result-track:d9eda890319ea33297d986bfc30ceb8ab1f7df768b4de858a4fc1295f95d70b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
